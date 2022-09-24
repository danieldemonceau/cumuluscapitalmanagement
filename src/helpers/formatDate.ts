const formatDate = (date: string) => {
  // const [dateStr] = new Date(date).toISOString().split("T");
  const [dateStr] = date.split("T");
  return dateStr;
};

export default formatDate;
