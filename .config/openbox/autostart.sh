# This shell script is run before Openbox launches.
# Environment variables set here are passed to the Openbox session.

# Set a background color
xsetroot -solid "#000000"

#
# D-bus
#if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
#       eval `dbus-launch --sh-syntax --exit-with-session`
#fi

# Make GTK apps look and behave how they were set up in the gnome config tools
#if test -x /usr/libexec/gnome-settings-daemon >/dev/null; then
#  /usr/libexec/gnome-settings-daemon &
#elif which gnome-settings-daemon >/dev/null; then
#  gnome-settings-daemon &
# Make GTK apps look and behave how they were set up in the XFCE config tools
#elif which xfce-mcs-manager >/dev/null; then
#  xfce-mcs-manager n &
#fi


# Run XDG autostart things.  By default don't run anything desktop-specific
# See xdg-autostart --help more info
DESKTOP_ENV="OPENBOX"
#if which /usr/lib/openbox/xdg-autostart >/dev/null; then
#  /usr/lib/openbox/xdg-autostart $DESKTOP_ENV
#fi

# keyboard layouts
~/bin/fixkbd &

# mouse sensivity and accelleration
# use "xset q" to get current settings
xset mouse 1/1

# GPU fan speed
# nvclock is disabled because of segfolts
#nvclock -fF 33 &

# urxvt daemon
urxvtd --opendisplay &

# xscreensaver
xscreensaver -no-splash &

# conky
bin/start_conky &
