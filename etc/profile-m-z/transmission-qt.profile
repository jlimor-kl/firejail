# Firejail profile for transmission-qt
# Description: Fast, easy and free BitTorrent client (Qt GUI)
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include transmission-qt.local
# Persistent global definitions
include globals.local

private-bin transmission-qt

# If you need native notifications, add the next lines to your transmission-qt.local.
#ignore dbus-user none
#dbus-user filter
#dbus-user.own com.transmissionbt.Transmission.*
#dbus-user.talk org.freedesktop.Notifications

# For system tray support, add the next lines to your transmission-qt.local.
#ignore dbus-user none
#dbus-user filter

?ALLOW_TRAY: dbus-user.talk org.kde.StatusNotifierWatcher

ignore memory-deny-write-execute

# Redirect
include transmission-common.profile
