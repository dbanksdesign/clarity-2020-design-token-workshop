module.exports = function(dictionary, config) {
  return JSON.stringify(dictionary.allProperties, null, 2);
}