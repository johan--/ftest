//
//  RNFolioReaderViewManager.swift
//  ftest
//
//  Created by Владислав Баранов on 17.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import FolioReaderKit

@objc(RNFolioReaderSwift)
class RNFolioReaderViewManager: RCTViewManager {

  override func view() -> UIView! {
  /*
    let resourcePath = Bundle.main.path(forResource: "eBook - Alpha Malik - Midika Crane", ofType: "epub")
    let fView = RNFolioView()
    fView.loadBook(resourcePath: resourcePath!)
 */
    return RNFolioView(); // We'll change this later
  }
}
