
![Opening Slide](OS_Internals_Lesson_2.png?raw=true "Lesson 2 opening slide")

# OS Internals - Files

Lesson slide show available [here](https://docs.google.com/presentation/d/18PqmEthyNX5YgYEcLr5ip0g9ezA6ZWGAVdkS8dbW5sw/edit?usp=sharing)

## Links

* [010 Hex Editor](https://www.sweetscape.com/download/010editor/)
* [Process Monitor](https://live.sysinternals.com/Procmon.exe)

## Exercises

### Hex Editor Mini Adventure
1.	Find, make, or download a real .zip file
2.	Open it with 010 Editor (drag & drop)
3.	What is a .zip file's magic number?
4.	Find, make, or download a real .docx file
5.	What is a .docx file's magic number?
6.	How can you explain this? (Answers will be discussed next lesson, or after everyone finishes)
7.	Change the extension of the .docx file to .zip and try unziping it
8.	What happened and why did this work? (Answers will be discussed next lesson, or after everyone finishes)

### SafeUserLogin.exe
An evil criminal uses "SafeUserLogin.exe" on his computer to login to a secret criminal portal &nbsp;
We need you and your operating system knowledge to hack into the program and gain access. &nbsp;
Find a way to reach "WELCOME TO THE CLASSIFIED ROOM!" (Don't use IDA)

### CMD Investigator
1.	Open `cmd`
2.	Filter ProcMon to only "Show File System Activity" and only if the "Process Name" contains "cmd"
3.	Run `calc` from the cmd
4.	Where does cmd look for calc?
5.	Where does cmd find calc?
6.	Run `where python` to find out the location python.exe
6.	Copy python.exe and rename it to calc.exe
7.	Run `calc` from the cmd again. What happens? Why?

&nbsp;
&nbsp;
If you finished all the exercises, play around with procmon while using other programs

###### Author: Guy Levin

&nbsp;
&nbsp;

Copyright (C) CyberQueens 2020. All Rights Reserved.