import moment from "moment-timezone";

const formatDate = (inputDate: Date) => {
  const clientTimeZoneId = moment.tz.guess();

  const inputTimeZoneId = moment(inputDate).tz() ?? "Australia/Melbourne";

  const formattedDate = moment(inputDate)
    .tz(inputTimeZoneId)
    .tz(clientTimeZoneId)
    .format("YYYY-MM-DD");

  return formattedDate;
};

export default formatDate;
