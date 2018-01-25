#!/bin/sh

if ! [ -z $COLORTERM ]; then 
    TERM=$COLORTERM; 
else 
    TERM=$TERM;
fi

gnome-terminal -x bash -c "write_to_prompt $@;bash"


