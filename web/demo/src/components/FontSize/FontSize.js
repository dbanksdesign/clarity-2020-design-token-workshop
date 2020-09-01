import React from 'react';
import allTokens from 'clarity-design-tokens/web/dist/allTokens.json';

const fontSizes = allTokens.filter(token => {
  return token.attributes.category === 'size' &&
    token.attributes.type === 'font'
});

const FontSize = (props) => {
  const { value, name } = props;
  return (
    <div className="docs-font-size">
      <div className="docs-font-size-example" style={{
        fontSize: value
      }}>Example</div>
      <div className="docs-font-size-name">{name}</div>
    </div>
  )
}

const FontSizes = () => {
  return (
    <section>
      {fontSizes.map(token => <FontSize {...token} />)}
    </section>
  )
}

export { FontSizes }

export default FontSize