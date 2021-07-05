# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common H4K3ROM stuff.
$(call inherit-product, vendor/h4k3rom/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sargo
PRODUCT_NAME := h4k3rom_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_BRAND := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 11   release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:11/RQ3A.210605.005/7349499:user/release-keys

# H4K3ROM Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="Ron H. (Siluxsept)"

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)
