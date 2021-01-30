.intel_syntax noprefix

.text
.global is_prime
is_prime:
	push ebp
	mov ebp, esp
	
	push ebx

	mov eax, [ebp+8]
	cmp eax, 1
	jle nemprim

	mov ebx, 2
	mov edx, 0

loop:
	mov eax, [ebp+8]	//inputra, eax = kapott szam
	mov edx, 0		//kinullazom az edx-et, a leendo maradek miatt

	cmp ebx, eax		//ebx == eax
	je prim			//ha ebx = eax, akkor ugras a primre

	div ebx			//az eax-et elosztom az ebx-szel
	cmp edx, 0		//edx == 0
	je nemprim		//ha edx = 0, akkor ugras a nemprimre
				
	inc ebx			//ebx = ebx +1
	jmp loop		//ugras a tetejere
prim:
	mov eax, 1
	jmp done

nemprim:
	mov eax, 0
	
done:
	pop ebx
	
	mov esp, 2*4
	mov esp, ebp
	pop ebp
ret



	

	

