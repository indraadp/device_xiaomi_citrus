#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AncientOS stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
ANCIENT_OFFICIAL := true
FORCE_OTA := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# GApps
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_NAME := ancient_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2010J19CG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="citrus-user 12 SKQ1.211202.001 V13.0.3.0.SJFMIXM release-keys"

BUILD_FINGERPRINT := POCO/citrus_global/citrus:12/SKQ1.211202.001/V13.0.3.0.SJFMIXM:user/release-keys
