import React, { Component } from 'react'
import { requireNativeComponent } from 'react-native'
import PropTypes from 'prop-types'
let RNFolioView = requireNativeComponent('RNFolioReaderSwift', FolioView)

class FolioView extends Component {
  render () {
  //  const { ...otherProps } = this.props
    return <RNFolioView {...this.props} style={{ flex: 1 }} />
  }
}
FolioView.propTypes = {
  resourcePath: PropTypes.string.isRequired
}

export default FolioView
