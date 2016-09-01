# ZG Media

# Ambient CM SDK
PRODUCT_PACKAGES += \
    ambientsdk

ifneq ($(TARGET_PRODUCT),turbo_d802)
# Camera effects
PRODUCT_COPY_FILES +=  \
    audio/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    audio/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# Prebuilts
PRODUCT_COPY_FILES += \
    audio/SpiritF/fm.a2d.sf_111.apk:system/app/SpiritF/SpiritF.apk \
    audio/SpiritF/lib/arm/libbt-hci.so:system/app/SpiritF/lib/arm/libbt-hci.so \
    audio/SpiritF/lib/arm/libjut.so:system/app/SpiritF/lib/arm/libjut.so \
    audio/SpiritF/lib/arm/libs2d.so:system/app/SpiritF/lib/arm/libs2d.so \
    audio/SpiritF/lib/arm/libs2t_bch.so:system/app/SpiritF/lib/arm/libs2t_bch.so \
    audio/SpiritF/lib/arm/libs2t_cus.so:system/app/SpiritF/lib/arm/libs2t_cus.so \
    audio/SpiritF/lib/arm/libs2t_qcv.so:system/app/SpiritF/lib/arm/libs2t_qcv.so \
    audio/SpiritF/lib/arm/libs2t_ssl.so:system/app/SpiritF/lib/arm/libs2t_ssl.so

# F-Droid
PRODUCT_COPY_FILES += \
    audio/FDroid.apk:system/app/FDroid/FDroid.apk

# Screen dimmer
PRODUCT_COPY_FILES += \
    audio/giraffine.dimmer_37.apk:system/app/Dimmer/Dimmer.apk

# QuickPic
PRODUCT_COPY_FILES += \
    audio/com.alensw.PicFolder_159.apk:system/app/QuickPic/QuickPic.apk \
    audio/libqpicjni156.so:system/app/QuickPic/lib/arm/libqpicjni156.so

# Others
PRODUCT_COPY_FILES += \
    audio/com.androits.gps.test.free_47.apk:system/app/AndroitsGPSTest/AndroitsGPSTest.apk \
    audio/com.tengu.sharetoclipboard_8.apk:system/app/ShareToClipboard/ShareToClipboard.apk \
    audio/NOWE/com.pluscubed.matlog_4.apk:system/app/Matlog/Matlog.apk

ifneq ($(TARGET_PRODUCT),turbo_d802)
# Proprietary latinime libs needed for Keyboard swyping
PRODUCT_COPY_FILES += \
    audio/SlimGApps/libjni_latinime.so:system/lib/libjni_latinime.so \
    audio/SlimGApps/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
endif

# AdAway
PRODUCT_COPY_FILES += \
    audio/AdAway.apk:system/app/AdAway/AdAway.apk

# BBS
PRODUCT_COPY_FILES += \
    audio/BetterBatteryStats_xdaedition_2.2.0.0B6.apk:system/priv-app/com.asksven.betterbatterystats_xdaedition.apk

# Material Terminal
PRODUCT_COPY_FILES += \
    audio/NOWE/yarolegovich.materialterminal_8.apk:system/app/MaterialTerminal/MaterialTerminal.apk \
    audio/NOWE/libjackpal-androidterm4.so:system/app/MaterialTerminal/lib/arm/libjackpal-androidterm4.so

# Bootanimation
PRODUCT_COPY_FILES += \
    audio/bootanimation.zip:system/media/bootanimation.zip

# Ringtones
PRODUCT_COPY_FILES += \
    audio/ringtones/Bouncybob.ogg:system/media/audio/ringtones/Bouncybob.ogg \
    audio/ringtones/Safari.ogg:system/media/audio/ringtones/Safari.ogg \
    audio/ringtones/Indian.ogg:system/media/audio/ringtones/Indian.ogg

# Notifications
PRODUCT_COPY_FILES += \
    audio/notifications/W8.ogg:system/media/audio/notifications/W8.ogg \
    audio/notifications/SMS6.ogg:system/media/audio/notifications/SMS6.ogg \
    audio/notifications/BBerry.ogg:system/media/audio/notifications/BBerry.ogg

# UI
PRODUCT_COPY_FILES += \
    audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg \
    audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg

# Fonts Backup
PRODUCT_COPY_FILES += \
    audio/71-fonts.sh:system/addon.d/71-fonts.sh

ifeq ($(TARGET_PRODUCT),cm_d802)
# Remove SetupWizard
PRODUCT_COPY_FILES += \
    audio/60-removal.sh:system/addon.d/60-removal.sh
endif

ifeq ($(TARGET_PRODUCT),turbo_d802)
# Save LCD density
PRODUCT_COPY_FILES += \
    audio/99-devdpi.sh:system/addon.d/99-devdpi.sh
    audio/AmazeFileManager.apk:system/app/AmazeFileManager/AmazeFileManager.apk
endif
