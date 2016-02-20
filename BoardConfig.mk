USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := jactivelteskt

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE :=  console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 ehci-hcd.park=3 enforcing=0
BOARD_KERNEL_BASE :=  0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/samsung/jactivelteskt/dtb.img --tags_offset 0x01e00000

BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336 # mmcblk0p14
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488 # mmcblk0p15
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2537553920 # mmclbk0p23
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28226599936 # mmcblk0p25
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/jactivelteskt/kernel

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

TARGET_RECOVERY_DEVICE_MODULES += init.recovery.usb.rc init.recovery.qcom.rc

RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.181/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file

TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

TW_INCLUDE_FB2PNG := true
TW_INCLUDE_L_CRYPTO := true

TW_NO_EXFAT_FUSE := false
TW_NO_EXFAT := false

TW_EXTRA_LANGUAGES := true

GET_RECOVERY_QCOM_RTC_FIX := true

TW_EXCLUDE_DEFAULT_USB_INIT := true

TW_EXCLUDE_SUPERSU := true
