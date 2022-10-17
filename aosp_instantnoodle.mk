#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Next Gen Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

PRODUCT_NAME := aosp_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015
CUSTOM_DEVICE := OnePlus8

PRODUCT_SYSTEM_NAME := OnePlus8
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

BUILD_FINGERPRINT := OnePlus/OnePlus8/OnePlus8:12/RKQ1.211119.001/Q.202207300316:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus8Pro \
    TARGET_PRODUCT=OnePlus8Pro \
    PRIVATE_BUILD_DESC="OnePlus8-user 12 RKQ1.211119.001 Q.202207300316 release-keys" \
