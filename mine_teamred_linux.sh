while true; do
  ./teamredminer \
    -a ERGO \
    -o stratum+tcp://erg.2miners.com:8888 \
    -u YOUR_WALLET_ADDRESS.worker1 \
    -p x \
    --intensity 20 \
    --fanmin 50 \
    --fanmax 80 \
    --restart-on-error 10
  echo "[ $(date '+%Y-%m-%d %H:%M:%S') ] Miner crashed, restarting after 10 seconds..."
  sleep 10
done
