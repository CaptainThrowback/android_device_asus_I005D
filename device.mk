# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2019 The OmniRom Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Common path for SOC device trees
COMMON_PATH := device/$(BOARD_VENDOR)/$(COMMON_SOC)-common

# Copy modules for depmod
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/root/vendor/lib/modules/1.1/focaltech_fts_rog.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/focaltech_fts_rog.ko \
    $(COMMON_PATH)/recovery/root/vendor/lib/modules/1.1/focaltech_fts_rog2.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/focaltech_fts_rog2.ko

# Inherit from OEM SOC-common
$(call inherit-product, device/$(BOARD_VENDOR)/$(COMMON_SOC)-common/common.mk)