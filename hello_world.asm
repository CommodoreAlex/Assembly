; Compile Instructions: $ nasm -f elf32 -o hello_world.o hello_world.asm
; Making executable: $ ld -m elf_i386 -o hello_world hello_world.o

; Syscall documentation is located below:
; $ locate unistd_32.h (/usr/include/asm/unistd_32.h)
; This is written in INTEL syntax (right to left reading).

; this is the start of our file
global _start

section .text:

; this is what we're running
_start:
	mov eax, 0x4               ; using the write syscall
	mov ebx, 1                 ; using stdout as the fd (file descriptor)
	mov ecx, message           ; using the message as the buffer
	mov edx, message_length    ; supply the message length
	int 0x80                   ; invoke the syscall to run

	; gracefully exit (equivalent to int(main)) and returning zero
	
	mov eax, 0x1
	mov ebx, 0
	int 0x80

section .data:
	message: db "Hello World!", 0xA     ; newline character
	message_length equ $-message        ; tracking the length of our message
	
	
