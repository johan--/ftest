import UIKit
import Foundation
import FolioReaderKit

@objc(RNFolioReader)
class RNFolioReader: NSObject {
  
  @objc func open(_ resourcePath: String) -> Void {
    let config = FolioReaderConfig()
    let bookPath = resourcePath //Bundle.main.path(forResource: "testbook", ofType: "epub")
    let folioReader = FolioReader()
    let viewController =  UIApplication.shared.keyWindow?.rootViewController
    folioReader.presentReader(parentViewController: viewController!, withEpubPath: bookPath, andConfig: config)
  }
  
}
