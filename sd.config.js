const StyleDictionary = require('style-dictionary');

module.exports = {
  action: {
    generateSVG: require('./actions/generateSVG')
  },
  
  transform: {
    nameComponentCamel: require('./transforms/nameComponentCamel')
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
      iosPath: `ios/dist/DesignTokens.xcassets/`,
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
    
    ios: {
      transformGroup: `ios-swift`,
      buildPath: `ios/dist/`,
      files: [{
        destination: `ClarityDesignTokens.swift`,
        className: `ClarityDesignTokens`,
        format: `ios-swift/class.swift`
      }]
    },
    
    iosComponents: {
      transforms: StyleDictionary.transformGroup[`ios-swift-separate`].concat('nameComponentCamel'),
      buildPath: `ios/dist/`,
      files: [{
        destination: `BadgeTokens.swift`,
        className: `BadgeTokens`,
        format: `ios-swift/enum.swift`,
        filter: (token) => token.path[1] === 'badge'
      },{
        destination: `ButtonTokens.swift`,
        className: `ButtonTokens`,
        format: `ios-swift/enum.swift`,
        filter: (token) => token.path[1] === 'button'
      }]
    }
  }
}