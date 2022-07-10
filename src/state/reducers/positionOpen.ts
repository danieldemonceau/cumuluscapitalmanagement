const positionOpen = (state: any, action: any) => {
  switch (action) {
    case "loadOpenPosition":
      return action.payload;
    default:
      return action.payload;
  }
};

export default positionOpen;
