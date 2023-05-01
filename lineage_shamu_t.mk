# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit proprietary files
$(call inherit-product, vendor/motorola/shamu_t/shamu_t-vendor.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_shamu_t
PRODUCT_DEVICE := shamu_t
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto X Pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu_t