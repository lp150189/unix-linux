### nl
- number of lines

### fold
- echo "nananananana annana nana "  | fold -w 12
	- this will cut the line with 12 characters

### fmt : programs that folds text plux a lot more
- `fmt -w 50 -p '# ' fmt-code.txt
	- this will fold all the comments in a shellscript when the length is 50

### pr format text for printing
- `pr -l 50 -w 65 distros.txt`
	- format the text file into pages in which length is 25 and width is 65

### printf

