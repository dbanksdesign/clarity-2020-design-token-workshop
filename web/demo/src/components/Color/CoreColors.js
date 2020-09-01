import React from 'react';

const CoreColor = (props) => {
  const { name, value, documentation } = props
  return (
    <div className="core-color docs-color">
      <div className="color-example" style={{backgroundColor: value}} />
      <div className="color-name">
        <code>{name}</code>
      </div>
      <div className="color-value">{value}</div>
      <div className="color-description">{documentation.description}</div>
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