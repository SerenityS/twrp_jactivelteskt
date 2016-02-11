# Release name
PRODUCT_RELEASE_NAME := jactivelteskt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/jactivelteskt/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jactivelteskt
PRODUCT_NAME := cm_jactivelteskt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := jactivelteskt
PRODUCT_MANUFACTURER := samsung
