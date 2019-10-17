# Exercise Answers
WARNING - reading the answers before solving the exercise will ruin the learning from the exercise

###### Author: Guy Levin

---

### firstReversingProgram

#### Answers
* The assembly snippet multiples eax and ebx
* ```xor ecx, ecx``` - This opcode is encoded in the executable in less bytes than ```mov ecx, 0``` making it more efficient (smaller code is faster)
* Using the ```loop``` opcode can be used instead of lines 7, 9, 10, 11
* The program simply multiplies two registers. The ```mul``` opcode can be used instead.

---

### helloWorld

#### Answers
* IDA should open the program on main by default. Furthermore, this file is compiled with symbols. Which means you can find the 'main' function in the list of functions IDA generates.
* What's the same is the reference to the ```puts``` function and the ```"hello world!"``` string. Everything else is different 😅

---

### Palace

#### Answers
* A possible starting point to reverse engineering the program is finding the "you are not welcome" string in IDA (using Shift+F12 to open the strings window) and then analyzing the assembly leading up to that (using "X" to find references in the assembly to the string).
* The program compares the first 10 characters of the user's input to the password "opensesame" and prints a welcoming message if the input matches. 

To feed your curiosity, below is the source of the Palace.exe program
```C
/* Copyright (C) Guy Levin 2019 All Rights Reserved */

#include <stdio.h>

const char g_password[] = "opensesame";
const int g_password_length = 10;

// warning: vulnerability - will read uninitalized data if password < 10 chars
// but not in our case (we init user_input w/0's)
int is_password(char* s1)
{
	for (int i = 0; i < g_password_length; i++)
	{
		if (s1[i] != g_password[i])
		{
			return 0;
		}
	}
	return 1;
}

void main()
{
	char user_input[0x100] = { 0 };
	gets_s(user_input, sizeof(user_input));
	if (is_password(user_input))
	{
		printf("WELCOME TO THE PALACE\n");
	}
	else
	{
		printf("You are not welcome to the palace. Try again.\n");
	}
}
```

Copyright (C) Guy Levin 2019 All Rights Reserved