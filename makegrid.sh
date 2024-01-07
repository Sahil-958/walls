walls=$(find ${1} -type f -regex ".*\.\(jpg\|jpeg\|png\|gif\|bmp\)" )
count=0

echo -e "| Wallpaper | Name | Wallpaper | Name | Wallpaper | Name |\n|-----------|------|-----------|------|-----------|------|"

IFS=$'\n'

for wall in $walls 
do
    if [ $((count % 3)) -eq 0 ] && [ $count -gt 0 ]; then
        echo -n "|"
        echo ""
    fi
    basename=$(basename "$wall" | cut -f1 -d'.')
    capitalized_basename="${basename^}"
    final_name=${capitalized_basename//[_-]/ }
    link=${wall// /%20}
    echo -n "|![$link]($link)|$final_name"
    ((count++))
done

