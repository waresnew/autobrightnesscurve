%hook BKDisplayBrightnessController
+ (id)sharedInstance { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void).cxx_destruct { %log; %orig; }
- (void)systemShellDidFinishLaunching:(id)arg1 { %log; %orig; }
- (void)clientDied:(id)arg1 { %log; %orig; }
- (void)setBacklightFeatures:(id)arg1 forPID:(int)arg2 { %log; %orig; }
- (void)setBacklightLocked:(_Bool)arg1 forReason:(id)arg2 { %log; %orig; }
- (void)setProperty:(id)arg1 forKey:(id)arg2 { %log; %orig; }
- (id)propertyForKey:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)setDisplayBrightnessCurve:(int)displayBrightnessCurve { %log; %orig; }
- (int)displayBrightnessCurve { %log; int r = %orig; NSLog(@" = %d", r); return r; }
- (void)setAutoBrightnessEnabled:(_Bool)arg1 { %log; %orig; }
- (_Bool)isALSSupported { %log; _Bool r = %orig; NSLog(@" = %d", r); return r; }
- (_Bool)isBrightnessLevelControlAvailable { %log; _Bool r = %orig; NSLog(@" = %d", r); return r; }
- (_Bool)isAutoBrightnessAvailable { %log; _Bool r = %orig; NSLog(@" = %d", r); return r; }
- (void)setBrightnessLevel:(float)arg1 reason:(id)arg2 options:(unsigned long long)arg3 { %log; %orig; }
- (float)brightnessLevel { %log; float r = %orig; NSLog(@" = %f", r); return r; }
- (float)unentitledBrightnessLevel { %log; float r = %orig; NSLog(@" = %f", r); return r; }
- (void)setMinimumBrightnessLevel:(float)arg1 fadeDuration:(float)arg2 { %log; %orig; }
- (unsigned char)backlightArchitectureVersion { %log; unsigned char r = %orig; NSLog(@" = %hhu", r); return r; }
- (id)suppressBrightnessNotificationsForReason:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)dealloc { %log; %orig; }
- (id)_initWithBrightnessSystem:(id)arg1 systemShellSentinel:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)debugDescription { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (unsigned long long)hash { %log; unsigned long long r = %orig; NSLog(@" = %llu", r); return r; }
- (Class)superclass { %log; Class r = %orig; NSLog(@" = %@", r); return r; }
%end
