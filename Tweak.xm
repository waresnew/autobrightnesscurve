#import <shared.h>
//CustomCurve in CoreBrightness-Structs looks promising
%hook CBABCurve //the hook works but CBABCurve is never used?
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

%hook CBAdaptationClient
+(BOOL)supportsAdaptation { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(void)setSupported:(BOOL)arg1  { %log; %orig; }
-(BOOL)supported { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)setEnabled:(BOOL)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)setAdaptationMode:(int)arg1 withPeriod:(float)arg2  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(void)unregisterNotificationForType:(unsigned long long)arg1  { %log; %orig; }
-(void)handleBrightnessSystemNotificationForKey:(id)arg1 withValue:(id)arg2  { %log; %orig; }
-(BOOL)registerNotificationForType:(unsigned long long)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)available { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(id)init { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(id)initWithClientObj:(id)arg1  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(int)getAdaptationMode { %log; int r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)setWeakestAdaptationModeFromArray:(int*)arg1 withLength:(int)arg2 andPeriod:(float)arg3  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(void)dealloc { %log; %orig; }
-(BOOL)registerNotificationCallbackBlock:(id)arg1 withQueue:(id)arg2  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(void)unregisterNotificationCallbackBlock { %log; %orig; }
-(BOOL)getEnabled { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)animateFromWeakestAdaptationModeInArray:(int*)arg1 withLength:(int)arg2 toWeakestInArray:(int*)arg3 withLength:(int)arg4 withProgress:(float)arg5 andPeriod:(float)arg6  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)getStrengths:(float*)arg1 nStrengths:(int)arg2  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(BOOL)overrideStrengths:(float*)arg1 forModes:(int*)arg2 nModes:(int)arg3  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
%end



