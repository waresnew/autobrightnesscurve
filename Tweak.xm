#import <shared.h>
//i wish i could use CBABCurve
extern "C" int64_t BKSDisplayBrightnessCurveGetCurrent();
extern "C" int64_t IOHIDEventCreateBrightnessEvent(int64_t param_1,int64_t param_2,int param_3,int param_4, int64_t param_5,int64_t param_6);
extern "C" int64_t IOHIDEventCreateAmbientLightSensorEvent(int64_t param_1,int64_t param_2,int param_3,uint param_4);
extern "C" int64_t _BKSHIDGetCurrentDisplayBrightnessCurve(uint param_1, id param_2);
%hookf(int64_t, BKSDisplayBrightnessCurveGetCurrent, void) {
    int64_t ret = %orig;
    NSLog(@"BKSDisplayBrightnessCurveGetCurrent: %lld", ret);
    return ret;
}

%hookf(uint64_t, _BKSHIDGetCurrentDisplayBrightnessCurve, uint param_1, id param_2) {
    uint64_t ret = %orig;
    NSLog(@"_BKSHIDGetCurrentDisplayBrightnessCurve: %d, %@: Returning %llu", param_1, param_2, ret);
    return ret;
}

%hookf(int64_t, IOHIDEventCreateBrightnessEvent, int64_t param_1,int64_t param_2,int param_3,int param_4, int64_t param_5,int64_t param_6) {
    int64_t ret = %orig;
    NSLog(@"IOHIDEventCreateBrightnessEvent: %lld, %lld, %d, %d, %lld, %lld: Returning %lld", param_1, param_2, param_3, param_4, param_5, param_6, ret);
    return ret;
}

%hookf(int64_t, IOHIDEventCreateAmbientLightSensorEvent, int64_t param_1,int64_t param_2,int param_3,uint param_4) {
    int64_t ret = %orig;
    NSLog(@"IOHIDEventCreateAmbientLightSensorEvent: %lld, %lld, %d, %u: Returning %lld", param_1, param_2, param_3, param_4, ret);
    return ret;
}