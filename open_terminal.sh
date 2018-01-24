#!/bin/sh

if ! [ -z $COLORTERM ]; then 
    TERM=$COLORTERM; 
else 
    TERM=$TERM;
fi

x-terminal-emulator -x bash -c "write_to_prompt $@;bash"


