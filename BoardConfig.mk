# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# inherit from common hlte
-include device/samsung/hlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := hlte,hltekor,hltektt,hltelgt,hlteskt

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8974
TARGET_LIBINIT_MSM8974_DEFINES_FILE := device/samsung/hltekor/init/init_hlte.cpp

# Kernel
TARGET_KERNEL_CONFIG := lineage_hltekor_defconfig

# NFC
include $(COMMON_PATH)/nfc/bcm2079x/board.mk

# Properties
TARGET_SYSTEM_PROP += device/samsung/hltekor/system.prop

# inherit from the proprietary version
-include vendor/samsung/hltekor/BoardConfigVendor.mk
