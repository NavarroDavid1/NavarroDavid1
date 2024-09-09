section .data
    message db "Hello, my name is David Navarro", 0x0A ; The message string with a newline at the end

section .text
    global _start

_start:
    ; System call to write the message to stdout
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor for stdout
    mov ecx, message    ; pointer to the message string
    mov edx, 30         ; length of the message
    int 0x80            ; make the system call

    ; System call to exit the program
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; make the system call

