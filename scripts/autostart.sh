#!/bin/bash
set -e
cd "$(dirname "$0")"
cd ..
rm -fr .backup/autostart/*
cp ${HOME}/.config/autostart/* .backup/autostart/