xset s off &         # don't activate screensaver
xset -dpms &        # disable DPMS (Energy Star) features.
xset s noblank &    # don't blank the video device


while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &
nitrogen --restore &
setxkbmap gb &
udiskie -2 &
xrdb -merge ~/.Xresources &
exec ck-launch-session dbus-launch &
#exec i3
exec frankenwm
