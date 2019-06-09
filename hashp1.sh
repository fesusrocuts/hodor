#!/bin/bash
echo "connect server only head"
curl -b cookie.txt -c cookie.txt -I http://158.69.76.135/level5.php
echo "get cookie #1"
cat cookie.txt
echo "connect server only 2 uri"
curl -b cookie.txt -c cookie.txt http://158.69.76.135/tim.php -o "image.png"
echo "get cookie #2"
cat cookie.txt
