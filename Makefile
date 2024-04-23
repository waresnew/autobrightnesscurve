TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard backboardd
ARCHS = arm64e
THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AutoBrightnessCurve
AutoBrightnessCurve_FRAMEWORKS = UIKit
AutoBrightnessCurve_PRIVATE_FRAMEWORKS = libEDR BackBoardServices
AutoBrightnessCurve_EXTRA_FRAMEWORKS += Cephei

AutoBrightnessCurve_FILES = $(wildcard *.x *.xm)
AutoBrightnessCurve_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += autobrightnesscurveprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
