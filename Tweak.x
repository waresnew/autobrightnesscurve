%hook SBBrightnessControl

-(void)setBrightnessLevel:(float)arg1 forRoute:(long long)arg2  {
    %log;
    %orig;
}

-(void)brightnessController:(id)arg1 performCoordinatedBrightnessChangeForIncrementKeyDown:(BOOL)arg2 decrementKeyDown:(BOOL)arg3  {
    %log;
    %orig;
}

%end

/*plan: use public framework https://developer.apple.com/documentation/sensorkit/srsensor/3377673-ambientlightsensor
then just implement my own version of autobrightness by calling setBrightnessLevel() based on the ambient light sensor
*/

