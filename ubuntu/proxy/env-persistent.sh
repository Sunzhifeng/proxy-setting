#!/bin/bash
source proxy.conf
sudo sed -i.bak '/http[s]_proxy/Id' /etc/environment
sudo tee -a /etc/environment <<EOF
http_proxy="http://$HTTP_PROXY/"
https_proxy="http://$HTTPS_PROXY/"
no_proxy="$NO_PROXY"
EOF
