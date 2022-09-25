#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6768-common
$(call inherit-product, device/xiaomi/mt6768-common/mt6768.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 29

# SKU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/build_ss_vendor.prop:$(TARGET_COPY_OUT_VENDOR)/build_ss_vendor.prop

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/merlinx/merlinx-vendor.mk)
