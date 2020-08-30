import React from 'react';
import './Button.css'

const Button = ({ children, variant="default" }) => {
  return (
    <button className={`clarity-button ${variant}`}>
      {children}
    </button>
  )
}

export default Button