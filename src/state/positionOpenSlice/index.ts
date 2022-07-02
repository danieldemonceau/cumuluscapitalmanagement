import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from "@reduxjs/toolkit";
import type { RootState } from "../store";
import { Position } from "../../../types/Position.type";

// Define the initial state using that type
const initialState: Position[] = [
  {
    id: NaN,
    type: "",
    asset: "",
    openTimestamp: "",
    averagePriceOpened: NaN,
    priceCurrent: NaN,
    plPercent: NaN,
    strategyName: "",
  },
];

export const positionOpenSlice = createSlice({
  name: "positionOpen",
  // `createSlice` will infer the state type from the `initialState` argument
  initialState,
  reducers: {
    loadPositionOpens: (state, action: PayloadAction<Position[]>) => {
      return action.payload;
    },
  },
});

export const { loadPositionOpens } = positionOpenSlice.actions;

export const selectPositionOpen = (state: RootState) => state.positionOpen;

export default positionOpenSlice.reducer;
