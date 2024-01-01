#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from PLE device
$(call inherit-product, device/nokia/PLE/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := nokia
PRODUCT_DEVICE := PLE
PRODUCT_MANUFACTURER := nokia
PRODUCT_NAME := lineage_PLE
PRODUCT_MODEL := Nokia 6

PRODUCT_GMS_CLIENTID_BASE := android-nokia
TARGET_VENDOR := nokia
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="TA-1021_00WW-user 9 PKQ1.181105.001 00WW_6_12H release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/TA-1021_00WW/PLE:9/PKQ1.181105.001/00WW_6_12H:user/release-keys
