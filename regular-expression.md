### grep on multiple files
- `grep names dirlist*.txt`
	- this will search all the names inside of all the dirlist files like dirlist1, dirlist2

### grep things that are not matched
- `grep -L names dirlist*.txt`
	- this will produce all the files that doesn't have the match `names`

### meta characters
- `^ $ . [] {} - ? * + () | \ `

### The Dot character
- `grep -h '.zip' dirlist*.txt`
	- this will grep for anything zip and a character in front of it

### The Anchor characters `^,$`
- Same symbols as vim for beginning and the end
	 - `grep -h '^zip' dirlist*.txt`
		- we use single quote to make sure the shell doesn't expand any metacharacters

### Bracket Expression
- Specify a set of characters to be matched
	- `grep -h '[bg]zip' dirlist*.txt`
		- this will search for all the string that has b or g followed by word `zip`

### Negation
- `grep -h '[^bg]zip' dirlist*.txt`
	- the charcter ^ in the bracket expression means negations

### Traditional Character Ranges
- `grep -h '^[A-Z]' dirlist*.txt`
- `grep -h '^[A-Za-z0-9]' dirlist*.txt`

### Find out what locale is your system
- `locale`
- `echo $LANG`

### the POSIX character Classes
- [:alnum:] 

### alternate which is or 
- using characters `|`

### Quantifiers
- `?` one time
- `*` match zero or more times
- `+` match one or more times

### specify number of matches
- `{n}` match the preceding element exact n times
- `{n,m}` match the preceding element if it occur at least n times but no more than m times
- `{n,}`
- `{,m}`
