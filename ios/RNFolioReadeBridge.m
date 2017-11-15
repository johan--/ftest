#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNFolioReader, NSObject)

RCT_EXTERN_METHOD(open:(NSString *)resourcePath)

@end
