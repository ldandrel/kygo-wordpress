const gulp = require('gulp');
const plumber = require('gulp-plumber');
const notify = require('gulp-notify');
const sass = require('gulp-sass');
const minify = require('gulp-minify');
const sourcemaps = require('gulp-sourcemaps');
const autoprefixer = require('gulp-autoprefixer');
const rename = require('gulp-rename');
const imagemin = require('gulp-imagemin');
const browserSync = require('browser-sync');
const babel = require('gulp-babel');
const browserify = require('gulp-browserify');

const reload = browserSync.reload;

let config = {
    src: 'src/',
    dist: './',
    port: 8080
};

gulp.task('liveserver', () => {
    browserSync.init({
        proxy: 'http://localhost:8888/h3/kygo_wordpress/',
        notify: false
    });
});

gulp.task('sass', () => {
    return gulp
        .src(config.src + 'scss/*.scss')
        .pipe(
            plumber({
                errorHandler: notify.onError('SASS Error: <%= error.message %>')
            })
        )
        .pipe(sourcemaps.init())
        .pipe(sass({ outputStyle: 'compressed' }).on('error', sass.logError))
        .pipe(sourcemaps.write())
        .pipe(
            autoprefixer({
                browsers: ['last 2 versions'],
                cascade: false
            })
        )
        .pipe(gulp.dest(config.dist + 'assets/css'))
        .pipe(reload({ stream: true }));
});

gulp.task('javascript', () => {
    return gulp
        .src(config.src + 'js/*.js')
        .pipe(
            browserify({
                debug : true
            })
        )
        .pipe(
            plumber({
                errorHandler: notify.onError('JS Error: <%= error.message %>')
            })
        )
        .pipe(
            babel({
                presets: ['es2015']
            })
        )
        .pipe(
            minify({
                ext: {
                    src: '.js',
                    min: '.min.js'
                },
                ignoreFiles: ['.min.js'],
                noSource: false
            })
        )
        .pipe(gulp.dest(config.dist + 'assets/js'))
        .pipe(reload({ stream: true }));
});

gulp.task('images', () => {
    return gulp
        .src(config.src + 'img/**/*')
        .pipe(imagemin())
        .pipe(gulp.dest(config.dist + 'assets/img'))
        .pipe(reload({ stream: true }))
        .pipe(notify('Image minified: <%= file.relative %>'));
});

gulp.task('fonts', () => {
    return gulp
        .src(config.src + 'font/**/*')
        .pipe(gulp.dest(config.dist + 'assets/font'))
        .pipe(reload({ stream: true }));
});

gulp.task('watch', () => {
    gulp.watch(config.src + 'scss/**/*.scss', ['sass']);
    gulp.watch(config.src + 'js/**/*.js', ['javascript']);
    gulp.watch(config.src + 'img/**/*', ['images']);
    gulp.watch(config.src + 'font/*', ['fonts']);
});

gulp.task('build', ['sass', 'javascript'], () => {});

gulp.task('default', ['build', 'liveserver', 'watch'], () => {});