#!/bin/bash

if [ "$1" == "off" ]; then
  echo "switch off maintenance mode"
  ln -sf /home/deploy/peatio/config/nginx.conf /etc/nginx/conf.d/graviex.conf
  mv /home/deploy/peatio/public/404.html.old /home/deploy/peatio/public/404.html
  service nginx reload
else
  echo "switch on maintenance mode"
  ln -sf /home/deploy/peatio/config/nginx_maintenance.conf /etc/nginx/conf.d/peatio.conf
  mv /home/deploy/peatio/public/404.html /home/deploy/peatio/public/404.html.old
  cp /home/deploy/peatio/public/503.html /home/deploy/peatio/public/404.html
  service nginx reload
fi
