# Display (values from your Pong PBRP tree)
TARGET_SCREEN_DENSITY := 420
TARGET_SCREEN_HEIGHT := 2412
TARGET_SCREEN_WIDTH := 1080
AERA_THEME := portrait_hdpi
AERA_FRAMERATE := 120
AERA_BRIGHTNESS_PATH := "/sys/devices/platform/soc/ae00000.qcom,cmdss_mdp/backlight/panel0-backlight/brightness"
AERA_MAX_BRIGHTNESS := 4000
AERA_DEFAULT_BRIGHTNESS := 420
AERA_STATUS_ICONS_ALIGN := center
AERA_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone34/temp"
AERA_QCOM_ATS_OFFSET := 1666528204500

# Recovery UI and tools
AERA_DEFAULT_LANGUAGE := en
AERA_EXTRA_LANGUAGES := true
AERA_USE_TOOLBOX := true
AERA_EXCLUDE_APEX := true
AERA_INCLUDE_FASTBOOTD := true
AERA_INCLUDE_NTFS_3G := true
AERA_INCLUDE_FUSE_EXFAT := true
AERA_INCLUDE_FUSE_NTFS := true
AERA_INCLUDE_REPACKTOOLS := true
AERA_INCLUDE_RESETPROP := true
AERA_INCLUDE_LIBRESETPROP := true
AERA_INTERNAL_STORAGE_PATH := "/data/media/0"

# Kernel modules from the installed ROM (touch, haptics, battery)
AERA_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko rproc_qcom_common.ko q6_dlkm.ko qcom_q6v5.ko qcom_q6v5_pas.ko qcom_esoc.ko qcom_sysmon.ko goodix_core.ko fts_tp.ko leds-qpnp-vibrator-ldo.ko haptic.ko qti_battery_charger.ko hwmon.ko"
AERA_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true

# Haptics
AERA_SUPPORT_INPUT_AIDL_HAPTICS := true

# USB
AERA_EXCLUDE_DEFAULT_USB_INIT := true
AERA_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true

AERA_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.vendor.build.fingerprint;ro.build.version.incremental"

TARGET_RECOVERY_DEVICE_MODULES += \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    libdmabufheap \
    libhidlmemory \
    libion \
    libnetutils \
    libexpat \
    vendor.display.config@1.0 \
    vendor.display.config@2.0 \
    libdebuggerd_client
RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.allocator@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libexpat.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdebuggerd_client.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so

# Encryption: keymaster 4.1 forced (see system.prop), as in the PBRP build
AERA_INCLUDE_CRYPTO := true
AERA_INCLUDE_CRYPTO_FBE := true
AERA_INCLUDE_FBE_METADATA_DECRYPT := true
AERA_FORCE_KEYMASTER_VER := true
AERA_DEFAULT_KEYMASTER_VERSION := 4.1

# Debug
TARGET_USES_LOGD := true
AERA_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd strace
RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/debuggerd \
    $(TARGET_OUT_EXECUTABLES)/strace
