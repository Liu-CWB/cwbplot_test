#!/bin/bash

id="119oK5-Poz7-yVZTMraB7zwY1d75ximEj"
outname="wrfout1"
confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$id -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
echo $confirm
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$confirm&id=$id" -O $outname && rm -rf /tmp/cookies.txt

id="17Sl-1T7Dd3Kx_9L9O9bG6VcSryF5Kwnd"
outname="wrfout2"
confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$id -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
echo $confirm
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$confirm&id=$id" -O $outname && rm -rf /tmp/cookies.txt


id="1ZFhD09eGupUqJsCyvr9cC5YFgeweov0O"
outname="M-A0064-21072000-072.grb2"
confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$id -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
echo $confirm
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$confirm&id=$id" -O $outname && rm -rf /tmp/cookies.txt

id="1wgIwqrO998X6wmbDnBLKGnG6bIDR1lMM"
outname="M-A0064-21072000-084.grb2"
confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$id -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
echo $confirm
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$confirm&id=$id" -O $outname && rm -rf /tmp/cookies.txt

