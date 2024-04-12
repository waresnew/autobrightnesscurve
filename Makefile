TARGET := iphone:clang:latest:16.0
INSTALL_TARGET_PROCESSES = SpringBoard
export THEOS_PACKAGE_SCHEME=rootless
export ARCHS = arm64e
export SYSROOT=$(THEOS)/sdks/iPhoneOS16.5.sdk
export SDKVERSION=16.5

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BrightnessCurve

BrightnessCurve_FILES = Tweak.x
BrightnessCurve_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += brightnesscurveprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
