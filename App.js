/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View,
  NativeModules,
  ActivityIndicator
} from 'react-native';
//import RNFS from 'react-native-fs';
import RNFetchBlob from 'react-native-fetch-blob'
const { RNFolioReader } = NativeModules

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component<{}> {

   state = {
     downloaded: false
   }
   componentDidMount() {
     //RNFolioReader.open(`testbook`)

     RNFetchBlob.config({
        fileCache : true,
        appendExt : 'epub'
      })
      .fetch('GET',`https://djjob.ru/book/testbook.epub`)
      .then((res) => {
        console.log(res)
        this.setState({downloaded: true, filePath: res.path()}, this.openEpub)
        // open the document directly
        //RNFetchBlob.ios.previewDocument(res.path())
        // or show options
        // RNFetchBlob.ios.openDocument(res.path())
      })

/*
     const filePath =`${RNFS.CachesDirectoryPath}/testbook3.epub`
     RNFS.downloadFile({
       fromUrl: 'https://djjob.ru/book/testbook.epub',
       toFile: filePath,
      }).promise.then((r) => {
        //console.log(r)
        this.setState({downloaded: true, filePath}, this.openEpub)

      });
      */

  }

  openEpub = async () => {
    const { filePath } = this.state
    await RNFolioReader.open(filePath)
  }
  render() {
                // after this line
    return (

      <View style={styles.container}>
        {this.state.downloaded ? <View /> : <ActivityIndicator/>}
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
