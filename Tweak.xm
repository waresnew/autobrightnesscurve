#import <shared.h>
//i wish i could use CBABCurve
extern "C" id BKSDisplayBrightnessCurveGetCurrent();
extern "C" void IOHIDEventCreateBrightnessEvent();
extern "C" void IOHIDEventCreateAmbientLightSensorEvent();
extern "C" id _BKSHIDGetCurrentDisplayBrightnessCurve(uint param_1, id param_2);
%hookf(id, BKSDisplayBrightnessCurveGetCurrent, void) {
    id ret = %orig;
    NSLog(@"BKSDisplayBrightnessCurveGetCurrent: %@", ret);
    return ret;
}

%hookf(id, _BKSHIDGetCurrentDisplayBrightnessCurve, uint param_1, id param_2) {
    id ret = %orig;
    NSLog(@"_BKSHIDGetCurrentDisplayBrightnessCurve: %d, %@: Returning %@", param_1, param_2, ret);
    return ret;
}

%hookf(void, IOHIDEventCreateBrightnessEvent, id param_1,id param_2,id param_3,id param_4, id param_5,id param_6) {
    NSLog(@"IOHIDEventCreateBrightnessEvent: %@, %@, %@, %@, %@, %@", param_1, param_2, param_3, param_4, param_5, param_6);
    %orig;
}

%hookf(void, IOHIDEventCreateAmbientLightSensorEvent, id param_1,id param_2,id param_3,uint param_4) {
    NSLog(@"IOHIDEventCreateAmbientLightSensorEvent: %@, %@, %@, %d", param_1, param_2, param_3, param_4);
    %orig;
}