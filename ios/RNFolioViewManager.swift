//
//  RNFolioViewManager.swift
//  ftest
//
//  Created by Владислав Баранов on 16.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import FolioReaderKit


@objc(RNFolioSwift)
class RNFolioViewManager : RCTViewManager {
  override func view() -> UIView! {
   
    let config = FolioReaderConfig()
    let bookPath = Bundle.main.path(forResource: "testbook", ofType: "epub")
    let folioReader = FolioReader()
    let folioReaderContainer = FolioReaderContainer(withConfig: config, folioReader: folioReader, epubPath: bookPath!)

    return folioReaderContainer.viewIfLoaded
 
  }
}
