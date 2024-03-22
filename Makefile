FINALPACKAGE = 1
export ARCHS = arm64 arm64e
export TARGET = iphone:clang:15.6
THEOS_PACKAGE_SCHEME=rootless
export SYSROOT = $(THEOS)/sdks/iPhoneOS15.6.sdk
export PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS += Tweak Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
