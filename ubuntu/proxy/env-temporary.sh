#!/bin/bash
source proxy.conf
unset http_proxy
unset https_proxy
unset no_proxy
export http_proxy="http://$HTTP_PROXY/"
export https_proxy="http://$HTTPS_PROXY/"
export no_proxy="$NO_PROXY"
