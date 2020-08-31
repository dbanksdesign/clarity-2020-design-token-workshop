import React, {useState} from 'react'
import { Link } from 'gatsby'
import './Layout.scss'
import Logo from '$components/Logo'

const expanderIcon = <svg className="docs-expander-icon" focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/svg" fill="currentColor" width="20" height="20" viewBox="0 0 32 32" aria-hidden="true"><path d="M16 22L6 12 7.4 10.6 16 19.2 24.6 10.6 26 12z"></path></svg>

const NavExpander = ({ label, children, expanded=false }) => {
  const [isExpanded, setExpanded] = useState(expanded);
  
  function toggle() {
    setExpanded(!isExpanded)
  }
  
  return (
    <div className={`docs-nav-expander ${isExpanded ? 'expanded' : ''}`}>
      <button onClick={toggle} className="docs-nav-expander-button">
        {label}
        {expanderIcon}
      </button>
      <div className="docs-nav-expander-body">{children}</div>
    </div>
  )
}

const NavLink = ({to, children}) => (
  <Link className="docs-nav-link"
    activeClassName="active"
    to={to}>{children}</Link>
)

const TokensNav = () => {
  return (
    <>
      <NavLink to="/tokens/color">Color</NavLink>
      <NavLink to="/tokens/padding">Padding</NavLink>
      <NavLink to="/tokens/font-size">Font Size</NavLink>
      <NavLink to="/tokens/typography">Typography</NavLink>
    </>
  )
}

const ComponentsNav = () => {
  return (
    <>
      <NavLink to="/components/button">Button</NavLink>
      <NavLink to="/components/badge">Badge</NavLink>
    </>
  )
}

const Layout = ({location, children}) => {
  return (
    <div className="docs">
      <nav className="docs-nav">
        <NavLink to="/">
          <Logo />
        </NavLink>
        <NavExpander label="Tokens" expanded={location.pathname.includes('tokens')}>
          <TokensNav />
        </NavExpander>
        <NavExpander label="Components" expanded={location.pathname.includes('components')}>
          <ComponentsNav />
        </NavExpander>
      </nav>
      <main className="docs-main">
        {children}
      </main>
    </div>
  )
}

export default Layout