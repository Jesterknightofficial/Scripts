cd ~/
sh ~/scripts/autom/compiler.sh 


sleep 3s

cd ~/Documents/ 
zathura $(du -a *.pdf | awk '{print $2}' | fzf)

