#!/bin/sh
# Flatcraft one-click launcher (macOS / Linux)
# Starts a local server and opens the app in the default browser.
cd "$(dirname "$0")" || exit 1
PORT=8765
python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER_PID=$!
sleep 1
URL="http://localhost:$PORT/"
if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL"
elif command -v open >/dev/null 2>&1; then
  open "$URL"
else
  echo "Open $URL in your browser."
fi
echo "Flatcraft server running (PID $SERVER_PID). Press Ctrl+C to stop."
trap 'kill $SERVER_PID' INT TERM
wait $SERVER_PID
