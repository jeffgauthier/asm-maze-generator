BITS 64;
global main

section .data ;------------------------------

fslash: db `\u2571`, 0
bslash: db `\u2572`, 0
len:    equ 4

; timespec struct(s, ns)
timespec:
	time_s dq 0
	time_ns dq 10000000

section .text ;--------------------------------

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	call rnd_gen

rnd_gen:
	rdrand rcx			; generate a random number
	jnc rnd_gen			; restart if not ready
	and rcx, 1			; bitwise AND. Lowest bit unchanged if 1, otherwise becomes 0
	inc rcx				; offset [0,1] by 1
	cmp rcx, 2			; check if random number == 2
	jne select_fslash		; if (random_num != 2) goto select_fslash;
        je select_bslash		; if (random_num == 2) goto select_bslash;

select_fslash:
	mov qword [rbp-8], fslash
	jmp print_char

select_bslash:
	mov qword [rbp-8], bslash
	jmp print_char

print_char:
	mov rax, 1
	mov rdi, 1
	mov rsi, qword [rbp-8]
	mov rdx, len
	syscall
	jmp wait_a_bit

wait_a_bit:
	mov rax, 35			; sys_nanosleep
	mov rdi, timespec		; param1: point to requested time
	xor rsi, rsi			; param2: set to null
	syscall				; call the kernel
	jmp rnd_gen			; restart

bye:
	mov rax, 60
	xor rdi, rdi
	syscall
