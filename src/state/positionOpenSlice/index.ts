import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from "@reduxjs/toolkit";
import type { RootState } from "../store";
import { PositionOpen } from "../../types/Position.type";

// Define the initial state using that type
const initialState: PositionOpen[] = [];

export const positionOpenSlice = createSlice({
  name: "positionOpen",
  // `createSlice` will infer the state type from the `initialState` argument
  initialState,
  reducers: {
    loadPositionOpens: (state, action: PayloadAction<PositionOpen[]>) => {
      return action.payload;
    },
  },
});

export const { loadPositionOpens } = positionOpenSlice.actions;

export const selectPositionOpen = (state: RootState) => state.positionOpen;

export default positionOpenSlice.reducer;
