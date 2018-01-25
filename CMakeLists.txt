cmake_minimum_required(VERSION 3.0)
project(write_to_prompt)

###############################################################################
## target definitions #########################################################
###############################################################################

# add the data to the target, so it becomes visible in some IDE
add_executable(write_to_prompt write_to_prompt.cpp)

# just for example add some compiler flags
target_compile_options(write_to_prompt PUBLIC -std=c++1y -Wall)

###############################################################################
## packaging ##################################################################
###############################################################################

# all install commands get the same destination. this allows us to use paths
# relative to the executable.
install(TARGETS write_to_prompt DESTINATION /usr/bin)
