#import <Foundation/NSObject.h>
@interface BrightnessManager: NSObject
@property (readonly,nonatomic) float iosVersion;
-(void)setBrightness:(float)amount;
-(float)brightness;
-(void)initWithIosVersion:(int)iosVersion;
+ (BrightnessManager*) shared;
@end