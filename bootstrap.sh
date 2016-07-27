#!/bin/sh

NOTO_SANS_CJKSC_URL="https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKsc-hinted.zip"
ROBOTO_URL="https://github.com/google/roboto/releases/download/v2.134/roboto-unhinted.zip"
SOURCE_SERIF_PRO_URL="https://github.com/adobe-fonts/source-serif-pro/archive/1.017R.zip"
SOURCE_CODE_PRO_URL="https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip"

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
filename=$(basename ${NOTO_SANS_CJKSC_URL})
wget ${NOTO_SANS_CJKSC_URL}
unzip $filename
cp -f *.otf ${FONTDIR}

# Get Roboto
filename=$(basename ${ROBOTO_URL})
folder=${filename%.zip}
wget ${ROBOTO_URL}
unzip $filename
cp -f ${folder}/*.ttf ${FONTDIR}

# Get Source Serif Pro
filename=$(basename ${SOURCE_SERIF_PRO_URL})
folder="source-serif-pro-${filename%.zip}"
wget ${SOURCE_SERIF_PRO_URL}
unzip $filename
cp -f ${folder}/OTF/*.otf ${FONTDIR}

# Get Source Code Pro
filename=$(basename ${SOURCE_CODE_PRO_URL})
folder="source-code-pro-2.030R-ro-${filename%.zip}"
wget ${SOURCE_CODE_PRO_URL}
unzip $filename
cp -f ${folder}/OTF/*.otf ${FONTDIR}

cd -  # back to current folder
rm -rf $TMPDIR

exit 0
