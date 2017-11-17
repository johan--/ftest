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
  override init(frame: CGRect) {
    self.config = FolioReaderConfig()
    self.folioReader = FolioReader()
    self.viewController = UIViewController()
    super.init(frame: frame);
    self.frame = frame;
    let resourcePath = Bundle.main.path(forResource: "eBook - Alpha Malik - Midika Crane", ofType: "epub")
    config.scrollDirection = .horizontalWithVerticalContent
    let readerContaner = FolioReaderContainer(withConfig:config, folioReader:folioReader, epubPath:resourcePath!)
    
    
   /* let childViewController = UIStoryboard(name: "readerContaner", bundle: nil).instantiateViewController(withIdentifier: "readerContaner")
 */
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
