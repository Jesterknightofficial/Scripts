file=$(readlink -f "$1")
dir=$(dirname "$file")
base="${file%.*}"

cd "$dir" || exit

case "$file" in 
        *\.ms) refer -PS -e "$file" | groff -me -ms -kejpt -T pdf > "$base".pdf ;;

esac
