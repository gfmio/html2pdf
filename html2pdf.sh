#!/bin/sh

# HTML2PDF

# Parameters and defaults

srcFile=$1
if [[ $srcFile == "" ]]; then
	echo "Source file or URL not provided."
	exit
fi

outFile=$2
if [[ $outFile == "" ]]; then
	echo "Output file not provided."
	exit
fi

width=$3
if [[ $width == "" ]]; then
	width=1920
fi

height=$4
if [[ $height == "" ]]; then
	height=1080
fi

# Constants for internal use, based on working config on Mac OS X Yosemite. Might be different for your system.

# Scaling factor required to get the right PDF size for width and height set above
scalingFactor="100 / 6"
# Zoom factor for the webkit engine to render the document as desired.
zoomFactor=1.25

# Testing prerequisites

# Testing for wkhtmltopdf
wkhtmltopdfFound=`which wkhtmltopdf`
if [[ wkhtmltopdfFound == "wkhtmltopdf not found" ]]; then
	echo "wkhtmltopdf is not installed"
	exit
fi

# Script execution

# Remove existing output file
if [ -f $outFile ]; then
	rm $outFile
fi

w=$(( $width * $scalingFactor ))
h=$(( $height * $scalingFactor ))

wkhtmltopdf --use-xserver --page-width "$w"px --page-height "$h"px -B 0 -L 0 -R 0 -T 0 --zoom $zoomFactor $srcFile $outFile

exit
