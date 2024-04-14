#import <shared.h>
#import <CBABCurve.h>
//CustomCurve in CoreBrightness-Structs looks promising
%hook CBABCurve
-(void)setScaleFactor:(float)arg1  {
     NSLog(@"[AutoBrightnessCurve] setScaleFactor: %f", arg1);
     %orig;
}
-(float)scaleFactor {
    float r = %orig;
    NSLog(@"[AutoBrightnessCurve] scaleFactor returned %f", r);
    return r;
}
-(BOOL)setLux:(float)arg1  {
    NSLog(@"[AutoBrightnessCurve] setLux: %f", arg1);
    BOOL r = %orig;
    NSLog(@"[AutoBrightnessCurve] setLux returned %d", r);
    return r;
}
-(void)setLinearBrightnessMin:(float)arg1 andMax:(float)arg2  {
    NSLog(@"[AutoBrightnessCurve] setLinearBrightnessMin: %f andMax: %f", arg1, arg2);
    %orig;
}
-(float)getLux {
    float r = %orig;
    NSLog(@"[AutoBrightnessCurve] getLux returned %f", r);
    return r;
}
-(float)getLinearBrightness {
    float r = %orig;
    NSLog(@"[AutoBrightnessCurve] getLinearBrightness returned %f", r);
    return r;
}
-(float)getScaledBL1 {
    float r = %orig;
    NSLog(@"[AutoBrightnessCurve] getScaledBL1 returned %f", r);
    return r;
}
-(float)getScaledBL2 {
    float r = %orig;
    NSLog(@"[AutoBrightnessCurve] getScaledBL2 returned %f", r);
    return r;
}
-(void)setScaledBL1:(float)arg1  {
    NSLog(@"[AutoBrightnessCurve] setScaledBL1: %f", arg1);
    %orig;
}
-(void)setScaledBL2:(float)arg1  {
    NSLog(@"[AutoBrightnessCurve] setScaledBL2: %f", arg1);
    %orig;
}
-(void)updateALSParametersForDisplayBrightness:(float)arg1  {
    NSLog(@"[AutoBrightnessCurve] updateALSParametersForDisplayBrightness: %f", arg1);
    %orig;
}
-(id)copyUserPrefState {
    id r = %orig;
    NSLog(@"[AutoBrightnessCurve] copyUserPrefState returned %@", r);
    return r;
}
-(void)setSavedPrefences:(id)arg1  {
    NSLog(@"[AutoBrightnessCurve] setSavedPrefences: %@", arg1);
    %orig;
}
%end

