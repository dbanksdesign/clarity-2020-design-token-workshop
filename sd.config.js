const StyleDictionary = require('style-dictionary');

module.exports = {
  transform: {
    'attribute/cti': require('./transforms/attributeCTI'),
    nameComponentCamel: require('./transforms/nameComponentCamel')
  },
  source: ["tokens/**/*.json"],
  platforms: {
    web: {
      transformGroup: "scss",
      buildPath: "web/dist/",
      files: [{
        format: "scss/variables",
        destination: "variables.scss"
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
    
    jsComponent: {
      transforms: [`attribute/cti`,`nameComponentCamel`,`size/rem`,`color/css`],
      buildPath: `web/dist/`,
      files: [{
        destination: `badge.js`,
        format: `javascript/es6`,
        filter: (token) => token.path[0] === 'component'
          && token.path[1] === 'badge'
      }]
    },
    
    android: {
      transformGroup: "android",
      buildPath: "android/claritydesigntokens/src/main/res/values/",
      files: [{
        destination: "design_token_colors.xml",
        format: "android/colors"
      },{
        destination: "design_token_font_dimens.xml",
        format: "android/fontDimens"
      },{
        destination: "design_token_dimens.xml",
        format: "android/dimens"
      }]
    },
    
    ios: {
      transformGroup: `ios-swift`,
      buildPath: `ios/dist/`,
      files: [{
        destination: `ClarityDesignTokens.swift`,
        className: `ClarityDesignTokens`,
        format: `ios-swift/enum.swift`
      }]
    },
    
    iosSeparate: {
      buildPath: `ios/dist/`,
      transforms: StyleDictionary.transformGroup[`ios-swift`].concat(`nameComponentCamel`),
      files: [{
        destination: `BadgeTokens.swift`,
        className: `BadgeTokens`,
        format: `ios-swift/enum.swift`,
        filter: (token) => token.path[0] === 'component'
          && token.path[1] === 'badge'
      }]
    }
  }
}