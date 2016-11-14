var dest = './build',
  src = './src',
  mui = './node_modules/material-ui/src';

module.exports = {
  browserify: {
    // Enable source maps
    debug: true,
    // A separate bundle will be generated for each
    // bundle config in the list below
    bundleConfigs: [{
      entries: src + '/app/App.jsx',
      dest: dest,
      outputName: 'App.js'
    }],
    extensions: ['.jsx'],
  },
  browserSync: {
    proxy: 'stats.vagrant',
    files: [
      dest + '/**'
    ]
  },
  css: {
    src: src + '/scss/**/*.scss',
    dest: dest
  }
};
