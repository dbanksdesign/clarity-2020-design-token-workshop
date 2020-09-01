const fs = require('fs-extra');
const template = require('lodash/template');
const s2v = require('svg2vectordrawable');
const sharp = require('sharp');

module.exports = {
  do: (dictionary, config) => {
    const svgs = dictionary.allProperties.filter(token => {
      return token.attributes.category === `asset` &&
        token.attributes.type === `svg`
    });
    
    svgs.forEach(token => {
      const src = template( fs.readFileSync(token.value) );
      const output = src(dictionary.properties);
      const outputPath = `${config.webPath||''}${token.value}`;
      fs.ensureFileSync(outputPath);
      fs.writeFileSync(outputPath, output);
      
      const androidPath = `${config.androidPath}${token.name}.xml`;
      fs.ensureFileSync(androidPath);
      s2v(output).then(xml => {
        setTimeout(() => null, 0); // forces node to not exit immediately
        fs.writeFileSync(androidPath, xml);
        console.log(`✔︎ ${androidPath}`);
      });
      
      
      const resolutions = [1,2,3];
      const iosPath = `${config.iosPath}${token.name}.imageset/`;
      fs.ensureDirSync(iosPath);
      const contents = {
        images: [],
        "info" : {
          "author" : "xcode",
          "version" : 1
        }
      }
      
      resolutions.forEach(resolution => {
        const fileName = `${resolution}x.png`;
        contents.images.push({
          filename: fileName,
          idiom: "universal",
          scale: `${resolution}x`
        });
        sharp(Buffer.from(output, `utf8`))
          .resize({ width: resolution * token.attributes.width })
          .png({ compressionLevel: 0 })
          .toFile(`${iosPath}${fileName}`)
          .then(info => {
            setTimeout(() => null, 0); // forces node to not exit immediately
          });
      });
      fs.writeFileSync(`${iosPath}Contents.json`, JSON.stringify(contents, null, 2));
    });
  },
  undo: (dictionary) => {
    
  }
}