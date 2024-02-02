export TARGET = iphone:latest:14.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = mercariForiOS14Tweak

mercariForiOS14Tweak_FILES = Tweak.x
mercariForiOS14Tweak_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
