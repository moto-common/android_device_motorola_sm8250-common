# Copyright (C) 2014 The Android Open Source Project
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

# Platform Path
PLATFORM_COMMON_PATH := device/motorola/sm8250-common

# Platform
KONA := kona
TARGET_BOARD_PLATFORM := $(KONA)
TARGET_KERNEL_VERSION := 4.19
PRODUCT_PLATFORM_MOT := true
PRODUCT_USES_QCOM_HARDWARE := true

# A/B support
AB_OTA_UPDATER := true
PRODUCT_SHIPPING_API_LEVEL := 29

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system_ext \
    system \
    vendor \
    vbmeta \
    vbmeta_system \
    vendor_boot

# Device characteristics
DEVICE_CHARACTERISTICS += ufs

# Dynamic Partitions
TARGET_USES_DYNAMIC_PARTITIONS := true

# ESoC
TARGET_USES_ESOC := true

# Fingerprint
TARGET_USES_FPC_FINGERPRINT := true

# Gatekeeper
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.gatekeeper.disable_spu=true

# Power
PRODUCT_USES_PIXEL_POWER_HAL := true

# QCOM Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcom.bluetooth.soc=hastings

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=10,10

$(call inherit-product, device/motorola/common/common.mk)
$(call inherit-product, vendor/motorola/sm8250-common/sm8250-common-vendor.mk)
