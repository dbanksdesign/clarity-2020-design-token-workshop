import React from 'react'
// You could also just import this normally and use it as an image src
import logo from '!!raw-loader!clarity-design-tokens/web/dist/assets/svg/logo.svg'

const Logo = () => (
  <span className="logo" dangerouslySetInnerHTML={{__html: logo}} />
)

export default Logo