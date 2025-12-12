
i=$(echo "poetry|essay|story|program" | rofi -sep '|' -dmenu -p "Select medium")

if [ "$i" = "poetry" ]; then
    nvim ~/Notes/Poetry/tmpn.md
elif [ "$i" = "essay" ]; then
    nvim ~/Notes/Essay/tmpn.md  
elif [ "$i" = "story" ]; then
    nvim ~/Notes/Story/tmpn.md  
elif [ "$i" = "program" ]; then
    nvim ~/Program/  
fi

