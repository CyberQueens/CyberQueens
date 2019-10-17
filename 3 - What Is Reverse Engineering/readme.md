# Lesson Goal
Introduce the students to reverse engineering in a fun and intriguing way 

###### Author: Guy Levin

# Materials Learned
* every .exe is made of assembly
* what is reverse engineering in computer science
* reversing a basic program with IDA

# Exercises

### firstReversingProgram (Difficulty easy)

#### Tasks
* Understand what the assembly snippet does. What will be the state of each register after the program is run?
* Find a more efficient opcodes(s) to replace ```mov ecx, 0``` (line 5) that does/do the same thing.
* Find a more efficient opcodes(s) to replace the loop (lines 7, 9, 10, 11) that does/do the same thing.
* Find a more efficient opcodes(s) to replace the whole program (lines 5-11) that does/do the same thing.

#### Notes
Ensure opcode reference manual is available for reference

#### Answer
See file answers.md

---

### helloWorld (Difficulty medium)

#### Tasks
* Open helloWorld.exe with IDA Pro and find the ```main``` function
* Compare the assembly to the C code. What's different? What's the same?

#### Answer
See file answers.md

---

### Palace (Difficulty hard)

#### Storyline
While exploring a magical world you come across a mystical palace. You approach to knock on the gate, but instead find a terminal running Palace.exe.
Your mission is to interact with Palace.exe to gain access to the palace.

#### Tasks
* Use IDA Pro to reverse engineer Palace.exe
* Understand the program's logic and manipulate it allow you to enter the palace

#### Interface
You have a command line interface to Palace.exe (you can't change the program itself - only use it)

#### Answer
See file answers.md

Copyright (C) Guy Levin 2019 All Rights Reserved