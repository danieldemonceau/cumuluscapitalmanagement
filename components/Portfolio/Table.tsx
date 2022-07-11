import {
  CellProps,
  FilterProps,
  FilterValue,
  IdType,
  Row,
  TableInstance,
  useTable,
  Column,
  useSortBy,
} from "react-table";
import { PositionOpen } from "../../types/Position.type";
import { ChevronDownIcon, ChevronUpIcon } from "@heroicons/react/solid";

export const Table = ({
  columns,
  data,
}: {
  columns: Column<PositionOpen>[];
  data: PositionOpen[];
}) => {
  const tableInstance = useTable<PositionOpen>(
    {
      columns,
      data,
      initialState: {
        sortBy: [
          {
            id: "plPercent",
            desc: true,
          },
        ],
      },
    },
    useSortBy
  );
  const { getTableProps, getTableBodyProps, headerGroups, rows, prepareRow } =
    tableInstance;
  return (
    <table
      {...getTableProps()}
      className="table-auto mx-auto justify-center w-4/6"
    >
      <thead>
        {headerGroups.map((headerGroup, index) => {
          const { key, ...restHeaderGroupProps } =
            headerGroup.getHeaderGroupProps();
          return (
            <tr key={key} {...restHeaderGroupProps}>
              {headerGroup.headers.map((column) => {
                const { key, ...restHeaderProps } = column.getHeaderProps(
                  column.getSortByToggleProps()
                );
                return (
                  <th
                    scope="col"
                    key={key}
                    {...restHeaderProps}
                    className="bg-white flex-1 align-middle justify-center border-b-[1px] border-black text-center p-3.5 px-6 py-3"
                  >
                    {column.render("Header")}
                    {/* Add a sort direction indicator */}
                    <span>
                      {column.isSorted ? (
                        column.isSortedDesc ? (
                          <ChevronDownIcon className="h-5 w-5 inline" />
                        ) : (
                          <ChevronUpIcon className="h-5 w-5 inline" />
                        )
                      ) : (
                        ""
                      )}
                    </span>
                  </th>
                );
              })}
            </tr>
          );
        })}
      </thead>
      <tbody {...getTableBodyProps()}>
        {rows.map((row) => {
          prepareRow(row);
          const { key, ...restRowProps } = row.getRowProps();
          return (
            <tr key={key} {...restRowProps}>
              {row.cells.map((cell) => {
                let color = "";
                let valuePrefix = "";
                let valueSuffix = "";
                if (String(cell.column.Header).includes("%")) {
                  valueSuffix = "%";
                  if (cell.value > 0) color = "text-green-400";
                  if (cell.value < 0) color = "text-red-400";
                }
                if (
                  String(cell.column.Header)
                    .toLocaleLowerCase()
                    .includes("price") &&
                  !String(cell.column.Header)
                    .toLocaleLowerCase()
                    .includes("date")
                ) {
                  valuePrefix = "$";
                }
                const { key, ...restCellProps } = cell.getCellProps();
                return (
                  <td
                    scope="row"
                    key={key}
                    {...restCellProps}
                    className={`bg-white flex-1 align-middle justify-center text-center px-3 py-2 ${color}`}
                  >
                    {`${valuePrefix}${cell.value}${valueSuffix}`}
                  </td>
                );
              })}
            </tr>
          );
        })}
      </tbody>
    </table>
  );
};
