#!/bin/bash
#===============================================
# Description: DIY script
# File name: diy-script.sh
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#===============================================

# 修改默认IP
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=1000000/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.ipv4.udp_wmem_min=6553500' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.ipv4.udp_rmem_min=6553600' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.core.rmem_max=40960000' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.core.wmem_max=40960000' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.core.wmem_default=40960000' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.core.rmem_default=40960000' package/base-files/files/etc/sysctl.conf
