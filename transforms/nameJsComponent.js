const Case = require('case');

module.exports = {
  type: 'name',
  transformer: (token) => Case.camel(token.path.slice(2))
}