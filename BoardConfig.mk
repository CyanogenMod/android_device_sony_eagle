# Copyright 2014 The Android Open Source Project
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

include device/sony/msm8226-common/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := D2303

# Kernel properties
TARGET_KERNEL_CONFIG := cm_yukon_eagle_lte_defconfig
TARGET_DTB_EXTRA_FLAGS := --force-v2

# Assert
TARGET_OTA_ASSERT_DEVICE := D2303,eagle

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1962934272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5461000192

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/eagle/rootdir/fstab.yukon
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
BOARD_RECOVERY_SWIPE := true