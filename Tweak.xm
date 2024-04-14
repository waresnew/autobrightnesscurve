#import <shared.h>
//CustomCurve in CoreBrightness-Structs looks promising
//the hook works but CBABCurve is never used? (it looks like this is dead code [please say it's not])
%hook CBABCurve
-(id)initWithUUID:(id)arg1  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(void)setScaleFactor:(float)arg1  { %log; %orig; }
-(id)initWithConfiguration:(id)arg1  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(id)init { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(float)scaleFactor { %log; float r = %orig; NSLog(@" = %f", r); return r; }
-(unsigned long long)version { %log; unsigned long long r = %orig; NSLog(@" = %llu", r); return r; }
-(id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(BOOL)setLux:(float)arg1  { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
-(id)initWithUUID:(id)arg1 vendorID:(id)arg2 andProductID:(id)arg3  { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(void)setLinearBrightnessMin:(float)arg1 andMax:(float)arg2  { %log; %orig; }
-(float)getLux { %log; float r = %orig; NSLog(@" = %f", r); return r; }
-(float)getLinearBrightness { %log; float r = %orig; NSLog(@" = %f", r); return r; }
-(float)getScaledBL1 { %log; float r = %orig; NSLog(@" = %f", r); return r; }
-(float)getScaledBL2 { %log; float r = %orig; NSLog(@" = %f", r); return r; }
-(void)setScaledBL1:(float)arg1  { %log; %orig; }
-(void)setScaledBL2:(float)arg1  { %log; %orig; }
-(void)updateALSParametersForDisplayBrightness:(float)arg1  { %log; %orig; }
-(void)resetToDefaultState { %log; %orig; }
-(id)copyUserPrefState { %log; id r = %orig; NSLog(@" = %@", r); return r; }
-(void)setSavedPrefences:(id)arg1  { %log; %orig; }
%end