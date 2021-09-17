#
# Copyright 2017 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Default device path for tree
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(TARGET_DEVICE)

# Inherit from asus sm8250-common
-include device/$(PRODUCT_BRAND)/$(COMMON_SOC)-common/BoardConfigCommon.mk

# Kernel prebuilts
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)

# TWRP specific build flags
TW_LOAD_VENDOR_MODULES := "focaltech_fts_rog.ko focaltech_fts_rog2.ko"
TW_HAPTICS_TSPDRV := true
