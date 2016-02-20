$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/jactivelteskt/overlay

LOCAL_PATH := device/samsung/jactivelteskt

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_jactivelteskt
PRODUCT_BRAND := Samsung
