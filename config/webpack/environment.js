const { environment } = require('@rails/webpacker')

environment.config.set('resolve.extensions', ['.js', '.jsx', '.scss', '.css', '.sass', '.png', '.svg', '.jpeg', '.jpg'])
environment.config.merge({
  entry: {
    application: './app/javascript/packs/application.js'
  }
})

module.exports = environment
