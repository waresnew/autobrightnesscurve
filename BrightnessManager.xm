#import <UIKit/UIKit.h>
#import <BrightnessManager.h>
@interface UIDevice (Category)
@property float _backlightLevel;
@end
// used in iOS 14+
@interface SBDisplayBrightnessController : NSObject
-(void)setBrightnessLevel:(float)arg1;
-(void)setBrightnessLevel:(float)arg1 animated:(BOOL)animated; // iOS 15+
@end

// used in iOS 13
@interface SBBrightnessController
+(id)sharedBrightnessController;
-(void)setBrightnessLevel:(float)arg1;
@end

@implementation BrightnessManager {
    SBDisplayBrightnessController* _brightnessController;
    float _iosVersion;
}

+(BrightnessManager*)shared {
  static BrightnessManager* shared = nil;
  if (!shared) shared = [[BrightnessManager alloc] init];
  return shared;
}

-(void)initWithIosVersion:(int)iosVersion {
  _iosVersion = iosVersion;
  NSLog(@"[BrightnessCurve] iOS Version: %f", _iosVersion);
  if (iosVersion >= 14) _brightnessController = [%c(SBDisplayBrightnessController) new];
}

-(float)brightness {
  return [[%c(UIDevice) currentDevice] _backlightLevel];
}

//credits: https://github.com/jschiefner/advanced-brightness-slider-tweak/blob/bfea83dc34f0a00e844ae78247b4f33d4f1ba4bc/ABSManager.xm
-(void)setBrightness:(float)amount {
  if (_iosVersion >= 15) [_brightnessController setBrightnessLevel:amount animated:NO];
  else if (_iosVersion >= 14) [_brightnessController setBrightnessLevel:amount];
  else [[%c(SBBrightnessController) sharedBrightnessController] setBrightnessLevel:amount];
}
@end