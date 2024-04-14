#import <shared.h>
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

/*
do the same thing above for this:
%hook BrightnessSystemClient
-(id)copyPropertyForKey:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)registerNotificationBlock:(id)arg1  { %log; %orig; }
-(BOOL)setProperty:(id)arg1 forKey:(id)arg2  { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)registerNotificationBlock:(id)arg1 forProperties:(id)arg2  { %log; %orig; }
-(BOOL)isAlsSupported { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)dealloc { %log; %orig; }
-(void)unregisterNotificationForKey:(id)arg1  { %log; %orig; }
-(BOOL)setProperty:(id)arg1 withKey:(id)arg2 andDisplay:(unsigned long long)arg3  { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(id)copyPropertyForKey:(id)arg1 andDisplay:(unsigned long long)arg2  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)registerDisplayNotificationCallbackBlock:(id)arg1  { %log; %orig; }
-(void)unregisterDisplayNotificationBlock { %log; %orig; }
-(void)unregisterPropertyNotificationBlock { %log; %orig; }
-(void)registerNotificationForKey:(id)arg1  { %log; %orig; }
-(void)registerNotificationForKeys:(id)arg1  { %log; %orig; }
-(void)unregisterNotificationForKeys:(id)arg1  { %log; %orig; }
-(void)registerNotificationForKeys:(id)arg1 andDisplay:(unsigned long long)arg2  { %log; %orig; }
-(void)unregisterNotificationForKeys:(id)arg1 andDisplay:(unsigned long long)arg2  { %log; %orig; }
-(void)registerNotificationForKey:(id)arg1 andDisplay:(unsigned long long)arg2  { %log; %orig; }
-(void)unregisterNotificationForKey:(id)arg1 andDisplay:(unsigned long long)arg2  { %log; %orig; }
-(BOOL)setProperty:(id)arg1 withKey:(id)arg2 keyboardID:(unsigned long long)arg3  { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(id)copyPropertyForKey:(id)arg1 keyboardID:(unsigned long long)arg2  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)registerKeyboardNotificationCallbackBlock:(id)arg1  { %log; %orig; }
-(void)unregisterKeyboardNotificationBlock { %log; %orig; }
-(void)registerNotificationForKeys:(id)arg1 keyboardID:(unsigned long long)arg2  { %log; %orig; }
-(void)unregisterNotificationForKeys:(id)arg1 keyboardID:(unsigned long long)arg2  { %log; %orig; }
%end
*/

%hook BrightnessSystemClient
-(void)registerNotificationBlock:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] registerNotificationBlock: %@", arg1);
    %orig;
}
-(BOOL)setProperty:(id)arg1 forKey:(id)arg2  {
    NSLog(@"[BrightnessSystemClient] setProperty: %@ forKey: %@", arg1, arg2);
    BOOL r = %orig;
    NSLog(@"[BrightnessSystemClient] setProperty returned %d", r);
    return r;
}
-(id)init {
    NSLog(@"[BrightnessSystemClient] init");
    id r = %orig;
    NSLog(@"[BrightnessSystemClient] init returned %@", r);
    return r;
}
-(void)registerNotificationBlock:(id)arg1 forProperties:(id)arg2  {
    NSLog(@"[BrightnessSystemClient] registerNotificationBlock: %@ forProperties: %@", arg1, arg2);
    %orig;
}
-(BOOL)isAlsSupported {
    NSLog(@"[BrightnessSystemClient] isAlsSupported");
    BOOL r = %orig;
    NSLog(@"[BrightnessSystemClient] isAlsSupported returned %d", r);
    return r;
}
-(void)dealloc {
    NSLog(@"[BrightnessSystemClient] dealloc");
    %orig;
}
-(void)unregisterNotificationForKey:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] unregisterNotificationForKey: %@", arg1);
    %orig;
}
-(BOOL)setProperty:(id)arg1 withKey:(id)arg2 andDisplay:(unsigned long long)arg3  {
    NSLog(@"[BrightnessSystemClient] setProperty: %@ withKey: %@ andDisplay: %llu", arg1, arg2, arg3);
    BOOL r = %orig;
    NSLog(@"[BrightnessSystemClient] setProperty returned %d", r);
    return r;
}
-(id)copyPropertyForKey:(id)arg1 andDisplay:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] copyPropertyForKey: %@ andDisplay: %llu", arg1, arg2);
    id r = %orig;
    NSLog(@"[BrightnessSystemClient] copyPropertyForKey returned %@", r);
    return r;
}
-(void)registerDisplayNotificationCallbackBlock:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] registerDisplayNotificationCallbackBlock: %@", arg1);
    %orig;
}
-(void)unregisterDisplayNotificationBlock {
    NSLog(@"[BrightnessSystemClient] unregisterDisplayNotificationBlock");
    %orig;
}
-(void)unregisterPropertyNotificationBlock {
    NSLog(@"[BrightnessSystemClient] unregisterPropertyNotificationBlock");
    %orig;
}
-(void)registerNotificationForKey:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] registerNotificationForKey: %@", arg1);
    %orig;
}
-(void)registerNotificationForKeys:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] registerNotificationForKeys: %@", arg1);
    %orig;
}
-(void)unregisterNotificationForKeys:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] unregisterNotificationForKeys: %@", arg1);
    %orig;
}
-(void)registerNotificationForKeys:(id)arg1 andDisplay:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] registerNotificationForKeys: %@ andDisplay: %llu", arg1, arg2);
    %orig;
}
-(void)unregisterNotificationForKeys:(id)arg1 andDisplay:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] unregisterNotificationForKeys: %@ andDisplay: %llu", arg1, arg2);
    %orig;
}
-(void)registerNotificationForKey:(id)arg1 andDisplay:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] registerNotificationForKey: %@ andDisplay: %llu", arg1, arg2);
    %orig;
}
-(void)unregisterNotificationForKey:(id)arg1 andDisplay:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] unregisterNotificationForKey: %@ andDisplay: %llu", arg1, arg2);
    %orig;
}
-(BOOL)setProperty:(id)arg1 withKey:(id)arg2 keyboardID:(unsigned long long)arg3  {
    NSLog(@"[BrightnessSystemClient] setProperty: %@ withKey: %@ keyboardID: %llu", arg1, arg2, arg3);
    BOOL r = %orig;
    NSLog(@"[BrightnessSystemClient] setProperty returned %d", r);
    return r;
}
-(id)copyPropertyForKey:(id)arg1 keyboardID:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] copyPropertyForKey: %@ keyboardID: %llu", arg1, arg2);
    id r = %orig;
    NSLog(@"[BrightnessSystemClient] copyPropertyForKey returned %@", r);
    return r;
}
-(void)registerKeyboardNotificationCallbackBlock:(id)arg1  {
    NSLog(@"[BrightnessSystemClient] registerKeyboardNotificationCallbackBlock: %@", arg1);
    %orig;
}
-(void)unregisterKeyboardNotificationBlock {
    NSLog(@"[BrightnessSystemClient] unregisterKeyboardNotificationBlock");
    %orig;
}
-(void)registerNotificationForKeys:(id)arg1 keyboardID:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] registerNotificationForKeys: %@ keyboardID: %llu", arg1, arg2);
    %orig;
}
-(void)unregisterNotificationForKeys:(id)arg1 keyboardID:(unsigned long long)arg2  {
    NSLog(@"[BrightnessSystemClient] unregisterNotificationForKeys: %@ keyboardID: %llu", arg1, arg2);
    %orig;
}

%end