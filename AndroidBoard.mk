LOCAL_PATH := $(call my-dir)

file := $(TARGET_ROOT_OUT)/init.thunderc.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/files/init.thunderc.rc | $(ACP)
	$(transform-prebuilt-to-target)


# include the non-open-source counterpart to this file
-include vendor/lge/thunderc/AndroidBoardVendor.mk
