// I MIGHT NOT NEED THIS
const originalTransform = require('style-dictionary').transform['attribute/cti'];
var cssToCTIMap = {
  'width': {category: 'size', type: 'dimension'},
  'min-width': {category: 'size', type: 'dimension'},
  'max-width': {category: 'size', type: 'dimension'},
  'height': {category: 'size', type: 'dimension'},
  'min-height': {category: 'size', type: 'dimension'},
  'max-height': {category: 'size', type: 'dimension'},
  'border-width': {category: 'size', type: 'border', item: 'width'},
  'border-radius': {category: 'size', type: 'border', item: 'radius'},
  'border-color': {category: 'color', type: 'border'},
  'background-color': {category: 'color', type: 'background'},
  'color': {category: 'color', type: 'font'},
  'padding': {category: 'size', type: 'padding'},
  'padding-top': {category: 'size', type: 'padding'},
  'padding-vertical': {category: 'size', type: 'padding'},
  'padding-horizontal': {category: 'size', type: 'padding'},
  'font-size': {category: 'size', type: 'font'},
}

module.exports = {
  type: 'attribute',
  name: 'attribute/cti',
  transformer: function(prop) {
    if (prop.path[0] === 'component') {
      return cssToCTIMap[prop.name] || {};
    } else {
      return originalTransform.transformer(prop);
    }
  }
};