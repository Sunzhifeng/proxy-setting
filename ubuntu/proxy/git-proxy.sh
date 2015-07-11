#!/bin/bash
source proxy.conf

git config --global --unset http.proxy
git config --global --unset https.proxy

git config --global http.proxy "http://$HTTP_PROXY/"
git config --global https.proxy "http://$HTTPS_PROXY/"

