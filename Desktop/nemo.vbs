set shell = CreateObject("WScript.Shell")

comm = "wsl nohup nemo '/mnt/c/Users/Axel F C/Desktop' &>/dev/null"

shell.Run comm,0
