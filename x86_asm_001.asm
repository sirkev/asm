#x86 Assembly Tutorial 001
 
.global _start
.intel_syntax
.section .text
	
_start:
	#write syscall
	mov %eax, 4
	mov %ebx, 1 #STDOUT- where we are writting
	lea %ecx, [message]
	mov %edx, 17
	int 0x80

	#exit syscall
	mov %eax, 1
	mov %ebx, 65
	int 0x80


.section .data
	message:
	.ascii "Hello, Assembly\n"
