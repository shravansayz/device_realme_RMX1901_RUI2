#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common DerpFest stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_NOT_USES_BLUR := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ICONS := true

$(call inherit-product, vendor/derp/config/common_full_phone.mk)


# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)




PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := derp_RMX1901
PRODUCT_MODEL := RMX1901

PRODUCT_SYSTEM_NAME := RMX1901
PRODUCT_SYSTEM_DEVICE := RMX1901

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1901-user 11 RKQ1.201217.002 1626947099367 release-keys" \
    TARGET_DEVICE=RMX1901 \
    TARGET_PRODUCT=RMX1901

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Realme/RMX1901/RMX1901:11/RKQ1.201217.002/1626947099367:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
