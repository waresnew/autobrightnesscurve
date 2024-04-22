#import <shared.h>
#import <BackBoardServices/BKSDisplayBrightness.h>
//i wish i could use CBABCurve

@interface HIDEvent : NSObject
@end
extern "C" BKSDisplayBrightnessTransactionRef BKSDisplayBrightnessTransactionCreate(CFAllocatorRef);
extern "C" void BKSDisplayBrightnessSet(float, NSInteger);
extern "C" float BKSDisplayBrightnessGetCurrent();
extern "C" void BKSDisplayBrightnessSetAutoBrightnessEnabled(BOOL);
extern "C" mach_msg_return_t _BKSHIDGetCurrentDisplayBrightnessCurve(mach_port_t, id);
extern "C" HIDEvent* IOHIDEventCreateAmbientLightSensorEvent(CFAllocatorRef, uint64_t, int, uint);
extern "C" int BKSHIDServicesAmbientLightSensorExists();
extern "C" mach_msg_return_t _BKSHIDAmbientLightSensorDisableAutoBrightness(uint);
extern "C" void BKSHIDServicesAmbientLightSensorEnableAutoBrightness(int64_t);
//extern "C" mach_msg_return_t _BKSHIDGetBacklightFactor(mach_port_t, id);
extern "C" mach_msg_return_t _BKSHIDSetBacklightFactorWithFadeDuration(int, int, mach_port_t, int, int);
//extern "C" mach_msg_return_t _BKSHIDSetBacklightFactorWithFadeDurationAsync(int, int, mach_port_t, int, int);


//these have been printed
%hookf(BKSDisplayBrightnessTransactionRef, BKSDisplayBrightnessTransactionCreate, CFAllocatorRef param1) {
    NSLog(@"[BKSDisplayBrightnessTransactionCreate] %@", param1);
    return %orig;
}

%hookf(void, BKSDisplayBrightnessSet, float param1, NSInteger param2) {
    NSLog(@"[BKSDisplayBrightnessSet] %f %ld", param1, param2);
    %orig;
}

%hookf(float, BKSDisplayBrightnessGetCurrent) {
    float ret = %orig;
    NSLog(@"[BKSDisplayBrightnessGetCurrent] %f", ret);
    return ret;
}

%hookf(void, BKSDisplayBrightnessSetAutoBrightnessEnabled, BOOL arg1) {
    NSLog(@"[BKSDisplayBrightnessSetAutoBrightnessEnabled] %d", arg1);
    %orig;
}

//the below are testing (rn some of these are cuasing crashes prob bc of wrong type)


%hookf(void, BKSHIDServicesAmbientLightSensorEnableAutoBrightness, int64_t param1) {
    NSLog(@"[BKSHIDServicesAmbientLightSensorEnableAutoBrightness] %lld", param1);
    %orig;
}

// %hookf(mach_msg_return_t, _BKSHIDGetBacklightFactor, mach_port_t param1, id param2) {
//     NSLog(@"[_BKSHIDGetBacklightFactor] %u %@", param1, param2);
//     return %orig;
// }

%hookf(mach_msg_return_t, _BKSHIDSetBacklightFactorWithFadeDuration, int param1, int param2, mach_port_t param3, int param4, int param5) {
    NSLog(@"[_BKSHIDSetBacklightFactorWithFadeDuration] %d %d %u %d %d", param1, param2, param3, param4, param5);
    return %orig;
}

// %hookf(mach_msg_return_t, _BKSHIDSetBacklightFactorWithFadeDurationAsync, int param1, int param2, mach_port_t param3, int param4, int param5) {
//     NSLog(@"[_BKSHIDSetBacklightFactorWithFadeDurationAsync] %d %d %u %d %d", param1, param2, param3, param4, param5);
//     return %orig;
// }