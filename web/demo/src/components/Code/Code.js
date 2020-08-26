import React from 'react'
import Highlight, { defaultProps } from 'prism-react-renderer'
import './Code.scss'

const Code = ({ codeString, language, ...props }) => {
  return (
    <Highlight {...defaultProps} code={codeString} language={language}>
      {({ className, style, tokens, getLineProps, getTokenProps }) => (
        <pre className={className}>
          {tokens.map((line, i) => (
            <div {...getLineProps({ line, key: i })} style={null}>
              {line.map((token, key) => (
                <span {...getTokenProps({ token, key })} style={null} />
              ))}
            </div>
          ))}
        </pre>
      )}
    </Highlight>
  )
}

export default Code;