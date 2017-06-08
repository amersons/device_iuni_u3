# config.mk
#
# Product-specific compile-time definitions.
#

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

-include $(QCPATH)/common/msm7630_surf/BoardConfigVendor.mk

#TARGET_HAVE_HDMI_OUT := true
#if TARGET_GRALLOC_USES_ASHMEM is enabled, set debug.sf.hw=1 in system.prop
TARGET_GRALLOC_USES_ASHMEM := false
#TARGET_USES_OVERLAY := true
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm7630_surf
TARGET_BOOTLOADER_BOARD_NAME := MSM7630_SURF

BOARD_KERNEL_BASE    := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
#Spare size is (BOARD_KERNEL_PAGESIZE>>9)*16
BOARD_KERNEL_SPARESIZE := 128

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_EGL_CFG := device/qcom/$(TARGET_BOARD_PLATFORM)/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 125829120
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5242880
BOARD_CACHEIMAGE_PARTITION_SIZE := 33554432
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 # Not used on msm7630
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

HAVE_CYTTSP_FW_UPGRADE := true

# Signed boot image support
TARGET_BOOTIMG_SIGNED := true
TARGET_NO_RPC := false
TARGET_USES_ION := true

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true