#!/bin/bash
# Uninstall script for hgig
#
# VARS
OKBLUE='\033[94m'
OKRED='\033[91m'
OKGREEN='\033[92m'
OKORANGE='\033[93m'
RESET='\e[0m'


INSTALL_DIR=/usr/share/hgig

echo -e "$OKGREEN + -- --=[This script will uninstall hgig and remove ALL files under $INSTALL_DIR. Are you sure you want to continue?$RESET"
read answer 

rm -Rf /usr/share/hgig/
rm -f /usr/bin/hgig

echo -e "$OKORANGE + -- --=[Done!$RESET"
echo -e "$OKORANGE + -- --=[To run, type 'hgig'! $RESET"
