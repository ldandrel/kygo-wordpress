const gulp = require('gulp');
const plumber = require('gulp-plumber');
const notify = require('gulp-notify');
const sass = require('gulp-sass');
const sourcemaps = require('gulp-sourcemaps');
const autoprefixer = require('gulp-autoprefixer');
const source = require('vinyl-source-stream');
const rename = require('gulp-rename');
const browserSync = require('browser-sync');
const babel = require('gulp-babel');
const browserify = require('browserify');
const babelify = require('babelify');
const uglify = require('gulp-uglify');
const streamify = require('gulp-streamify');
const gulpif = require('gulp-if');
const gutil = require('gulp-util');


const config = {
    src: 'src/',
    dist: 'assets/',
    port: 8080,
    env: process.env.NODE_ENV === 'production'
};

gulp.task('liveserver', () => {
//watch files
    let files = [
        './assets/app.min.css',
        './*.php'
    ]

    //initialize browsersync
    browserSync.init(files, {
        //browsersync with a php server
        proxy: "kygo.local",
        notify: false
    });
});

gulp.task('sass', () =>
    gulp
        .src(config.src + 'scss/*.scss')
        .pipe(
            plumber({
                errorHandler: notify.onError('SASS Error: <%= error.message %>')
            })
        )
        .pipe(gulpif(!config.env, sourcemaps.init()))
        .pipe(sass({ outputStyle: 'compressed' }).on('error', sass.logError))
        .pipe(gulpif(!config.env, sourcemaps.write()))
        .pipe(
            autoprefixer({
                browsers: ['last 2 versions'],
                cascade: false
            })
        )
        .pipe(
            rename(path => {
                path.basename += '.min';
            })
        )
        .pipe(gulp.dest(config.dist + 'assets/css'))
        .pipe(browserSync.stream())
);

gulp.task('javascript', () =>
    browserify({
        entries: config.src + 'js/app.js',
        debug: true
    })
        .transform(babelify, { presets: ['es2015'] })
        .on('error', gutil.log)
        .bundle()
        .on('error', gutil.log)
        .pipe(source('bundle.js'))
        .pipe(streamify(uglify()))
        .pipe(gulp.dest(config.dist + 'assets/js'))
        .pipe(browserSync.stream())
);

gulp.task('watch', () => {
    gulp.watch(config.src + 'scss/**/*.scss', ['sass']);
    gulp.watch(config.src + 'js/*.js', ['javascript']);
});

gulp.task('build', ['sass', 'javascript'], () => {});
gulp.task('default', ['build', 'liveserver', 'watch'], () => {});
