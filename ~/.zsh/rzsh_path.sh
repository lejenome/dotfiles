#!/usr/bin/zsh
echo $PWD| sed "s,^/,%F{240}, ; s,^%F{240}home/\w*,%F{240}~, ; s,/,%F{2} » %F{240},g"
#i=1
#echo $PWD| sed 's/^\//%F{240}/'| sed 's/^%F{240}home\/\w*/%F{240}~/'| sed -e 's/\//%F{'$i'} \\u00BB %F{240}/g'
#do
#   [[ $((i++)) -gt 0 ]] &&  echo -n "($i)\u00BB"
#    echo -n $d
#done
