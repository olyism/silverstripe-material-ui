var gulp = require('gulp');
var config = require('../config').css;

var sass = require('gulp-sass');
var cssnano = require('gulp-cssnano');
var browserSync = require('browser-sync').create();

gulp.task('css', function () {
  gulp.src(config.src)
    .pipe(
      sass().on('error', sass.logError)
    )
    .pipe(cssnano())
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.stream())
});
