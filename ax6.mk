
define Device/redmi_ax6
        $(call Device/xiaomi_ax3600)
        DEVICE_VENDOR := Redmi
        DEVICE_MODEL := AX6
        DEVICE_PACKAGES := ipq-wifi-redmi_ax6 uboot-envtools
endef
TARGET_DEVICES += redmi_ax6
