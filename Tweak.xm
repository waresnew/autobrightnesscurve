#import <shared.h>
#import <BackBoardServices/BKSDisplayBrightness.h>
//i wish i could use CBABCurve

extern "C" BKSDisplayBrightnessTransactionRef BKSDisplayBrightnessTransactionCreate(CFAllocatorRef);
extern "C" void BKSDisplayBrightnessSet(float, NSInteger);
extern "C" float BKSDisplayBrightnessGetCurrent();
extern "C" void BKSDisplayBrightnessSetAutoBrightnessEnabled(BOOL);


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