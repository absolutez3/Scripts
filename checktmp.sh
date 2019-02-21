#!/bin/bash
ls -alR /proc/*/cwd 2> /dev/null | grep tmp
