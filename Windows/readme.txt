------------------------------
RTV Scripts for MBII Servers |
by Viserys                   |
------------------------------
Original RTV by klax		 |
All rights reserved.		 |
------------------------------
Thanks to SpaghettiMonster for the original restart scripts.




Instructions (Windows systems):
------------------------------

Place all files into a folder called RTV in your server.
Configure rtvrtm.cfg with your RTV settings, path to log, rconpassword.

------------------------------
Restart Scripts
------------------------------
To use these scripts, you will need to install Python 2.7 in your Windows server. If you can't install this, go down to section "Single Process Allowed".
Download and install Python here: https://www.python.org/ftp/python/2.7.13/python-2.7.13.msi


You have 2 options to start RTV: 
1) Use a simple .bat to start RTV. You will need to close the window manually.
2) Use the PowerShell autorestart scripts.


Option 1:
------------------------------
Simply edit start.bat with the correct path to rtvrtm.py (and python.exe, if different), and run the script.


Option2:
------------------------------
Edit rtv_.ps1 and rtv_start.ps1 with the correct paths to the RTV folder.
Edit the properties of the Start RTV and Stop RTV shortcuts with the correct paths to the rtv_start.ps1 and rtv_stop.ps1 files.
Use the Start RTV and Stop RTV shortcuts to start and stop RTV.
The rtv script will auto-restart in case of a crash.

If you have trouble running the PowerShell scripts, then open a PowerShell window and input this command: "set-executionpolicy remotesigned"


------------------------------
Single Process Allowed
------------------------------
In the case where you can't install Python on your Windows system, or you are only allowed to run a single process (jampded), follow these instructions:

1) Copy the 2 files from the Single_Process_Allowed folder into your RTV folder.
2) Move all files from the RTV folder to Gamedata (where jampded.exe is)
3) Rename jampDed.exe to jampDedS.exe.
4) Rename loader.exe to jampDed.exe.
5) Start your server (jampded.exe). RTV will now be included within the same process.

Be aware that in this case, RTV will run in an older version, which cannot be controlled through server say, and is not compatible with Duel or Legends modes.
