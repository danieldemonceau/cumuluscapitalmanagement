module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        cormorantGaramond: ["Cormorant Garamond", "serif"],
        oranienbaum: ["Oranienbaum", "serif"],
        imbue: ["Imbue", "serif"],
        frenchCanon: ["IM Fell French Canon SC", "serif"],
        lato: ["Lato", "sans-serif"],
      },
    },
  },
  plugins: [],
};
