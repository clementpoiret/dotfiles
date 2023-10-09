#!/bin/sh

# BLUR="5x4"
# BLUR="2x8"
LOCKARGS=""
IMAGES=""

# Get the list of monitors (e.g.: [eDP-1, DP-1])
MONITORS=$(hyprctl monitors | grep -E '^\s*Monitor' | awk '{print $2}')

for monitor in $MONITORS; do
    echo "Processing monitor: ${monitor}"
    IMAGE="/tmp/screen-$monitor.png"

    # Take a screenshot of the current monitor
    grim -o "$monitor" "$IMAGE"

    # corrupter "$IMAGE" "$IMAGE"
    convert "$IMAGE" -blur "$BLUR" "$IMAGE"
    convert -scale 10% -blur 0x0.5 -resize 1000% "$IMAGE" "$IMAGE"

    LOCKARGS="${LOCKARGS} --image ${monitor}:${IMAGE}"

    IMAGES="${IMAGES} ${IMAGE}"
done

swaylock \
    --hide-keyboard-layout \
    --indicator-radius 100 \
    --indicator-thickness 7 \
    --ring-color cba6f7 \
    --ring-ver-color 89b4fa \
    --ring-wrong-color f38ba8 \
    --ring-clear-color a6e3a1 \
    --key-hl-color 1e1e2e \
    --bs-hl-color eba0ac \
    --text-color 11111b \
    --text-caps-lock-color 11111b \
    --line-color 00000000 \
    --line-ver-color 00000000 \
    --line-wrong-color 00000000 \
    --line-clear-color 00000000 \
    --separator-color 00000000 \
    --inside-color cba6f7 \
    --inside-ver-color 89b4fa\
    --inside-wrong-color f38ba8 \
    --inside-clear-color a6e3a1 \
    --color 1e1e2e80 \
    --indicator-caps-lock \
    ${LOCKARGS}

rm ${IMAGES}
