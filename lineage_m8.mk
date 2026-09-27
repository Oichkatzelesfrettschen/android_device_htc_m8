#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
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

# Inherit from m8 device
$(call inherit-product, device/htc/m8/device.mk)

# vendor/lineage/config/common.mk adds the su package (/system/xbin/su) only
# when WITH_SU is true on a non-user variant; without it, a userdebug build
# has no su on PATH even though bionic's default PATH includes /system/xbin.
WITH_SU := true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_m8
PRODUCT_DEVICE := m8
PRODUCT_BRAND := htc
PRODUCT_MODEL := m8
PRODUCT_MANUFACTURER := HTC
