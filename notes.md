### export vs declare
1) Declare will make the constant or variable visible to the shell process
2) Export will make the constant or variable visible to the shell process and all the children of that shell
3) In a sense, declare is like a child of export. 
4) Export is used in environment settings alot

### Declaring a varible
1) use no space. That is a must
	a=z

### curly braces `{}`
1) is used for variable's names that becomes ambiguous due to surrounding context
	 - Example: if you want to have a variable called something $foo+bar
		- `"${foo}bar"` will help, it would take in a variable that has refernce to `foo` and add bar in there

### Output redirection
1) `who > users`
	- will put everything from who to users file( you can `cat users to see report`)
	- This will delete the old file and create a new if neccessary 
2) `who >> users`
	-This won't delete the file but append at the end

### Input redirection
1) `wc -l < users`

### Here document
1) A here document is used to redirect input into an **interactive shell** script or program
2) We can run an interactive program within a shellscript without user action by supplying the required input for the interactive program, or interactive shell script
3) Format
```
command << delimeter
document
delimeter
```
4) Example
```
cat here.sh
#!/bin/sh

filename=test.txt
vi $filename <<EndOfCommands
i
This file was created automatically
from a shellscript
^[
ZZ
EndOfCommands]>>
```
	
### Discard the output
1) `command > dev/null`

### Shell Functions
1)
```
function name {
	commands
	return
}
```
2)
```
function name {
	commands
	return
}
```
3) In order for shell functions to be recognized, they need to be declared before they got called
4) you can actually add shell functions inside of your zshrc or bashrc files to have a more complex command comparing to the alias
5) shell functions doesn't let you pass shit in there, you have to use `$1` `$2` `$3` `$4`

### if statment
```
x=5 
if [ $x = 5 ]; then
	echo "x equals 5. "
else 
	echo "x does not equal 5 "
fi
```
