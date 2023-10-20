#
# Copyright (C) 2022 The Droidx Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common droidx stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := Droidx_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 9T
PRODUCT_MANUFACTURER := Xiaomi

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# DroidX-UI additions
DROIDX_BUILDTYPE := OFFICIAL
DROIDX_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
