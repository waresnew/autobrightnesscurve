#import <UIKit/UIKit.h>
#import <BrightnessManager.h>

@interface UIDevice (Category)
    @property float _backlightLevel;
@end

@interface SBDisplayBrightnessController : NSObject
    //credits: https://github.com/jschiefner/advanced-brightness-slider-tweak/blob/bfea83dc34f0a00e844ae78247b4f33d4f1ba4bc/ABSManager.xm
    -(void)setBrightnessLevel:(float)arg1 animated:(BOOL)animated;
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

-(id)init {
    if (self = [super init]) {
        _brightnessController = [%c(SBDisplayBrightnessController) new];
    }
    
    return self;
}

-(float)brightness {
    return [[%c(UIDevice) currentDevice] _backlightLevel];
}

-(void)setBrightness:(float)amount {
    [_brightnessController setBrightnessLevel:amount animated:YES];
}
@end