#import <shared.h>
//i wish i could use CBABCurve

extern "C" {
    float EDRGetAmbientIlluminance(int32_t param1);
    float EDRGetBrightnessScaler(int param1);
    float EDRGetDisplayBrightness(int param1);
    float EDRGetDisplayBacklightBrightness(int param1);
    float EDRServerGetDisplayBrightnessForDisplay(int64_t param1);
    void EDRServerSetDisplayBrightnessForDisplay(float param1, float param2, float param3, float param4, int64_t param5);
}

%hookf(float, EDRGetAmbientIlluminance, int32_t param1) {
    float ret = %orig;
    NSLog(@"EDRGetAmbientIlluminance: %d, Returned %f", param1, ret);
    return ret;
}

%hookf(float, EDRGetBrightnessScaler, int param1) {
    float ret = %orig;
    NSLog(@"EDRGetBrightnessScaler: %d, Returned %f", param1, ret);
    return ret;
}

%hookf(float, EDRGetDisplayBrightness, int param1) {
    float ret = %orig;
    NSLog(@"EDRGetDisplayBrightness: %d, Returned %f", param1, ret);
    return ret;
}

%hookf(float, EDRGetDisplayBacklightBrightness, int param1) {
    float ret = %orig;
    NSLog(@"EDRGetDisplayBacklightBrightness: %d, Returned %f", param1, ret);
    return ret;
}

%hookf(float, EDRServerGetDisplayBrightnessForDisplay, int64_t param1) {
    float ret = %orig;
    NSLog(@"EDRServerGetDisplayBrightnessForDisplay: %lld, Returned %f", param1, ret);
    return ret;
}

%hookf(void, EDRServerSetDisplayBrightnessForDisplay, float param1, float param2, float param3, float param4, int64_t param5) {
    %orig;
    NSLog(@"EDRServerSetDisplayBrightnessForDisplay: %f, %f, %f, %f, %lld", param1, param2, param3, param4, param5);
}