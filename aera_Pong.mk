# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

DEVICE_PATH := device/nothing/Pong

$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := Pong
PRODUCT_NAME := twrp_Pong
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065
PRODUCT_MANUFACTURER := nothing
