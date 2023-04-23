# PzModSyncer
A bash script that automates syncing your linux server with your own mods. Powershell coming soon maybe!

Usage: 

First go to modlister.sh to create a file that lists all of your mods in ID=Name format so we can easily update your modlist before pushing it to servertest.ini file.
In modlister.sh you are required to define the path to your workshop items. For example: pzworkshoppath=~/.local/share/Steam/steamapps/workshop/content/108600/

After running modlister.sh check which mods you are willing to remove or edit before updating the server file.

Now all that its left is to run sync.sh. For that you need to have a copy of servertest.ini in your directory. To push it on your server you need to update the script with your own server address. 
