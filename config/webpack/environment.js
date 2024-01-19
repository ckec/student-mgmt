const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.
  ProvidePlugin({
  $: 'jquery',
  JQuery: 'jquery',
  Popper: ['popperjs', 'default']
}))

module.exports = environment
