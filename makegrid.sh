#BUG: the generated rows has extra pipe which can be removed by sed or any regx tool 

walls=$(find ${1} -type f )
count=0
for wall in $walls 
do
  if [ $((count % 3)) -eq 0 ] && [ $count -gt 0 ]; then
        echo ""
    fi
basename=$(basename $wall|sed 's/\.[^.]*$//' | tr '[:lower:]' '[:upper:]')
echo -n "|![$wall]($wall)|$basename|"
    ((count++))
done

