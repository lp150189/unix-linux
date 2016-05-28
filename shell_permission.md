#### How to learn about yourself and what groups are you belong in 
1) `id`

### Where are user account are defined in 
1) /etc/passwd

### Where are groups are defined in 
1) /etc/group

### Explanation about the first 10 characters when you do ls -l
1) -rw-rw-r-- : 
	- first character is the file type
	- the next 3 character is owner permission
	- the next 3 is the group permission
	- the last 3 is the world permission

### File Types
- `-` file
- d folder
- l link
- c character special file(no one gives a fuck)
- b block special file(no one gives a fuck)

### chown
- the syntax is `chown bob file.txt`
- bob ---> change it to user named bob
- bob:bitch --> change it to bob the user, and the group bitch
- :bitch--> change the owner ship to the group named bitch
- bob: --> change the owner ship to bob and his group

### change your password
- `passwd [user]`
- Example: `passwd hle`
