### have his own section becuase it is too powerful

### first example
- `echo "front" | sed 's/front/back'`

### the delimeter is defined after the first command
- `echo "front" | sed 's_front_back'`
	- the `_`came right after `s` so it's a delimeter

### add a number before s to specify the line you want to modify
- `echo "font" | sed '2s/front/back'`
	- this will perform sed at the second line of the string

### another command that is not `s`
- `y` is a command that will perform transliteration,( just like tr)
	- Example: `y/ab/AB`, conver letter a to A, b to B
