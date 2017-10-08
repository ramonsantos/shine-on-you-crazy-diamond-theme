'use strict';

const gulp = require('gulp');
const sass = require('gulp-sass');
const babel = require('gulp-babel');
const concat = require('gulp-concat');

gulp.task('sass', () =>
    gulp.src('./source/css/sass/*.scss')
        .pipe(sass.sync({outputStyle: 'expanded'}).on('error', sass.logError))
        .pipe(gulp.dest('./source/css'))
);

gulp.task('babel', () =>
    gulp.src('./source/js/es6/*.js')
        .pipe(concat('scripts.js'))
        .pipe(babel({
            presets: ['env']
        }))
        .pipe(gulp.dest('./source/js'))
);

gulp.task('default', ['sass', 'babel']);
