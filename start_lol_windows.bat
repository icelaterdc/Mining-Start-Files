@echo off
title lolMiner ERGO Miner
:RESTART
lolMiner.exe ^
  --algo AUTOLYKOS2 ^
  --pool erg.2miners.com:8888 ^
  --user YOUR_WALLET_ADDRESS.worker1 ^
  --pass x ^
  --intensity 20 ^
  --fanmin 50 ^
  --fanmax 80
echo [ %DATE% %TIME% ] lolMiner çöktü, 10 sn sonra yeniden başlatılıyor...
timeout /t 10 /nobreak >nul
goto RESTART
