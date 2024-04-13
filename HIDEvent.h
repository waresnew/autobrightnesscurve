@class NSArray;

@interface HIDEvent : NSObject
+ (id)ambientLightSensorEvent:(unsigned long long)arg1 level:(unsigned int)arg2 options:(unsigned int)arg3;
- (void)setAmbientLightSensorIlluminance:(double)arg1;
@end