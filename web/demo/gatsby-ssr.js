import React from 'react'
import './src/styles/index.scss'
import Layout from '$components/Layout'

// is there really no better way to do this in ES6? jeez..
import wrap from './wrap-root-element'
export const wrapRootElement = wrap

export const wrapPageElement = ({ element, props }) => (
  <Layout {...props}>{element}</Layout>
)
