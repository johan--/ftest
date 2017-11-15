#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>

@interface RNFolioReaderManager : RCTViewManager
@end

@implementation RNFolioReaderManager
RCT_EXPORT_VIEW_PROPERTY(resourcePath, NString)
RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[RNFolioReader alloc] init];
}

@end
/*
#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNFolioReader, NSObject)

RCT_EXTERN_METHOD(open:(NSString *)resourcePath)

@end
*/
