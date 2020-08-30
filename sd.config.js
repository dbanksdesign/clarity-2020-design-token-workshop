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
      androidPath: `android/claritydesigntokens/src/main/res/drawable/`,
      iosPath: `ios/dist/Assets.xcassets/`,
      actions: [`generateSVG`]
    },
    
    android: {
      transformGroup: "android",
      buildPath: "android/claritydesigntokens/src/main/res/values/",
      files: [{
        destination: "style_dictionary_colors.xml",
        format: "android/colors"
      },{
        destination: "style_dictionary_font_dimens.xml",
        format: "android/fontDimens"
      },{
        destination: "style_dictionary_dimens.xml",
        format: "android/dimens"
      },{
        destination: "style_dictionary_integers.xml",
        format: "android/integers"
     },{
        destination: "style_dictionary_strings.xml",
        format: "android/strings"
      }]
    },
  }
}