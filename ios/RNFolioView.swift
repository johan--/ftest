//
//  RNFolioView.swift
//  ftest
//
//  Created by Владислав Баранов on 17.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import FolioReaderKit

@objc(RNFolioViewSwift)
class RNFolioView : UIView {
  var publisherView : UIView? = nil
  var config: FolioReaderConfig
  var folioReader: FolioReader
  var viewController: UIViewController
  var readerContaner: FolioReaderContainer
  private var _resourcePath:String?
  var resourcePath: String? {
    set {
      self._resourcePath = newValue
      self.loadBook()
    }
    get {
      return self._resourcePath
    }
  }

  override init(frame: CGRect) {
    self.config = FolioReaderConfig()
    self.folioReader = FolioReader()
    self.viewController = UIViewController()
    self.readerContaner = FolioReaderContainer(withConfig:config, folioReader:folioReader, epubPath:"")
    super.init(frame: frame);
    self.frame = frame;
    self.config.scrollDirection = .horizontalWithVerticalContent
    
  }
  public func loadBook() {
    readerContaner.setupConfig(self.config, epubPath: self.resourcePath!)
    self.viewController.addChildViewController(readerContaner)
    self.viewController.view.addSubview(readerContaner.view)
    readerContaner.didMove(toParentViewController: self.viewController)
    
    
    guard let publisherView = self.viewController.view else {return}
    publisherView.frame = self.bounds
    publisherView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    
    addSubview(publisherView)
    self.publisherView = publisherView
  }
  override func layoutSubviews() {
    super.layoutSubviews()
    self.publisherView?.frame = self.bounds
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
