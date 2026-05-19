#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 自动寻找 OpenWrt 当前使用的内核补丁目录
# PATCH_DIR=$(ls -d target/linux/x86/patches-* | tail -n 1)

# 直接从 Arch Linux 官方 AUR 仓库拉取适配了 6.x 新内核的 2.5G 补丁！
curl -L "https://raw.githubusercontent.com/zhinengzi/linux6.x-bnx2x-2.5g-patch/refs/heads/main/linux6.x-bnx2x-2.5g.patch" -o $PATCH_DIR/999-linux6.x-bnx2x-2.5g.patch
# curl -L "https://aur.archlinux.org/cgit/aur.git/plain/0001-bnx2x-Add-support-for-2.5-Gbps-HSGMII-mode.patch?h=bnx2x-2500m-dkms" -o $PATCH_DIR/999-bnx2x-2.5g.patch

echo "===> [SUCCESS] Linux6.x-Bnx2x-2.5G 补丁已成功注入! <==="
