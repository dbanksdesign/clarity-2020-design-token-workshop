module.exports = {
  source: ["tokens/**/*.json"],
  platforms: {
    web: {
      transformGroup: "scss",
      buildPath: "dist/",
      files: [{
        format: "scss/variables",
        destination: "variables.scss"
      }]
    }
  }
}