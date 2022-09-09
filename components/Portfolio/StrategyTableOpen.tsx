import { useTableColumns } from "./useTableColumns";
import { Table } from "./Table";
import { useMemo } from "react";
import { PositionOpen } from "@/src/types/Position.type";

export const StrategyTableOpen = ({ positionOpen }: { positionOpen: any }) => {
  const [columns] = useTableColumns("open");

  const data: PositionOpen[] = useMemo<PositionOpen[]>(
    () => positionOpen,
    [positionOpen]
  );

  return (
    <>
      <h2 className="text-center uppercase">Magic Formula</h2>
      <Table columns={columns} data={data} />
    </>
  );
};
