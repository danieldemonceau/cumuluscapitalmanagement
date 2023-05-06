#!/usr/bin/env python
# -*- coding: utf-8 -*-


import os
import psycopg2
from dotenv import load_dotenv
import re

load_dotenv()

db_host = os.getenv("DB_HOSTNAME")
db_port = os.getenv("DB_PORT")
db_name = os.getenv("DB_NAME")
db_username = os.getenv("DB_USERNAME")
db_password = os.getenv("DB_PASSWORD")


def main(folder):
    with psycopg2.connect(
        f"host={db_host} port={db_port} dbname={db_name} user={db_username} password={db_password}"
    ) as conn:
        with conn.cursor() as cur:
            for sql_file in sorted(os.listdir(folder)):
                if (
                    os.path.isfile(os.path.join(folder, sql_file))
                    and re.match(r"^[0-9]{2}", sql_file)
                    and sql_file.endswith("sql")
                ):
                    print(sql_file)
                    cur.execute(open(os.path.join(folder, sql_file), "r").read())
            conn.commit()
    return 0


if __name__ == "__main__":
    print("Scripts - Create Sequence")
    folder = "../setup/create_sequence"
    main(folder)
    print("Scripts - Create Tables")
    folder = "../setup/create_tables"
    main(folder)
    print("Scripts - Create Views")
    folder = "../setup/create_views"
    main(folder)
    print("Scripts - Create Materialized Views")
    folder = "../setup/create_materialized_views"
    main(folder)
    print("Scripts - Create Functions")
    folder = "../functions"
    main(folder)
    print("Scripts - Create Triggers")
    folder = "../triggers"
    main(folder)
    print("Scripts - Create Inserts")
    folder = "../inserts"
    main(folder)
