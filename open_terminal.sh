#!/bin/sh

echo $@
gnome-terminal -e "bash -c './../write_to_prompt $@;bash'"
