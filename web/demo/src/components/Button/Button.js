import React from 'react';

// This component uses SCSS and SCSS variables for styling
import './Button.scss';

const Button = ({ children, variant="default" }) => {
  return (
    <button className={`clarity-button ${variant}`}>
      {children}
    </button>
  )
}

export default Button