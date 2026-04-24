#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PACKAGE_NAME := com.android.camera

# Overlays
PRODUCT_PACKAGES += \
    HyperOSCameraOverlayLeicaed

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/default-permissions-hyperoscamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-hyperoscamera.xml \
    vendor/xiaomi/camera/configs/permissions/hyperoscamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hyperoscamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/camera/configs/permissions/privapp-permissions-hyperoscamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-hyperoscamera.xml

# Properties
TARGET_SYSTEM_PROP += vendor/xiaomi/camera/configs/properties/system.prop
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/properties/system_camera_houji.prop:$(TARGET_COPY_OUT_SYSTEM)/etc/build_camera_houji.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/camera/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/camera/camera-vendor.mk)

