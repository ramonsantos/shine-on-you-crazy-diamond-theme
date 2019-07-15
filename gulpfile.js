'use strict';

const { src, dest, parallel } = require('gulp');
const babel = require('gulp-babel');
const sass = require('gulp-sass');
const concat = require('gulp-concat');

function css() {
  return src('./source/css/sass/*.scss')
    .pipe(sass.sync({outputStyle: 'expanded'}).on('error', sass.logError))
    .pipe(dest('./source/css'))
}

function js() {
  return src('./source/js/es6/*.js')
    .pipe(concat('scripts.js'))
    .pipe(babel({presets: ['env']}))
    .pipe(dest('./source/js'))
}

exports.js = js;
exports.css = css;
exports.default = parallel(css, js);
