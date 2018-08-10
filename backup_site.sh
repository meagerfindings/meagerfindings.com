#!/bin/sh

date=`date "+%Y-%m-%d-%H_%M"`
TARGET=/Users/matgreten/Documents/meagerfindings/jekyll_site/backups
MEAGERFINDINGS=maul@173.255.253.165:/var/www/meagerfindings.com/
CURRENT=/Users/matgreten/Documents/meagerfindings/jekyll_site/backups/current

rsync -azP --delete --link-dest=$CURRENT $MEAGERFINDINGS $TARGET/$date

rm -r $CURRENT
ln -s $TARGET/$date/ $CURRENT
