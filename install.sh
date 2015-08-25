#!/bin/bash

FONTS_DIR=$HOME/.fonts
TOP_FONTS=("Menlo-Regular.ttf" "Monaco-Linux.ttf" "DejaVuSansMono.ttf"
"VeraMoBI.ttf"	"VeraMoBd.ttf"	"VeraMoIt.ttf"	"VeraMono.ttf"
)

function die () {
    echo "${@}"
    exit 1
}

cat <<EOF

--------------------------
 Top Programming Fonts!
--------------------------
  - Created and maintained by elg0nz

EOF

# Create font dir if not exists
if [[ ! -e $FONTS_DIR ]]; then
    mkdir $FONTS_DIR || die "Could not make $FONTS_DIR"
fi

for i in ${TOP_FONTS[*]}; do
    echo "Downloading $i"; echo
    curl -O https://github.com/elg0nz/top-programming-fonts/raw/master/$i \
      || die "Fail to download ${i}"
    mv $i $FONTS_DIR || die "Could not install $i"
    echo "Installed $i successfully"; echo
done

cat <<EOF

--------------------------
 Fonts installed! Enjoy!
--------------------------
EOF
