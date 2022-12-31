export default function Custom500({ props }: { props: string }) {
  console.log(props);
  return <h1>500 - Page Not Found</h1>;
}
