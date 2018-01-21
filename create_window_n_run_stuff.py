#!/usr/bin/env python3

import re
import os
import i3ipc


i3 = i3ipc.Connection()


def create_terminal_with_input(prompt):
    command_string = "exec i3-sensible-terminal" \
        " -e bash {}/open_terminal.sh \"{}\"".format(os.path.dirname(os.path.realpath(__file__)), prompt)

    print(command_string)
    x = i3.command(command_string)
    return x


def next_workspace_id():
    workspaces = i3.get_workspaces()
    numbered_workspaces = filter(lambda w: w.name[0].isdigit(), workspaces)
    numbers = list(map(lambda w: int(re.search(r'^([0-9]+)', w.name).group(0)), numbered_workspaces))

    print(numbers)
    new = 0

    for i in range(1, max(numbers) + 2):
        if i not in numbers:
            new = i
            break

    return new


if __name__ == '__main__':
    i3.command("workspace {};".format(next_workspace_id()))
    print(create_terminal_with_input("echo Hello World"))
    print(create_terminal_with_input("tail -f /var/log/syslog"))
