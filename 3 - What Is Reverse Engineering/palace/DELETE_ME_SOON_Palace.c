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