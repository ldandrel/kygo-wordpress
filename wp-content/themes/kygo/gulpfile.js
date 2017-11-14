'use strict'

const gulp         = require('gulp')
const sass         = require('gulp-sass')
const clean_css    = require('gulp-clean-css')
const babel        = require('gulp-babel')
const browser_sync = require('browser-sync').create()
const reload       = browser_sync.reload
var minify         = require('gulp-minify')

gulp.task('sync', () =>
{
    let files = [
        './style.css',
        './*.php'
    ]

    browser_sync.init(files, {
    proxy: "localhost:8888/various/brocante_jeufosse_wp/",
    notify: false
})
})

gulp.task('sass', () =>
{
    return gulp.src('./assets/styles/**/*.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(clean_css({compatibility: 'ie8'}))
        .pipe(reload({stream:true}))
        .pipe(gulp.dest('./dist/css'))
});

gulp.task('js', () =>
gulp.src('./assets/scripts/**/*.js')
    .pipe(babel({presets: ['env']}))
    .pipe(minify({
        ext:{
            src:'-debug.js',
            min:'.js'
        },
        exclude: ['tasks'],
        ignoreFiles: ['.combo.js', '-min.js']
    }))
    .pipe(gulp.dest('dist/js'))
);

gulp.task('watch', () =>
{
    gulp.watch('./assets/styles/**/*.scss', ['sass'])
gulp.watch('./assets/scripts/**/*.js', ['js'])
});

gulp.task('default', ['sass', 'js', 'sync', 'watch'])
