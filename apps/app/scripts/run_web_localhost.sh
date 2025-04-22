#!/bin/sh
# Run sudo chmod 755 before use.

echo "Start Sever..."
cd build/web || exit
python -m webbrowser -t "http://localhost:8080"
python -m http.server 8080