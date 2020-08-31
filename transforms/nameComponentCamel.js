const Case = require('case');

module.exports = {
  type: `name`,
  transformer: (token) => {
    return Case.camel(token.path.slice(2))
  }
}