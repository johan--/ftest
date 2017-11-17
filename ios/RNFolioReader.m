//
//  RNFolioReader.m
//  ftest
//
//  Created by Владислав Баранов on 17.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNFolioReader.h"
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNFolioReaderSwift, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(resourcePath, NSString)
@end

@interface RCT_EXTERN_MODULE(RNFolioViewSwift, UIView)

@end
