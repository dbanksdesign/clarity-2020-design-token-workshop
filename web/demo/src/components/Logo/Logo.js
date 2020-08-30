import React from 'react'
import logo from '!!raw-loader!clarity-design-tokens/web/dist/assets/svg/logo.svg'

console.log(logo);

const Logo = () => (
  <span className="logo" dangerouslySetInnerHTML={{__html: logo}} />
)

// const Logo = () => (
//   <svg className="logo" width="128" height="128" viewBox="0 0 128 128" fill="none" xmlns="http://www.w3.org/2000/svg">
//     <path d="M89.75 49.847L115 35.1493V93.9403L64.5 123.336V90.9254" stroke="#C4C4C4" strokeWidth="8" strokeLinejoin="round"/>
//     <path d="M39.25 49.847L14 35.1493V93.9403L64.5 123.336V90.9254" stroke="#C4C4C4" strokeWidth="8" strokeLinejoin="round"/>
//     <path d="M14 34.3955L64.5 5L115 34.3955" stroke="#C4C4C4" strokeWidth="8" strokeLinecap="round" strokeLinejoin="round"/>
//     <circle cx="64.0426" cy="64.4623" r="26.0255" stroke="#C4C4C4" strokeWidth="8" strokeLinejoin="round"/>
//   </svg>
// )

export default Logo