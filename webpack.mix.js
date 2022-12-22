let mix = require('laravel-mix');

mix.postCss('src/css/style.css', 'build/css/tailwind.css', [
	require('tailwindcss'),
	require('postcss-nested')
])
.options({
	processCssUrls: false
})
.sass('src/sass/global.scss', 'build/css/sass.css')
.combine(['build/css/tailwind.css', 'build/css/sass.css'], 'build/css/global.css');

mix.browserSync({
    proxy: 'http://localhost/soma/parkerlp',
    files: [
        "./**/*.php",
    ],
});