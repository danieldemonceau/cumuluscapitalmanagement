const HorizontalBar = ({ thickness }: { thickness: number }) => {
  return (
    <div
      className={`flex border-t-${thickness} border-slate-600
      transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110
      w-4/12 h-1px mx-auto my-2`}
    />
  );
};

export default HorizontalBar;
