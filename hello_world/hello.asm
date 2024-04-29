section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    输出字符串
    mov eax, 4                  ; 功能号: 写入文件
    mov ebx, 1                  ; 文件描述符: 标准输出
    mov ecx, hello              ; 字符串地址
    mov edx, 13                 ; 字符串长度
    int 0x80                    ; 调用内核

    ; 退出程序
    mov eax, 1                  ; 功能号: 退出程序
    xor ebx, ebx                ; 返回码: 0
    int 0x80                    ; 调用内核
