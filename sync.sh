#!/bin/bash
ids=$(cut -d "=" -f 1 modlist.txt | paste -sd ";")
names=$(cut -d "=" -f 2 modlist.txt | paste -sd ";")

# edit the servertest.ini file before putting it on server
sed -i "s/Mods=.*/Mods=$names/g" servertest.ini
sed -i "s/WorkshopItems=.*/WorkshopItems=$ids/g" servertest.ini

# now scp this file to your server
scp servertest.ini user@host:/path/to/servertest.ini
