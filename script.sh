#!/usr/bin/env bash

# Install the package
opkg install ntp ntpdate
# Optional: set your time zone
# Stop the package
systemctl stop ntpd
# Run manual Update
ntpdate pool.ntp.org
# Restart the package
systemctl start ntpd

echo ‘src/gz angstrom-base http://www.angstrom-distribution.org/feeds/unstable/ipk/glibc/armv7a/base’ > /etc/opkg/angstrom-base.conf
opkg update

