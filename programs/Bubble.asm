;功能：实现冒泡排序

;在data段随便定义一个待排数组
data segment
	array dw 3,4,6,1,56,2,1,26,19,21
data ends

program segment

main proc far

assume	ds:data,cs:program

start:
	push ds
	sub ax,ax
	push ax

	;将data段与ds寄存器相关联
	mov ax,data
	mov ds,ax

	;数组元素有十个，故设置循环计数器cx为10，实际只需要cx-1躺遍历即可得到有序数组
	mov cx,10
	dec cx

;定义外层循环的变量
outer:
	mov di,cx			;di记录外层循环执行的轮数，此句的效果为:di=cx-1
	mov	si,0			;si为执行每轮外层循环时数组元素的下标

;定义内存循环操作
inner:
	mov bx,array[si]	;bx存放数组当前元素
	cmp bx,array[si+2]	;将数组当前元素与下一个元素进行比较
	jle continue		;若当前元素更小，则进行下一轮比较
	xchg bx,array[si+2]	;否则将当前元素与下一个元素交换位置
	mov	array[si],bx

continue:
	add si,2			;数组下标+2，表示切换到下一个数组元素
	loop inner			;循环执行比较操作

	mov cx,di 			;将记录的外层循环执行轮数重新赋给循环计数器
	loop outer			;循环执行外层循环

	ret
main endp

program ends

end start