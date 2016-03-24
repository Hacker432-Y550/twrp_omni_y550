LOCAL_PATH := device/huawei/y550

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	device/huawei/y550/dt.img:dt.img
	device/huawei/y550/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab
   
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := y550
