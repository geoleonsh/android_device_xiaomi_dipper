# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/dipper/dipper:8.1.0/OPM1.180713.011/8.5.30:user/release-keys" \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.180713.011 8.5.30 release-keys"
    
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    sys.usb.controller=a600000.dwc3 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    sys.usb.rndis.func.name=gsi \
    sys.usb.rmnet.func.name=gsi

TARGET_VENDOR_PRODUCT_NAME := dipper
TARGET_VENDOR_DEVICE_NAME := dipper
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=dipper PRODUCT_NAME=dipper
