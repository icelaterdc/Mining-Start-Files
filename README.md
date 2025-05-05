Ergo Mining Scripts – TeamRedMiner & lolMiner
=============================================

Author: IceLater  
Disclaimer: These scripts are provided by IceLater. We are not affiliated with TeamRedMiner, lolMiner, 2Miners, or any other third-party software or pool services. Use at your own risk.

*✍️ IMPORTANT NOTE:* These files show how to incorporate the Ergo coin. If you want to mine a different coin, you can change the parameters, `-a` for TeamRedMiner and `-algo` for lolMiner in the initialization files.

────────────────────────────────────────────────────
CONTENTS
────────────────────────────────────────────────────
1. Overview  
2. Supported Systems  
3. Official Miner Downloads  
4. Folder Structure  
5. Script Descriptions  
6. Configuration Parameters  
7. Usage Instructions  
8. Advanced Options  
9. Troubleshooting & FAQ  
10. Contact & Updates

────────────────────────────────────────────────────
1. Overview
────────────────────────────────────────────────────
This repository contains four ready-to-use startup scripts for mining Ergo (ERG) using TeamRedMiner and lolMiner on Windows and Linux. Key features:
  • Automatic crash recovery (auto-restart)  
  • Configurable mining intensity and fan speed limits  
  • Simple wallet and pool configuration  
  • No hardware specifics—works with any supported GPU setup

────────────────────────────────────────────────────
2. Supported Systems
────────────────────────────────────────────────────
• Windows 10 / 11 (64-bit)  
• Linux distributions with Bash (Ubuntu, Debian, HiveOS, etc.)

────────────────────────────────────────────────────
3. Official Miner Downloads
────────────────────────────────────────────────────
Download the latest releases directly from GitHub:

TeamRedMiner  
  • https://github.com/todxx/teamredminer/releases/latest  

lolMiner  
  • https://github.com/Lolliedieb/lolMiner-releases/releases/latest  

Always verify checksums when provided.

────────────────────────────────────────────────────
4. Folder Structure
────────────────────────────────────────────────────
Place your miner binaries and these scripts together:

    mining-folder/  
    ├── teamredminer(.exe)  
    ├── lolMiner(.exe)  
    ├── start_teamred_windows.bat  
    ├── mine_teamred_linux.sh  
    ├── start_lol_windows.bat  
    └── mine_lol_linux.sh  

────────────────────────────────────────────────────
5. Script Descriptions
────────────────────────────────────────────────────
Each script automates:
  • Connecting to 2Miners Ergo pool ( erg.2miners.com:8888 )  
  • Using the Autolykos2 algorithm for ERG mining  
  • Inserting your wallet address and worker name  
  • Applying default intensity and fan speed settings  
  • Catching crashes and restarting after a delay

Windows scripts use `.bat` loops and timeout; Linux scripts use Bash `while true` loops and `sleep`.

────────────────────────────────────────────────────
6. Configuration Parameters
────────────────────────────────────────────────────
Edit placeholders in the scripts:

• YOUR_ERGO_WALLET → Your Ergo wallet address  
• worker1         → Custom worker/rig identifier  
• x               → Standard password placeholder  

Adjustable settings:
  • intensity (1–24): default 20  
  • fanmin / fanmax (%): default 50 / 80  
  • restart delay (seconds): default 10  

────────────────────────────────────────────────────
7. Usage Instructions
────────────────────────────────────────────────────
Windows:
  1. Place scripts and binaries in one folder.  
  2. Double-click the appropriate `.bat` file.  
  3. Monitor the console for “Accepted” shares.

Linux:
  1. Place scripts and binaries in one folder.  
  2. Run `chmod +x *.sh`.  
  3. Execute `./mine_teamred_linux.sh` or `./mine_lol_linux.sh`.  
  4. Monitor the terminal for shares and hashrate.

────────────────────────────────────────────────────
8. Advanced Options
────────────────────────────────────────────────────
• Logging: enable with miner flags (`--log`, `--logfile`)  
• API: expose local API port (`--api-bind`, `--apiport`)  
• Benchmark mode: test hashrate without mining  
• Failover pools: configure backup endpoints  

────────────────────────────────────────────────────
9. Troubleshooting & FAQ
────────────────────────────────────────────────────
Q: Why use “x” for password?  
A: Most pools ignore the password field; “x” is a universal placeholder.

Q: Miner exits immediately?  
A: Ensure binaries are executable/present and wallet format is correct.

Q: How to stop mining?  
A: Close the console window (Windows) or Ctrl+C (Linux).

For other issues, refer to official miner documentation.

────────────────────────────────────────────────────
10. Contact & Updates
────────────────────────────────────────────────────
Maintained by IceLater.  
For updates or contributions, visit:  
https://github.com/YourGitHubUsername/ergo-mining-scripts  

Thank you for using these scripts. Happy mining!
