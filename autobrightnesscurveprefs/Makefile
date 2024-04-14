TARGET := iphone:clang:latest:15.0
ARCHS = arm64e


include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AutoBrightnessCurvePrefs

AutoBrightnessCurvePrefs_FILES = ABCRootListController.m
AutoBrightnessCurvePrefs_FRAMEWORKS = UIKit
AutoBrightnessCurvePrefs_PRIVATE_FRAMEWORKS = Preferences
AutoBrightnessCurvePrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
AutoBrightnessCurvePrefs_INSTALL_PATH = /Library/PreferenceBundles
AutoBrightnessCurvePrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
