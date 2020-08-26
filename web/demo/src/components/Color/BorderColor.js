import React from 'react';

const BorderColor = (props) => {
  const { name, value } = props
  return (
    <div className="border-color docs-color">
      <div className="color-example" style={{borderColor: value}} />
      <div className="color-name">
        <code>{name}</code>
      </div>
      <div className="color-value">{value}</div>
    </div>
  )
}

export default BorderColor