#!/bin/bash
# goes though your mods folder located normally in your steam workshop 
pzworkshoppath=~/.local/share/Steam/steamapps/workshop/content/108600/ # or wherever your workshop items are. check pz modding guide if you cant find it
echo "" > modlist.txt
find $pzworkshoppath -name mod.info -type f -exec sh -c 'name=$(grep "^id=" "{}" | cut -d "=" -f 2); id=$(echo "{}" | sed "s|'"$pzworkshoppath"'||" | cut -d "/" -f 1); echo "$id=$name">>modlist.txt' \;
sed -i 's/\r//g' modlist.txt
sed -i '/^$/d' modlist.txt
