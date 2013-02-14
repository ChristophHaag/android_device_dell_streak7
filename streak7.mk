# Dell Streak 7 Make File

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/etc/nvram.txt:system/etc/wifi/nvram.txt \
    $(LOCAL_PATH)/prebuilts/etc/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.rc:root/init.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/fstab.streak7:root/fstab.streak7 \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.usb.rc:root/init.streak7.usb.rc \
    $(LOCAL_PATH)/prebuilts/root/ueventd.streak7.rc:root/ueventd.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/sbin/ln_named_part:root/sbin/ln_named_part \
    $(LOCAL_PATH)/prebuilts/bin/checkifmodemexists.sh:system/bin/checkifmodemexists.sh \
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
  $(LOCAL_PATH)/prebuilts/etc/gps.conf:system/etc/gps.conf \
  $(LOCAL_PATH)/prebuilts/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
  $(LOCAL_PATH)/prebuilts/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
  $(LOCAL_PATH)/prebuilts/usr/panjit_touch.idc:system/usr/idc/panjit_touch.idc 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

    
PRODUCT_PACKAGES += \
    lights.streak7 \
    sensors.streak7 \
    com.android.future.usb.accessory \
    libinvensense_mpl \
    drmserver \
    librs_jni \
    libdrmframework_jni

#File System
PRODUCT_PACKAGES += \
    setup_fs \
    make_ext4fs \

PRODUCT_PACKAGES += \
    libpkip \
    CMFileManager \
    libnetcmdiface \
    wmiconfig

#Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.primary.streak7 \
    libaudioutils \
    liba2dp \
    libasound \
    libtinyalsa \
    tinyplay \
    tinycap \
    tinymix \
    rild \
    libhuaweigeneric-ril

#Wifi
PRODUCT_PACKAGES += \
    fw_bcm4329.bin \
    fw_bcm4329_apsta.bin

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	persist.sys.strictmode.visual=0

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.visual=0

DEVICE_PACKAGE_OVERLAYS := device/dell/streak7/overlay
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
