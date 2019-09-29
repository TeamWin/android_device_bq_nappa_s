$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/nappa_s/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/bq/nappa/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nappa_s
PRODUCT_NAME := omni_nappa_s
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris VS
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nappa_s
