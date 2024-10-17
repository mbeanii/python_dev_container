#!/bin/bash

# Check if SSH keys exist on the host and copy them
if [ -d "/host/.ssh" ]; then
    cp -r /host/.ssh /home/developer/
    chown -R developer:developer /home/developer/.ssh
fi

# Run the main command
exec "$@"