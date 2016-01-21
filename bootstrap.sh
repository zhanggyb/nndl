#!/bin/sh

NOTO_SANS_CJKSC_URL="https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKsc-hinted.zip"
FILENAME=$(basename ${NOTO_SANS_CJKSC_URL})

SYSTEM=`uname -s`

if [ "x$SYSTEM" = "xDarwin" ]; then
  SCRIPTPATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
else
  SCRIPTPATH=$(dirname $(readlink -f "$0"))
fi

TMPDIR=`mktemp -d`
FONTDIR="${SCRIPTPATH}/fonts"

mkdir -p $FONTDIR || exit 1

trap "{ cd -; rm -rf $TMPDIR; exit 255; }" INT

cd $TMPDIR  # switch to temp dir
echo "Change to ${TMPDIR}"

# Get NotoSans
curl -o $FILENAME ${NOTO_SANS_CJKSC_URL}
unzip $FILENAME
cp -f *.otf ${FONTDIR}

cd -  # back to current folder
rm -rf $TMPDIR

exit 0
