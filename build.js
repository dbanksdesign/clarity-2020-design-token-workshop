const fs = require('fs');
const tokens = require('./tokens.json');

const transformedTokens = Object.keys(tokens).map(key => {
  return {
    name: `$${key}`,
    value: `${tokens[key].value}px`
  }
});

const formattedTokens = transformedTokens.map((token) => {
  return `${token.name}: ${token.value};`
}).join(`\n`);

fs.writeFileSync(`dist/variables.scss`, formattedTokens);