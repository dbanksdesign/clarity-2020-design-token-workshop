module.exports = {
  action: {
    generateSVG: require('./actions/generateSVG')
  },
  
  source: [
    `tokens/core/**/*.json`,
    `tokens/theme/**/*.json`,
    `tokens/component/**/*.json`
  ],
  
  platforms: {
    web: {
      transformGroup: `web`,
      buildPath: `web/dist/`,
      files: [{
        format: `json`,
        destination: `tokens.json`
      },{
        format: `scss/variables`,
        destination: `variables.scss`
      }]
    },
    
    js: {
      transformGroup: `js`,
      buildPath: `web/dist/`,
      files: [{
        destination: `index.js`,
        format: `javascript/es6`
      }]
    },
    
    asset: {
      transformGroup: `assets`,
      buildPath: `web/dist/`,
      androidPath: `android/dist/src/main/res/drawable/`,
      actions: [`generateSVG`]
    }
  }
}