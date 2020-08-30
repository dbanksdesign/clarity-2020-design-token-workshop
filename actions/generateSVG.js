const fs = require('fs-extra');
const template = require('lodash/template');
const s2v = require('svg2vectordrawable');

// async function generateSVG(dictionary, config) {
//   const svgs = dictionary.allProperties.filter(token => {
//     return token.attributes.category === `asset` &&
//       token.attributes.type === `svg`
//   });
//   svgs.forEach(token => {
//     const src = template( fs.readFileSync(token.value) );
//     const output = src(dictionary.properties);
//     const outputPath = `${config.buildPath||''}${token.value}`;
//     fs.ensureFileSync(outputPath);
//     fs.writeFileSync(outputPath, output);
    
//     const androidPath = `${config.androidBuildPath}${token.name}.xml`;
//     fs.ensureFileSync(androidPath);
//     await s2v(output).then(xml => {
//       fs.writeFileSync(androidPath);
//     });
//   });
// }

module.exports = {
  // do: generateSVG,
  do: (dictionary, config) => {
    const svgs = dictionary.allProperties.filter(token => {
      return token.attributes.category === `asset` &&
        token.attributes.type === `svg`
    });
    svgs.forEach(token => {
      const src = template( fs.readFileSync(token.value) );
      const output = src(dictionary.properties);
      const outputPath = `${config.buildPath||''}${token.value}`;
      fs.ensureFileSync(outputPath);
      fs.writeFileSync(outputPath, output);
      
      const androidPath = `${config.androidPath}${token.name}.xml`;
      fs.ensureFileSync(androidPath);
      s2v(output).then(xml => {
        setTimeout(() => null, 0); // forces node to not exit immediately
        fs.writeFileSync(androidPath, xml);
        console.log(`✔︎ ${androidPath}`);
      });
    });
  },
  undo: (dictionary) => {
    
  }
}