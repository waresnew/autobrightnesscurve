TARGET := iphone:clang:latest:15.0
ARCHS = arm64e


include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = BrightnessCurvePrefs

BrightnessCurvePrefs_FILES = BSCRootListController.m
BrightnessCurvePrefs_FRAMEWORKS = UIKit
BrightnessCurvePrefs_PRIVATE_FRAMEWORKS = Preferences
BrightnessCurvePrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
BrightnessCurvePrefs_INSTALL_PATH = /Library/PreferenceBundles
BrightnessCurvePrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
