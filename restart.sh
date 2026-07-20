#!/bin/bash
# ===== Restart Server =====
echo "===== Restarting Server ====="
echo ""

# Kill previous process on port 3000
PID=$(lsof -ti :3000 2>/dev/null)
if [ -n "$PID" ]; then
  echo "Killing previous node processes on port 3000..."
  kill -9 $PID 2>/dev/null
  echo "Killed PID: $PID"
fi

echo ""
echo "Starting server at http://localhost:3000/"
nohup node server.js > /dev/null 2>&1 &
echo "Server restarted (PID: $!)"
