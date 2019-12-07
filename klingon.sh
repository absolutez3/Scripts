#!/bin/bash
logger "Running klingon at $(date)"
dnf clean all;
dnf update -y;
freshclam;
flatpak update -y;
