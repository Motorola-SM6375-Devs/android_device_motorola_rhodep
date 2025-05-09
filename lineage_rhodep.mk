#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rhodep device
$(call inherit-product, device/motorola/rhodep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rhodep
PRODUCT_DEVICE := rhodep
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g82 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhodep_g-user 13 T1SUS33M.1-124-6-14 2ee2d0 release-keys" \
    BuildFingerprint=motorola/rhodep_g/rhodep:13/T1SUS33M.1-124-6-14/2ee2d0:user/release-keys \
    DeviceProduct=rhodep_g
