#import <BKDisplayBrightnessController.h>
%hook BKDisplayBrightnessController
- (void)setBrightnessLevel:(float)arg1 reason:(id)arg2 options:(unsigned long long)arg3 {
    %log;
    %orig;
}

%end

//looking at brightnesscurve