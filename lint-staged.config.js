module.exports = {
  // Type check TypeScript files
  "**/*.(ts|tsx)": () => "yarn tsc --noEmit",

  // Lint then format TypeScript and JavaScript files
  "**/*.(ts|tsx|js)": (/** @type {string[]} */ filenames) => [
    `yarn eslint --fix ${filenames.join(" ")}`,
    `yarn prettier --write ${filenames.join(" ")}`,
  ],

  // Format MarkDown and JSON
  "**/*.(md|json)": (/** @type {any[]} */ filenames) =>
    `yarn prettier --write ${filenames.join(" ")}`,
};
