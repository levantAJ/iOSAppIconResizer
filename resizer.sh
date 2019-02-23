#!/bin/sh   

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ $(command -v magick) == "" ]]; then
    echo "Installing magick..."
    brew install ImageMagick
fi

GREEN=`tput setaf 2`

echo "${GREEN}Converting icons for Notification"
magick convert $1 -resize 20x20\> icon20.png
magick convert $1 -resize 40x40\> icon20@2x.png
magick convert $1 -resize 60x60\> icon20@3x.png

echo "${GREEN}Converting icons for Settings"
magick convert $1 -resize 29x29\> icon29.png
magick convert $1 -resize 58x58\> icon29@2x.png
magick convert $1 -resize 87x87\> icon29@3x.png

echo "${GREEN}Converting icons for Spotlight"
magick convert $1 -resize 40x40\> icon40.png
magick convert $1 -resize 80x80\> icon40@2x.png
magick convert $1 -resize 120x120\> icon40@3x.png
magick convert $1 -resize 50x50\> icon50.png
magick convert $1 -resize 100x100\> icon50@2x.png

echo "${GREEN}Converting icons for iPhone App"
magick convert $1 -resize 57x57\> icon57.png
magick convert $1 -resize 114x114\> icon57@2x.png
magick convert $1 -resize 120x120\> icon60@2x.png
magick convert $1 -resize 180x180\> icon60@3x.png

echo "${GREEN}Converting icons for iPad App"
magick convert $1 -resize 72x72\> icon72.png
magick convert $1 -resize 144x144\> icon72@2x.png
magick convert $1 -resize 76x76\> icon76.png
magick convert $1 -resize 152x152\> icon76@2x.png

echo "${GREEN}Converting icons for iPad Pro (12.9 inch) App"
magick convert $1 -resize 167x167\> icon83.5@2x.png

echo "${GREEN}Done!!!"