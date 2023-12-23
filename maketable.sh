walls=$(find ${1} -type f )
for wall in $walls 
do
basename=$(basename $wall|sed 's/\.[^.]*$//' | tr '[:lower:]' '[:upper:]')
echo "|![$wall]($wall)|$basename|"
done

