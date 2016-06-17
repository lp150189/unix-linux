### cat
1) just display everything in text file

### sort, useful commands
1) `-n` comparing string as numeric 
2) `-r` reverse order( largest to smallest)
3) `-k` sort by columns
4) `-t :` since sort uses the tab, space to be their delimeter, the `-t` gives you control what kind of delimeter you want to use

### uniq
1) removes all the duplicated

### tr: change characters
1) `echo "lowercase letters" | tr a-z A-Z`
	- conver lowercase letters to upper case letters
2) `echo "lowercase letters" | tr [:lower:] A`
3) `echo 'aaabbbccc' | tr -s ab
	- take about all the **consecutive** duplicate of a and b. `-s` stands for squeeze
4) `echo 'aaabbbccc' | tr -sb ab

