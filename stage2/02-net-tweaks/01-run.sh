#!/bin/bash -e

install -v -d						${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d
install -v -m 644 files/wait.conf			${ROOTFS_DIR}/etc/systemd/system/dhcpcd.service.d/

install -v -d                                           ${ROOTFS_DIR}/etc/wpa_supplicant
install -v -m 600 files/wpa_supplicant.conf             ${ROOTFS_DIR}/etc/wpa_supplicant/
sed -i "s/WIFI_SSID/${WIFI_SSID}/"  ${ROOTFS_DIR}/etc/wpa_supplicant/wpa_supplicant.conf
sed -i "s/WIFI_PSK/${WIFI_PSK}/"    ${ROOTFS_DIR}/etc/wpa_supplicant/wpa_supplicant.conf
