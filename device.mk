LOCAL_PATH := device/nubia/NX659J

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Vendor
PRODUCT_COPY_FILES += \
	device/nubia/NX659J/recovery/root/system/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom