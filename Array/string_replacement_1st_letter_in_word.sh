

##Question
: <<'BLOCK'

**Sample Input**
Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway

**Sample Output**
.amibia .auru .epal .etherlands .ewZealand .icaragua .iger .igeria .orthKorea .orway
BLOCK


count=0

while read -r "line" 
  do 
    ((count=$count+1)) 
    echo $line | sed 's/^././' | tr '\n' ' ' 
done



#echo "$count"


