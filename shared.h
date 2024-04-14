#import <Foundation/Foundation.h>
@interface CBABCurve : NSObject {
	float currentLux;
	float mappedBrightness;
	float _scaleFactor;
	unsigned long long _version;
}
@property (readonly) unsigned long long version;
@property (assign) float scaleFactor;
-(id)initWithUUID:(id)arg1 ;
-(void)setScaleFactor:(float)arg1 ;
-(id)initWithConfiguration:(id)arg1 ;
-(id)init;
-(float)scaleFactor;
-(unsigned long long)version;
-(id)description;
-(BOOL)setLux:(float)arg1 ;
-(id)initWithUUID:(id)arg1 vendorID:(id)arg2 andProductID:(id)arg3 ;
-(void)setLinearBrightnessMin:(float)arg1 andMax:(float)arg2 ;
-(float)getLux;
-(float)getLinearBrightness;
-(float)getScaledBL1;
-(float)getScaledBL2;
-(void)setScaledBL1:(float)arg1 ;
-(void)setScaledBL2:(float)arg1 ;
-(void)updateALSParametersForDisplayBrightness:(float)arg1 ;
-(void)resetToDefaultState;
-(id)copyUserPrefState;
-(void)setSavedPrefences:(id)arg1 ;
@end