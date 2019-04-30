;功能：将一个正数正确地插入有序数组的合适位置

;定义数据段
data segment
	x dw ?
	array_head dw 3,5,15,23,37,49,52,65,78,99   ;定义有序数组
	array_end dw 105		;定义数组的尾部
	n dw 32					;要插入的数字
data ends

;定义程序段
program segment

main proc far
	assume cs:program,ds:data	

start:
	push ds
	sub ax,ax
	push ax

	;将data段与ds寄存器相关联
	mov ax,data
	mov ds,ax

	;将数组头部的前一个元素设为哨兵，-1必定小于所有正数
	mov ax,n				;将n存入ax寄存器
	mov array_head-2,0ffffh
	mov si,0				;设置初始偏移位置


compare:
	cmp array_end[si],ax     ;从数组尾部开始和n比较
	jle insert				;若数组中的偏移元素的值小于等于n，则程序跳至执行插入操作处
	mov bx,array_end[si]	;否则先将偏移元素存入bx通用寄存器
	mov array_end[si+2],bx	;再从bx寄存器中将元素移至偏移元素在数组中的后一个位置
	sub si,2				;偏移位置向前移两个字节位
	jmp compare				;程序跳回compare的开头处执行下一轮的比较

insert:
	mov array_end[si+2],ax	;将n插入当前比较元素的后一位置

	ret

main endp

program ends

end start

