'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('sass', function(){
  return gulp.src('./source/css/sass/*.scss')
      .pipe(sass.sync({outputStyle: 'expanded'}).on('error', sass.logError))
      .pipe(gulp.dest('./source/css'));
});

gulp.task('default', ['sass']);
