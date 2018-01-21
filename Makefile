CPP     = g++
CFLAGS  = -g
RM      = rm -f

default: all

all: write_to_prompt

write_to_prompt: write_to_prompt.cpp
	$(CPP) $(CFLAGS) -o write_to_prompt write_to_prompt.cpp

clean veryclean:
	$(RM) write_to_prompt