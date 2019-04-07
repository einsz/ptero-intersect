RUNVERSION="$1"
PORT="$2"

source /home/container/version
if [ "$SERVERVERSION" != "$RUNVERSION" ]; then
  yes | mono "Intersect Migration Tool.exe"
  echo "SERVERVERSION="$RUNVERSION > /home/container/version
fi

mono "Intersect Server.exe" port=$PORT nohalt noupnp alpine
