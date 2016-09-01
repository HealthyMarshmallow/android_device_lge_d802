ifneq ($(wildcard vendor/turbo/.),)
# ZG Media
$(call inherit-product, $(LOCAL_PATH)/zg85.mk)

# Device identifier
PRODUCT_NAME := turbo_d802

# Inherit some common stuff
$(call inherit-product, vendor/turbo/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/turbo/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/d802.mk)

# Enable proximity check on wake
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay_Proximity

# Kernel Adiutor
PRODUCT_PACKAGES += KernelAdiutor

# Enable Minikin text layout engine
USE_MINIKIN := true

# QCOM Power HAL
TARGET_POWERHAL_VARIANT := qcom
PRODUCT_PACKAGES += power.msm8974

# No SD Card
PRODUCT_CHARACTERISTICS := nosdcard
endif
