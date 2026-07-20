#!/bin/bash
echo "Killing node processes on port 3000..."

PID=$(lsof -ti :3000 2>/dev/null)
if [ -n "$PID" ]; then
  kill -9 $PID 2>/dev/null
  echo "Killed PID: $PID"
else
  echo "No process found on port 3000."
fi
