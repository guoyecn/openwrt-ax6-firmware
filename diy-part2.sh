#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.16.1/g' package/base-files/files/bin/config_generate
cat >> target/linux/ipq807x/image/generic.mk <<EOF

define Device/redmi_ax6
        $(call Device/xiaomi_ax3600)
        DEVICE_VENDOR := Redmi
        DEVICE_MODEL := AX6  
        DEVICE_PACKAGES := ipq-wifi-redmi_ax6 uboot-envtools
endef  
TARGET_DEVICES += redmi_ax6

EOF
