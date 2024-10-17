#!/bin/bash

# Change ownership of the .ssh directory if it exists
if [ -d "/home/developer/.ssh" ]; then
    sudo chown -R developer:developer /home/developer/.ssh
fi

# Run the main command (in your case, sleep infinity or whatever command)
exec "$@"