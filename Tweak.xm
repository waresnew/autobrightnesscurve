#import <Foundation/NSObjCRuntime.h>
#import <BrightnessManager.h>
#import <UIKit/UIKit.h>
#import <HIDEvent.h>

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
    NSLog(@"[BrightnessCurve] didFinishLaunching");
    [BrightnessManager shared];
    NSLog(@"[BrightnessCurve] BrightnessManager initialized");
}

%hook HIDEvent
    + (id)ambientLightSensorEvent:(unsigned long long)arg1 level:(unsigned int)arg2 options:(unsigned int)arg3 {
        %log;
        return %orig;
    }

    - (void)setAmbientLightSensorIlluminance:(double)arg1 {
        %log;
        %orig;
    }
%end

%ctor {
    CFNotificationCenterAddObserver(
		CFNotificationCenterGetLocalCenter(),
		NULL,
		&didFinishLaunching,
		(CFStringRef) UIApplicationDidFinishLaunchingNotification,
		NULL,
		CFNotificationSuspensionBehaviorDrop
	);
}



/*plan: use public framework https://developer.apple.com/documentation/sensorkit/srsensor/3377673-ambientlightsensor
then just implement my own version of autobrightness by calling setBrightnessLevel() based on the ambient light sensor
*/

//or use CoreBrightness private framework's CBABCurve/CBABCurveConfiguration


