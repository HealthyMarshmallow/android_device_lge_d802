ifneq ($(wildcard $(ANDROID_BUILD_TOP)/vendor/emotion/.),)
# ZG Media
$(call inherit-product, $(LOCAL_PATH)/zg85.mk)

# Device identifier
PRODUCT_NAME := emotion_d802

# Inherit some common stuff
$(call inherit-product, vendor/emotion/configs/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/emotion/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/d802.mk)

# Enable call recording
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay_Dialer

# Enable HardwareWakeKeys
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay_FB

# Enable Multi-Window
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# OTA
PRODUCT_PACKAGES += EmotionOTA

# Kernel Adiutor
PRODUCT_PACKAGES += KernelAdiutor

# Dex2Oat
DONT_DEXPREOPT_PREBUILTS := true

# G2 Power HAL
TARGET_POWERHAL_VARIANT := none
PRODUCT_PACKAGES += power.g2

# No SD Card
PRODUCT_CHARACTERISTICS := nosdcard

# TWRP
TW_THEME := portrait_hdpi
endif
