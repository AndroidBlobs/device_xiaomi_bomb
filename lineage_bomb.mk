# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bomb device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := bomb
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_bomb
PRODUCT_MODEL := M2004J7BC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := bomb
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="bomb-user 10 QP1A.190711.020 V11.0.1.0.QJLCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/bomb/bomb:10/QP1A.190711.020/V11.0.1.0.QJLCNXM:user/release-keys
