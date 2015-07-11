#!/bin/bash
source proxy.conf
sudo sed -i.bak '/http[s]::proxy/Id' /etc/apt/apt.conf 
sudo tee -a /etc/apt/apt.conf <<EOF
Acquire::http::proxy "http://$HTTP_PROXY/";
Acquire::https::proxy "http://$HTTPS_PROXY/";
EOF
