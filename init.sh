#!/usr/bin/bash
#chown -R vision /run/user
#usermod -a -G  $(groups |  awk  '{print $2}') vision
/home/vision/visionclientlauncher/visionclientlauncher.sh ; waitpid $(pidof /home/vision/visionclientlauncher/runtime/bin/java)
