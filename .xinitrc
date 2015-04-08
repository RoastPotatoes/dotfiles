xset s off &         # don't activate screensaver
xset -dpms &        # disable DPMS (Energy Star) features.
xset s noblank &    # don't blank the video device
nitrogen --restore &
setxkbmap us -variant colemak -option ctrl:nocaps &
udiskie -2 &
xrdb -merge ~/.Xresources &
exec ck-launch-session dbus-launch &
#exec i3
xsetroot -cursor_name left_ptr &
exec frankenwm 
