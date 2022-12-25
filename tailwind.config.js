/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {
      animation: {
        "text-bg": 'text-bg 8s ease infinite',
      },
      keyframes: {
        "text-bg": {
          '0%, 100%': { backgroundPosition: '0% 50%' },
          '25%': {backgroundPosition: '50% 50%'},
          '50%': { backgroundPosition: '100% 50%' },
          '75%': { backgroundPosition: '25% 25%' },
        },
      },
    },
  },
  plugins: [],
}