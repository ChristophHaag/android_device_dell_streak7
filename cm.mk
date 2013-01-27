$(call inherit-product, device/dell/streak7/full_streak7.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_streak7
PRODUCT_RELEASE_NAME := Streak7
PRODUCT_DEVICE := streak7
PRODUCT_BRAND := Dell
PRODUCT_MODEL := Streak 7
PRODUCT_MANUFACTURER := Dell Inc.
