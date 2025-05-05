while true; do
  ./lolMiner \
    --algo AUTOLYKOS2 \
    --pool erg.2miners.com:8888 \
    --user YOUR_WALLET_ADDRESS.worker1 \
    --pass x \
    --intensity 20 \
    --fanmin 50 \
    --fanmax 80
  echo "[ $(date '+%Y-%m-%d %H:%M:%S') ] lolMiner crashed, restarting after 10 seconds..."
  sleep 10
done
