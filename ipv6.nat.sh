#!/bin/sh
opkg update && opkg install kmod-ipt-nat6

uci set network.globals.ula_prefix="$(uci get network.globals.ula_prefix | sed 's/^./d/')"
uci commit network

uci set dhcp.lan.ra_default='1'
uci commit dhcp
