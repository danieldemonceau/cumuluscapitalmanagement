import http.client
import json
import psycopg
import requests
from datetime import datetime, timezone
import time
import os
from dotenv import load_dotenv
import sys
import time


def quote_refresh(source_name):
    # Get configs
    load_dotenv()
    db_hostname = os.getenv("DB_HOSTNAME")
    db_port = os.getenv("DB_PORT")
    db_name = os.getenv("DB_NAME")
    db_username = os.getenv("DB_USERNAME")
    db_password = os.getenv("DB_PASSWORD")
    av_apikey = os.getenv("AV_APIKEY")

    # Notes: AV VS TD
    # # Daily is 5 days VS 6
    # # No need to select outputsize
    # # More suited intraday

    # This is because of the limitation of 5 requests / minute, thus 12 seconds wait between API Calls
    time_sleep = 6

    conn = psycopg.connect(
        f"host='{db_hostname}' port='{db_port}' dbname='{db_name}' user='{db_username}' password='{db_password}'"
    )

    # Open a cursor to perform database operations
    cur = conn.cursor()

    query = f"""
        SELECT json_agg(s)
        FROM (
            SELECT po."asset" name
            FROM position_open po
        ) s;
    """
    cur.execute(query)
    securitiesJSON = cur.fetchall()
    conn.commit()

    for security in securitiesJSON[0][0]:
        security_name = security["name"]
        security_outputsize = "full"
        url = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol={}&outputsize={}&apikey={}".format(
            security_name, security_outputsize, av_apikey
        )
        print(url)
        security_time_interval_label = "Daily"
        while True:
            try:
                response = requests.get(url)
                quotes = response.json()
                if quotes["Meta Data"]:
                    break
            except:
                print("--- Failed to decode JSON")
                # print("--- This is the returned result")
                # print(response)
                print("--- Trying again")
                time.sleep(5)
                continue
        quotes_list = quotes[f"Time Series ({security_time_interval_label})"]
        quotes_list_items = quotes_list.items()
        time_interval = "1day"
        # Get the before last quote for this time_interval
        # Anything prior is already in the database
        query = f"""
            SELECT s.id "security_id", ti.id "time_interval_id", q.timestamp "timestamp"
            FROM quote q
            JOIN security s ON s.id = q.security_id
            JOIN security_type st ON st.id = s.security_type_id
            JOIN time_interval ti ON ti.id = q.time_interval_id
            JOIN source so ON so.id = q.source_id
            WHERE s.name = '{security_name}'
            AND ti.name = '{time_interval}'
            AND so.name = '{source_name}'
            AND st.name = 'Stock'
            ORDER BY q.timestamp DESC
            LIMIT 1
            OFFSET 1
        """
        # print(query)
        cur.execute(query)
        quotes_last_datetime = cur.fetchall()
        conn.commit()
        quote_datetime_format = "%Y-%m-%d %H:%M:%S"
        quote_datetime_format_day = "%Y-%m-%d"
        quote_datetime_utc_format = "%Y-%m-%d %H:%M:%S%z"
        if len(quotes_last_datetime) > 0:
            quotes_last_datetime = quotes_last_datetime[0][2]
        else:
            quotes_last_datetime = datetime.strptime(
                "1900-01-01", quote_datetime_format_day
            )
            quotes_last_datetime = quotes_last_datetime.replace(tzinfo=timezone.utc)
        for key, value in quotes_list_items:
            quote_datetime = key
            quote = value
            try:
                quote_date_time_datetime = datetime.strptime(
                    quote_datetime, quote_datetime_format
                )
            except ValueError:
                quote_date_time_datetime = datetime.strptime(
                    quote_datetime, quote_datetime_format_day
                )
            quote_date_time_datetime_utc = quote_date_time_datetime.replace(
                tzinfo=timezone.utc
            )
            if quotes_last_datetime > quote_date_time_datetime_utc:
                continue
            quote_datetime_utc = quote_date_time_datetime_utc.strftime(
                quote_datetime_utc_format
            )
            quote_query_insert = f"""
                INSERT INTO quote (security_id, time_interval_id, timestamp, open, high, low, close, source_id, volume)
                SELECT s.id "security_id", ti.id "time_interval_id", '{quote_datetime_utc}' "timestamp", {quote['1. open']} "open", {quote['2. high']} "high", {quote['3. low']} "low", {quote['4. close']} "close", so.id "source_id", {quote['5. volume']} "volume"
                FROM security s
                JOIN security_type st ON st.id = s.security_type_id
                , time_interval ti
                , source so
                WHERE s.name = '{security_name}'
                AND ti.name = '{time_interval}'
                AND so.name = '{source_name}'
                AND st.name = 'Stock'
                AND NOT EXISTS (
                    SELECT q.id
                    FROM quote q
                    WHERE 1 = 1
                    AND (q.security_id = s.id)
                    AND (q.time_interval_id = ti.id)
                    AND (q.timestamp = '{quote_datetime_utc}')
                    AND (q.source_id = so.id)
                    AND (q.close = {quote['4. close']}::MONEY)
                )
            """
            # print(quote_query_insert)
            cur.execute(quote_query_insert)
        conn.commit()
        time.sleep(time_sleep)

    conn.commit()
    cur.close()
    conn.close()


if __name__ == "__main__":
    time_start = time.time()
    print(
        "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
    )
    print(" - - - FUNCTION START - - - ")
    print(" - - - REFRESH QUOTES - - - ")
    print(
        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    )

    source_name = "alphavantage"
    quote_refresh(source_name)
    time_end = time.time()
    print(
        "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
    )
    print(f" - - - Duration: {time_end - time_start} - - - ")
    print(" - - - FUNCTION FINISHED - - - ")
    print(" - - - REFRESH QUOTES - - - ")
    print(
        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    )
