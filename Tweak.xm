#import <shared.h>
//i wish i could use CBABCurve
extern "C" id BKSDisplayBrightnessCurveGetCurrent();
%hookf(id, BKSDisplayBrightnessCurveGetCurrent, void) {
    id ret = %orig;
    NSLog(@"BKSDisplayBrightnessCurveGetCurrent: %@", ret);
    return ret;
}