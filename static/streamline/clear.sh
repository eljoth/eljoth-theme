for fname in $(find $(pwd) -name '*.svg') ; do mv "$fname" "$(echo "$fname" | sed -r 's/\-[0-9]{1,2}.svg/.svg/')" ; done
