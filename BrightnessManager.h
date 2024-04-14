#import <Foundation/NSObject.h>

@interface BrightnessManager: NSObject
    -(void)setBrightness:(float)amount;
    -(float)brightness;
    -(id)init;
    + (BrightnessManager*) shared;
@end