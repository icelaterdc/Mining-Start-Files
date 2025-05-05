@echo off
title TeamRedMiner ERGO Miner
:RESTART
teamredminer.exe ^
  -a ERGO ^
  -o stratum+tcp://erg.2miners.com:8888 ^
  -u YOUR_WALLET_ADDRESS.worker1 ^
  -p x ^
  --intensity 20 ^
  --fanmin 50 ^
  --fanmax 80 ^
  --restart-on-error 10
echo [ %DATE% %TIME% ] Miner crashed, restarting after 10 seconds...
timeout /t 10 /nobreak >nul
goto RESTART
