TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64e
THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BrightnessCurve
BrightnessCurve_FRAMEWORKS = UIKit
BrightnessCurve_PRIVATE_FRAMEWORKS = CoreBrightness
BrightnessCurve_EXTRA_FRAMEWORKS += Cephei

BrightnessCurve_FILES = $(wildcard *.x *.xm)
BrightnessCurve_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += brightnesscurveprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
