#
# Copyright (C) 2017 The LineageOS Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dumpling device
$(call inherit-product, device/oneplus/dumpling/device.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# GApps targets
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := yaap_dumpling
PRODUCT_DEVICE := dumpling
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5010

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus5T
TARGET_VENDOR_DEVICE_NAME := OnePlus5T

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5T-user 9 PKQ1.180716.001 1907311828 release-keys"

#PRODUCT_PROPERTY_OVERRIDES += \
# 	ro.build.version.security_patch=2019-08-01

BUILD_FINGERPRINT := OnePlus/OnePlus5T/OnePlus5T:9/PKQ1.180716.001/1907311828:user/release-keys

TARGET_VENDOR := oneplus
