#!/bin/sh
 
# sudo ~/dow/bloat/evsieve-1.4.0/target/release/evsieve \
#   --input /dev/input/event18 grab \
#   \
#   --map key:w abs:y:-32767 \
#   --map key:s abs:y:32767 \
#   --map key:a abs:x:-32767 \
#   --map key:d abs:x:32767 \
#   \
#   --map key:t abs:ry:-32767 \
#   --map key:g abs:ry:32767 \
#   --map key:f abs:rx:-32767 \
#   --map key:h abs:rx:32767 \
#   \
#   --map key:up btn:dpad_up \
#   --map key:down btn:dpad_down \
#   --map key:left btn:dpad_left \
#   --map key:right btn:dpad_right \
#   \
#   --map key:j btn:west \
#   --map key:i btn:north \
#   --map key:k btn:south \
#   --map key:l btn:east \
#   \
#   --map key:q btn:tl \
#   --map key:e btn:tl2 \
#   --map key:u btn:tr \
#   --map key:o btn:tr2 \
#   \
#   --map key:enter btn:start \
#   --map key:backspace btn:select \
#   \
#   --output name="Keyboard Gamepad 2"
#

sudo ~/dow/bloat/evsieve-1.4.0/target/release/evsieve \
  --input /dev/input/event19 grab \
  \
  --map key:w:1 abs:y:-32767 \
  --map key:w:0 abs:y:0 \
  --map key:s:1 abs:y:32767 \
  --map key:s:0 abs:y:0 \
  --map key:a:1 abs:x:-32767 \
  --map key:a:0 abs:x:0 \
  --map key:d:1 abs:x:32767 \
  --map key:d:0 abs:x:0 \
  \
  --map key:t:1 abs:ry:-32767 \
  --map key:t:0 abs:ry:0 \
  --map key:g:1 abs:ry:32767 \
  --map key:g:0 abs:ry:0 \
  --map key:f:1 abs:rx:-32767 \
  --map key:f:0 abs:rx:0 \
  --map key:h:1 abs:rx:32767 \
  --map key:h:0 abs:rx:0 \
  \
  --map key:up:1    btn:dpad_up:1 \
  --map key:up:0    btn:dpad_up:0 \
  --map key:down:1  btn:dpad_down:1 \
  --map key:down:0  btn:dpad_down:0 \
  --map key:left:1  btn:dpad_left:1 \
  --map key:left:0  btn:dpad_left:0 \
  --map key:right:1 btn:dpad_right:1 \
  --map key:right:0 btn:dpad_right:0 \
  \
  --map key:j:1 btn:west:1 \
  --map key:j:0 btn:west:0 \
  --map key:i:1 btn:north:1 \
  --map key:i:0 btn:north:0 \
  --map key:k:1 btn:south:1 \
  --map key:k:0 btn:south:0 \
  --map key:l:1 btn:east:1 \
  --map key:l:0 btn:east:0 \
  \
  --map key:q:1 btn:tl:1 \
  --map key:q:0 btn:tl:0 \
  --map key:e:1 btn:tl2:1 \
  --map key:e:0 btn:tl2:0 \
  --map key:u:1 btn:tr:1 \
  --map key:u:0 btn:tr:0 \
  --map key:o:1 btn:tr2:1 \
  --map key:o:0 btn:tr2:0 \
  \
  --map key:enter:1 btn:start:1 \
  --map key:enter:0 btn:start:0 \
  --map key:backspace:1 btn:select:1 \
  --map key:backspace:0 btn:select:0 \
  \
  --output \
    name="Keyboard Gamepad 2" \
    abs:x abs:y abs:rx abs:ry \
    btn:dpad_up btn:dpad_down btn:dpad_left btn:dpad_right \
    btn:west btn:north btn:south btn:east \
    btn:tl btn:tl2 btn:tr btn:tr2 \
    btn:start btn:select
