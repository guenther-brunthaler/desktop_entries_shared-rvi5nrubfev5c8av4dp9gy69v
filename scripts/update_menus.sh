#! /bin/sh
# Version 2019.311
# Copyright (c) 2019 Guenther Brunthaler. All rights reserved.
#
# This script is free software.
# Distribution is permitted under the terms of the GPLv3.

# $XDG_DATA_HOME defines the base directory relative to which user specific
# data files should be stored. If $XDG_DATA_HOME is either not set or empty, a
# default equal to $HOME/.local/share should be used.
: ${XDG_DATA_HOME:="$HOME"/.local/share}

xdg-desktop-menu forceupdate
update-desktop-database -- "$XDG_DATA_HOME"/applications
update-mime-database -- "$XDG_DATA_HOME"/mime
update-menus
