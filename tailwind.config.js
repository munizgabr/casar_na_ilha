const colors = require('tailwindcss/colors')

module.exports = {
  content: ["**/*.php"],
  theme: {
    container: {
      screens: {
         sm: "100%",
         md: "100%",
         lg: "1024px",
         xl: "1185px"
      }
    },
    extend: {
      colors: {
        transparent: 'transparent',
        current: 'currentColor',
        'magenta': {
          DEFAULT: '#BC3254'
        },
        blue:{
          'title':"#00A0AF"
        },
        yellow:{
          'fundo': '#FFB81D',
          'yolk': '#ff980d'
        }
      },
      transitionDuration: {
        '0': '0ms',
        '2000': '2000ms',
      },
      keyframes: {
        wiggle: {
          '0%, 100%': { transform: 'rotate(-6deg)' },
          '50%': { transform: 'rotate(6deg)' },
        },
        slide: {
          '0%, 100%':  { transform: 'translateX(-15%)' },
          '50%': { transform: 'translateX(0)' }
        }
      },
      animation: {
        wiggle: 'wiggle 0.5s ease-in-out infinite',
        slide: 'slide 1s infinite'
      },
    },
    backgroundSize: {
      'auto': 'auto',
      'cover': 'cover',
      'contain': 'contain',
      '50%': '50%',
    }
  }
}
