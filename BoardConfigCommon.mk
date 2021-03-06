# Copyright (C) 2013 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8930
-include device/samsung/msm8930-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/melius-common/include

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/msm8930-common
TARGET_KERNEL_CONFIG         := cyanogen_melius_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/samsung/melius-common/rootdir/fstab.qcom
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/lcd/panel/panel/brightness\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5821660160
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/melius-common/bluetooth

# NFC
BOARD_NFC_HAL_SUFFIX := msm8960

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Use seperate speakerphone device
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# Use seperate devices for VOIP
BOARD_USES_SEPERATED_VOIP := true

# Use seperate headset mic
BOARD_USES_SEPERATED_HEADSET_MIC := true

# Use USB Dock Audio
BOARD_HAVE_DOCK_USBAUDIO := true

# Allow suspend in charge mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Camera
TARGET_NEED_CAMERA_ZSL := true
TARGET_NEED_FFC_PICTURE_FIXUP := true
TARGET_NEED_FFC_VIDEO_FIXUP := true
TARGET_NEED_DISABLE_FACE_DETECTION := true
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom

#TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_FUSE_EXFAT := true

# Enable SELinux (> Android 4.3)
HAVE_SELINUX := true

# Brightness
TW_BRIGHTNESS_PATH := "/sys/devices/platform/msm_fb.526337/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TW_INCLUDE_FB2PNG := true

# Prevent greyish screen after screen timeout
TW_NO_SCREEN_TIMEOUT := true

# Custom RIL class
BOARD_RIL_CLASS := ../../../device/samsung/melius-common/ril/

