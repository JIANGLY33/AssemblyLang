## Debug模式下的常用指令

R：查看，改变寄存器中的内容

![-r_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-r_demo.png)

​		    (先用R命令查看所有寄存器的情况，再用R修改AX寄存器的值，再查看AX寄存器)

D：查看内存中的内容

![-d_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-d_demo.png)

​		    (查看076A:0000内存单元开始的内容)

E：改写内存中的内容

![-e_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-e_demo.png)

​		    (修改了076A:0000内存单元开始的四个字节的内存单元的内容)

U：将内存中的机器语言反汇编成汇编指令

![-u_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-u_demo.png)

​		       (查看076C:0000开头的地址处存储的指令，U后面的地址必须是cs寄存器所在的段)

T：执行一条指令

![-t_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-t_demo.png)

​		     (IP寄存器的值在执行T命令之后加2，说明成功执行了一条指令)

G：执行某个内存地址范围内的所有指令

![-g_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-g_demo.png)

​		  （执行G命令后IP寄存器的地址来到了G命令指定的地址，并把前面所有指令都执行）

P：执行循环指令，软件中断或子例程

![-p_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-p_demo.png)

​		    (执行p命令后IP寄存器的值加2，说明成功执行了一条指令)

A：以汇编语言格式在内存中写入一条指令

![-a_demo](https://raw.githubusercontent.com/JIANGLY33/Learning_AssemblyLanguage/master/pictures/-a_demo.png)

​				   (将MOV AX,1指令写入076C:0000地址单元)