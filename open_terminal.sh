#!/bin/sh

if ! [ -z $COLORTERM ]; then 
    TERM=$COLORTERM; 
else 
    TERM=$TERM;
fi

$TERM -e "bash -c 'write_to_prompt $@;bash'"

