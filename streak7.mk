# Dell Streak 7 Make File

$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_NAME := streak7
PRODUCT_DEVICE := streak7
PRODUCT_MODEL := Dell Streak 7
PRODUCT_MANUFACTURER := Dell Inc.
PRODUCT_BRAND := dell

PRODUCT_LOCALES += en_US

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

$(call inherit-product, vendor/dell/streak7/streak7-vendor.mk)
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcm4329/Android.mk)

PRODUCT_COPY_FILES += \
vendor/dell/streak7/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
$(LOCAL_PATH)/files/liba2dp.so:obj/lib/liba2dp.so \
hardware/broadcom/wlan/bcm4329/firmware/fw_bcm4329_abg.bin:system/vendor/firmware/fw_bcm4329_abg.bin


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/root/sbin/texfat.ko:root/sbin/texfat.ko \
    $(LOCAL_PATH)/prebuilts/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/etc/nvram.txt:system/etc/wifi/nvram.txt \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.rc:root/init.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.usb.rc:root/init.streak7.usb.rc \
    $(LOCAL_PATH)/prebuilts/root/ueventd.streak7.rc:root/ueventd.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/ln_named_part:root/sbin/ln_named_part \
    $(LOCAL_PATH)/prebuilts/root/default.prop:root/default.prop \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/prebuilts/etc/vold.fstab:system/etc/vold.fstab \
  $(LOCAL_PATH)/prebuilts/usr/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
  $(LOCAL_PATH)/prebuilts/etc/media_profiles.xml:system/etc/media_profiles.xml \
  $(LOCAL_PATH)/prebuilts/usr/atmel-maxtouch.idc:system/usr/idc/mXT224_touchscreen.idc \
  $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf \
  $(LOCAL_PATH)/prebuilts/etc/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
  $(LOCAL_PATH)/prebuilts/usr/panjit_touch.idc:system/usr/idc/panjit_touch.idc 
    
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilts/etc/asound.conf:system/etc/asound.conf

PRODUCT_PACKAGES += \
    lights.tegra \
    com.android.future.usb.accessory \
    audio.a2dp.default \
    audio.primary.tegra \
    audio_policy.tegra \
    setup_fs \
    libinvensense_mpl \
    libaudioutils \
    tinyplay \
    liba2dp \
    make_ext4fs \
    drmserver \
    libasound \
    recovery_mkfs.vfat \
    mkfs.vfat \
    librs_jni \
    libdrmframework_jni

include frameworks/native/build/tablet-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := device/dell/streak7/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=team-streak \
    ro.modversion=icy-Streak7

