## Debug模式下的常用指令

R：查看，改变寄存器中的内容

![-r_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-r_demo.png)

D：查看内存中的内容

![-d_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-d_demo.png)

E：改写内存中的内容

![-e_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-e_demo.png)

U：将内存中的机器语言反汇编成汇编指令

![-u_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-u_demo.png)

T：执行一条指令

![-t_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-t_demo.png)

​		     (IP寄存器的值在执行T命令之后加2，说明成功执行了一条指令)

G：执行某个内存地址范围内的所有指令

![-g_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-g_demo.png)

​		  （执行G命令后IP寄存器的地址来到了G命令指定的地址，并把前面所有指令都执行）

P：执行循环指令，软件中断或子例程

![-p_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-p_demo.png)

​		    (执行p命令后IP寄存器的值加2，说明成功执行了一条指令)

A：以汇编语言格式在内存中写入一条指令

![-a_demo](E:\DosBox\DOSBox-0.74-2\assem\AssemblyLanguage\pictures\-a_demo.png)