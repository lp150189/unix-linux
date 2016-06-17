### Find
- find ~
- find ~ -type d : find all the folders under your home
- find ~ -type d | wc -l : find all the folders under your home, pipe it to the wc which will count how many folder do you have
- find ~ -type f | wc -l : just like the above but this time is only for files
- find ~ -type f  -name "\*.JPG" -size +1M | wc -l
	- find all the files that has name .JPG and size that is greater than 1M
- find . -regex 'bin/(bz|gz|zip)'
	- find all the file that has the names that has the names matched the regex

### Find and logical operators
- Example
	- find ~ \( -type f -not -perm 0600 \) -or \( -type d -not -perm 0700 \)

- Operators and explaination
	- and : just and stuff together
	- or : just or stuff together
	- not : not stuff
	- () : group together

### bind action to your find results
- Action
	- delete: delete all the current matching file
	- ls :  just a  regular ls -l with all the permission and  infos and stuff
	- print : print out--> could not be neccessary 
	- quit: quit once a match has been made
- Example
	- find ~ -type f -name "\*.BAK"
		- delete all the files with the name bak which is backup files

### Bind the user defined action into your find
- exec command {};
- Example
	`find ~ -type f -name "*.md" -exec rm '{}' ';' `
- Instead of exec, you can use -ok which will prom user to perform the command or not

### Make Exec more efficient by using `+` or xargs to execute the whole list only one time
- find ~ -type f -exec ls -l '{}' ';' +
- find ~ -type f | xargs ls -l
