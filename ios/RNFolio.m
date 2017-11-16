//
//  RNFolio.m
//  ftest
//
//  Created by Владислав Баранов on 16.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNFolio.h"
#import <React/RCTViewManager.h>
#import <Foundation/Foundation.h>

@interface RCT_EXTERN_MODULE(RNFolioSwift, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(resourcePath, NSString);
@end
@implementation RNFolio

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
