#!/bin/bash

echo "run config file permissions: ${CMD_FILE}"
${CMD_FILE}

# server command.
CMD="java -Xmx${XMX}m -jar /usr/src/minecraft/server.jar nogui"

echo "Attempting to run: ${CMD}"

${CMD}
