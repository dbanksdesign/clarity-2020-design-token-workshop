import React from 'react';

const BackgroundColor = (props) => {
  const { name, value } = props
  return (
    <div className="background-color docs-color" style={{borderColor: value}}>
      <div className="color-example" style={{backgroundColor: value}} />
      <div className="color-name">
        <code>{name}</code>
      </div>
      <div className="color-value">{value}</div>
    </div>
  )
}

export default BackgroundColor