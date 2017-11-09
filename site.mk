GLUON_SITE_PACKAGES := \
  gluon-mesh-batman-adv-15 \
  gluon-respondd \
  gluon-autoupdater \
  gluon-config-mode-autoupdater \
  gluon-config-mode-contact-info \
  gluon-config-mode-core \
  gluon-config-mode-geo-location \
  gluon-config-mode-hostname \
  gluon-config-mode-mesh-vpn \
  gluon-ebtables-filter-multicast \
  gluon-ebtables-filter-ra-dhcp \
  gluon-web-admin \
  gluon-web-autoupdater \
  gluon-web-portconfig \
  gluon-web-wifi-config \
  gluon-web-mesh-vpn-fastd \
  gluon-mesh-vpn-fastd \
  gluon-radvd \
  gluon-setup-mode \
  gluon-status-page \
  haveged \
  iptables \
  iwinfo \

ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
  kmod-usb-core \
  kmod-usb2 \
  kmod-usb-hid \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-dm9601-ether \
  kmod-r8169 \
  vnstat
endif

DEFAULT_GLUON_RELEASE := TAG-STARTDATE
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= de en fr

GLUON_TARGET ?= ar71xx-generic
GLUON_BRANCH := stable

GLUON_ATH10K_MESH ?= ibss
