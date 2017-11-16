import React, { Component } from 'react'
import { requireNativeComponent } from 'react-native'

class FolioView extends Component {
  render () {
    const { colors, ...otherProps } = this.props
    return <RNFolio {...otherProps} />
  }
}
const RNFolio = requireNativeComponent('RNFolioSwift', null)
export default FolioView
