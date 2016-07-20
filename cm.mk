ifneq ($(wildcard vendor/cm/.),)
# ZG Media
$(call inherit-product, $(LOCAL_PATH)/zg85.mk)

# Device identifier
PRODUCT_NAME := cm_d802

# Inherit some common stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/d802.mk)

# Enable call recording
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay_Dialer

# Enable HardwareWakeKeys
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay_FB

# OTA
PRODUCT_PACKAGES += TurboOTA

# Kernel Adiutor
PRODUCT_PACKAGES += KernelAdiutor

# Dex2Oat
DONT_DEXPREOPT_PREBUILTS := true

# No SD Card
PRODUCT_CHARACTERISTICS := nosdcard
endif
