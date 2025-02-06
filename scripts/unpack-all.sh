#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Navigate to ../chat-server/target
cd "$SCRIPT_DIR/../chat-server/target" || {
    echo "Failed to navigate to chat-server/target"
    exit 1
}

echo "Unpacking Chat server."

unzip chat-server.zip

# Copy properties file if it exists
if [[ -f ../config/mycs.properties ]]; then
		echo "Copying custom Chat server properties..."
    cp ../config/mycs.properties ./chat-server/config
fi

echo "Chat server done."

# Navigate to ../../game-server/target
cd "$SCRIPT_DIR/../game-server/target" || {
    echo "Failed to navigate to game-server/target"
    exit 1
}

echo "Unpacking Game server."

unzip game-server.zip

# Copy properties file if it exists
if [[ -f ../config/mygs.properties ]]; then
		echo "Copying custom Game server properties..."
    cp ../config/mygs.properties ./game-server/config
fi

echo "Game server done."

# Navigate to ../../login-server/target
cd "$SCRIPT_DIR/../login-server/target" || {
    echo "Failed to navigate to login-server/target"
    exit 1
}

echo "Unpacking Login server."

unzip login-server.zip

# Copy properties file if it exists
if [[ -f ../config/myls.properties ]]; then
		echo "Copying custom Login server properties..."
    cp ../config/myls.properties ./login-server/config
fi

echo "Login server done."
