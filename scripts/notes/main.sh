echo "select note type"
ls ~/Notes/ 
read type 

echo "enter note name"
read name

nvim ~/Notes/$type/$name

