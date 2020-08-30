import React from 'react';

const CoreColor = (props) => {
  const { name, value } = props
  return (
    <div className="core-color docs-color">
      <div className="color-example" style={{backgroundColor: value}} />
      <div className="color-name">
        <code>{name}</code>
      </div>
      <div className="color-value">{value}</div>
    </div>
  )
}

const CoreColors = (props) => {
  const colorKeys = Object.keys(props);
  return (
    <>
      {colorKeys.map(key => {
        const token = props[key];
        return (
          <CoreColor key={key} {...token} />
        )
      })}
    </>
  )
}

export default CoreColors;