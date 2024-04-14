#import <shared.h>
%hook CBABCurve
-(void)setScaleFactor:(float)arg1  {
     HBLogDebug(@"[AutoBrightnessCurve] setScaleFactor: %f", arg1);
     %orig;
}
-(float)scaleFactor {
    float r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] scaleFactor returned %f", r);
    return r;
}
-(BOOL)setLux:(float)arg1  {
    HBLogDebug(@"[AutoBrightnessCurve] setLux: %f", arg1);
    BOOL r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] setLux returned %d", r);
    return r;
}
-(void)setLinearBrightnessMin:(float)arg1 andMax:(float)arg2  {
    HBLogDebug(@"[AutoBrightnessCurve] setLinearBrightnessMin: %f andMax: %f", arg1, arg2);
    %orig;
}
-(float)getLux {
    float r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] getLux returned %f", r);
    return r;
}
-(float)getLinearBrightness {
    float r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] getLinearBrightness returned %f", r);
    return r;
}
-(float)getScaledBL1 {
    float r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] getScaledBL1 returned %f", r);
    return r;
}
-(float)getScaledBL2 {
    float r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] getScaledBL2 returned %f", r);
    return r;
}
-(void)setScaledBL1:(float)arg1  {
    HBLogDebug(@"[AutoBrightnessCurve] setScaledBL1: %f", arg1);
    %orig;
}
-(void)setScaledBL2:(float)arg1  {
    HBLogDebug(@"[AutoBrightnessCurve] setScaledBL2: %f", arg1);
    %orig;
}
-(void)updateALSParametersForDisplayBrightness:(float)arg1  {
    HBLogDebug(@"[AutoBrightnessCurve] updateALSParametersForDisplayBrightness: %f", arg1);
    %orig;
}
-(id)copyUserPrefState {
    id r = %orig;
    HBLogDebug(@"[AutoBrightnessCurve] copyUserPrefState returned %@", r);
    return r;
}
-(void)setSavedPrefences:(id)arg1  {
    HBLogDebug(@"[AutoBrightnessCurve] setSavedPrefences: %@", arg1);
    %orig;
}
%end

//plan: use CoreBrightness private framework's CBABCurve


