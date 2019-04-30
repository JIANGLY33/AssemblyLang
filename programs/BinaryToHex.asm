;功能：将BX寄存器中的二进制位以16进制形式打印在屏幕上
program segment
main proc far
	assume cs:program
;在堆栈里设置程序返回位置
start:							
	push dx
	sub ax, ax
	push ax
；程序主要部分
	mov ch, 4	;bx中有16位，每次移4位则需循环4次
rotate:
	mov cl, 4   ;设置每次移位为4
	rol bx, cl	;8086中移位的次数为cl或1
	mov al, bl
	and al, 0fh	;掩码屏蔽高四位
	add al, 30h ;加上0的asc值
	cmp al,	3ah	;和9的asc值比较
	jl	print 	;若小于9的asc值则在0-9之间，直接打印	
	add	al,	7h	;否则asc值加7（9和‘A’之间隔着9个字符）
print:
	mov dl, al	;
	mov ah, 2
	int 21h
	dec ch
	jnz	rotate	;若ch不为0则跳转回rotate
	ret
main	endp
program	ends
		end

