import React from 'react';

const FontColor = (props) => {
  const { name, value } = props
  return (
    <div className="font-color docs-color">
      <div className="color-example" style={{color: value}}>Aa</div>
      <div className="color-name">
        <code>{name}</code>
      </div>
      <div className="color-value">{value}</div>
    </div>
  )
}

export default FontColor