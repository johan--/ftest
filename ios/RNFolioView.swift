//
//  RNFolioView.swift
//  ftest
//
//  Created by Владислав Баранов on 16.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import FolioReaderKit

@objc(RNFolioView)
class RNFolioView : UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    return nil
    //fatalError("init(coder:) has not been implemented")
  }
}
