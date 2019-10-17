; Copyright (C) Guy Levin 2019 All Rights Reserved

	mov eax, 3
	mov ebx, 5
	mov ecx, 0

not_done:
	add ecx, ebx
	dec eax
	cmp eax, 0
	jne not_done
