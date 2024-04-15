#import <shared.h>
//Can use CBABCurve maybe in iOS 15?
//SBBacklightPlatformProvider is only in iOS 16 and 17
%hook SBBacklightPlatformProvider
+(BOOL)deviceSupportsAlwaysOn { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)removeObserver:(id)arg1  { %log; %orig; }
-(void)completeInitializationAfterBLSStartup { %log; %orig; }
-(BLSHFlipbookSpecification *)flipbookSpecification { %log; BLSHFlipbookSpecification * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)_updateAlwaysOnEnabled { %log; %orig; }
-(void)setWindowScene:(UIWindowScene *)arg1  { %log; %orig; }
-(BOOL)suppressionSupported { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(BOOL)isUsingAlwaysOnBrightnessCurve { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)_notifyObserversOfSignificantUserInteraction { %log; %orig; }
-(void)addObserver:(id)arg1  { %log; %orig; }
-(BOOL)isAlwaysOnEnabled { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(UIWindowScene *)windowScene { %log; UIWindowScene * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)logTelemetryForRenderSession:(id)arg1  { %log; %orig; }
-(void)setSignificantUserInteractionMonitor:(SBBacklightSignificantUserInteractionMonitor *)arg1  { %log; %orig; }
-(double)backlightFadeInDuration { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
-(id)flipbookTelemetryDelegate { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)initWithBacklightEnvironmentSessionProvider:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)significantUserInteractionMonitorDetectedSignificantUserInteraction:(id)arg1  { %log; %orig; }
-(void)_setBlankingWindowVisible:(BOOL)arg1 fadeDuration:(double)arg2  { %log; %orig; }
-(float)backlightDimmedFactor { %log; float r = %orig; HBLogDebug(@" = %f", r); return r; }
-(void)useAlwaysOnBrightnessCurve:(BOOL)arg1 withRampDuration:(double)arg2  { %log; %orig; }
-(SBAlwaysOnPolicyCoordinator *)alwaysOnPolicyCoordinator { %log; SBAlwaysOnPolicyCoordinator * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(BOOL)isShowingBlankingWindow { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)logTelemetryForInvalidation:(id)arg1  { %log; %orig; }
-(double)backlightFadeOutDuration { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
-(void)logTelemetryForRequestDates:(id)arg1  { %log; %orig; }
-(id)sessionProvider { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)showBlankingWindow:(BOOL)arg1 withFadeDuration:(double)arg2  { %log; %orig; }
-(double)backlightDimmingDuration { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
-(SBBacklightSignificantUserInteractionMonitor *)significantUserInteractionMonitor { %log; SBBacklightSignificantUserInteractionMonitor * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)criticalAssertDidFail:(id)arg1 resetFailure:(id)arg2  { %log; %orig; }
%end