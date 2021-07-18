# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common H4K3ROM stuff.
$(call inherit-product, vendor/h4k3rom/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

-include device/google/bonito/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bonito
PRODUCT_NAME := h4k3rom_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_BRAND := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 11 RQ3A.210705.001 7380771 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:11/RQ3A.210705.001/7380771:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
