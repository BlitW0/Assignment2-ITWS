cat to_replace.txt | tr -s " " | tr " " "\n" | xargs -i mv ./replace/{}.txt ./replace/{}{}.txt 
