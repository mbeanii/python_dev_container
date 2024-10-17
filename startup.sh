#!/bin/bash

# Change ownership of the .ssh directory if it exists
if [ -d "/home/developer/.ssh" ]; then
    chown -R developer:developer /home/developer/.ssh
fi

# Run the main command (in this case, sleep infinity or any other command)
exec "$@"