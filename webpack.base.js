var path = require("path");

module.exports = {
    mode: "development",
    devtool: 'inline-source-map',
    output: {
      path: path.resolve(__dirname, "dist"),
    },
    resolve: {
      extensions: [".ts", ".tsx", ".js", ".json"]
    },
    module: {
      rules: [
        {
          // Include ts, tsx, js, and jsx files.
          test: /\.(ts|js)x?$/,
          exclude: /node_modules/,
          loader: "babel-loader"
        }
      ]
   }
 };

