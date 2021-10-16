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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/10.10.10.1/192.168.50.254/g' package/base-files/files/bin/config_generate
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=32768' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.ipv4.neigh.default.gc_thresh3=131702' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a sysctl net.ipv4.udp_mem="1024000 1024000 1024000"' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a sysctl net.ipv4.udp_rmem_min=51200' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a sysctl net.ipv4.udp_wmem_min=51200' package/base-files/files/etc/sysctl.conf
