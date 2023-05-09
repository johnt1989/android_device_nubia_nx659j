# Release name
PRODUCT_RELEASE_NAME := NX659J

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX659J device
$(call inherit-product, device/nubia/NX659J/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/nubia/NX659J/recovery/root,recovery/root)

PRODUCT_NAME := twrp_NX659J
PRODUCT_DEVICE := NX659J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX659J
PRODUCT_MANUFACTURER := nubia
PRODUCT_GMS_CLIENTID_BASE := android-zte