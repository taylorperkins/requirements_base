#!/bin/bash
# NOTE: This file runs a sub-script (and therefore, a shell).
#       You must run this script as ". <script>" or "source <script>".
#  	    For example, from your <ROOT>: adm/update_requirements.sh

# Grab the current directory
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define your pip file path. If CURDIR == adm, 
# PIP_FILE == adm/pip_requirements.txt
PIP_FILE=${CURDIR}/pip_requirements.txt

# all pip packages. If the pip file exists..
if [ -f ${PIP_FILE} ]; then	
    echo "Upgrading pip ..."
    # make sure pip is upgraded
    pip install --upgrade pip
    echo "Installing pip packages..."
    # install recursively every package within your pip file
    pip install -r ${PIP_FILE}
fi
