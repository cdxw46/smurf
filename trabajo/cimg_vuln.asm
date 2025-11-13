
cimg_vuln:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 32 2f 00 00    	push   QWORD PTR [rip+0x2f32]        # 403f58 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 33 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f33]        # 403f60 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nop    DWORD PTR [rax]
  401030:	f3 0f 1e fa          	endbr64
  401034:	68 00 00 00 00       	push   0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64
  401044:	68 01 00 00 00       	push   0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64
  401054:	68 02 00 00 00       	push   0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64
  401064:	68 03 00 00 00       	push   0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64
  401074:	68 04 00 00 00       	push   0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64
  401084:	68 05 00 00 00       	push   0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64
  401094:	68 06 00 00 00       	push   0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64
  4010a4:	68 07 00 00 00       	push   0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64
  4010b4:	68 08 00 00 00       	push   0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64
  4010c4:	68 09 00 00 00       	push   0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64
  4010d4:	68 0a 00 00 00       	push   0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64
  4010e4:	68 0b 00 00 00       	push   0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64
  4010f4:	68 0c 00 00 00       	push   0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64
  401104:	68 0d 00 00 00       	push   0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64
  401114:	68 0e 00 00 00       	push   0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64
  401124:	68 0f 00 00 00       	push   0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64
  401134:	68 10 00 00 00       	push   0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401140 <__snprintf_chk@plt>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	f2 ff 25 1d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e1d]        # 403f68 <__snprintf_chk@GLIBC_2.3.4>
  40114b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401150 <free@plt>:
  401150:	f3 0f 1e fa          	endbr64
  401154:	f2 ff 25 15 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e15]        # 403f70 <free@GLIBC_2.2.5>
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401160 <puts@plt>:
  401160:	f3 0f 1e fa          	endbr64
  401164:	f2 ff 25 0d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e0d]        # 403f78 <puts@GLIBC_2.2.5>
  40116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401170 <write@plt>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	f2 ff 25 05 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e05]        # 403f80 <write@GLIBC_2.2.5>
  40117b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401180 <__stack_chk_fail@plt>:
  401180:	f3 0f 1e fa          	endbr64
  401184:	f2 ff 25 fd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dfd]        # 403f88 <__stack_chk_fail@GLIBC_2.4>
  40118b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401190 <dup2@plt>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	f2 ff 25 f5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2df5]        # 403f90 <dup2@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <fputs@plt>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	f2 ff 25 ed 2d 00 00 	bnd jmp QWORD PTR [rip+0x2ded]        # 403f98 <fputs@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <close@plt>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	f2 ff 25 e5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2de5]        # 403fa0 <close@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <fputc@plt>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	f2 ff 25 dd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2ddd]        # 403fa8 <fputc@GLIBC_2.2.5>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <read@plt>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	f2 ff 25 d5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dd5]        # 403fb0 <read@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <strcmp@plt>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	f2 ff 25 cd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dcd]        # 403fb8 <strcmp@GLIBC_2.2.5>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <malloc@plt>:
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	f2 ff 25 c5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dc5]        # 403fc0 <malloc@GLIBC_2.2.5>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <__printf_chk@plt>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	f2 ff 25 bd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dbd]        # 403fc8 <__printf_chk@GLIBC_2.3.4>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <setvbuf@plt>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	f2 ff 25 b5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2db5]        # 403fd0 <setvbuf@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <open@plt>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	f2 ff 25 ad 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dad]        # 403fd8 <open@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401230 <exit@plt>:
  401230:	f3 0f 1e fa          	endbr64
  401234:	f2 ff 25 a5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2da5]        # 403fe0 <exit@GLIBC_2.2.5>
  40123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401240 <__fprintf_chk@plt>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	f2 ff 25 9d 2d 00 00 	bnd jmp QWORD PTR [rip+0x2d9d]        # 403fe8 <__fprintf_chk@GLIBC_2.3.4>
  40124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000401250 <disable_buffering>:
  401250:	f3 0f 1e fa          	endbr64
  401254:	50                   	push   rax
  401255:	48 8b 3d 34 6f 00 00 	mov    rdi,QWORD PTR [rip+0x6f34]        # 408190 <stdin@GLIBC_2.2.5>
  40125c:	31 c9                	xor    ecx,ecx
  40125e:	ba 02 00 00 00       	mov    edx,0x2
  401263:	31 f6                	xor    esi,esi
  401265:	e8 a6 ff ff ff       	call   401210 <setvbuf@plt>
  40126a:	48 8b 3d 0f 6f 00 00 	mov    rdi,QWORD PTR [rip+0x6f0f]        # 408180 <stdout@GLIBC_2.2.5>
  401271:	b9 01 00 00 00       	mov    ecx,0x1
  401276:	31 f6                	xor    esi,esi
  401278:	ba 02 00 00 00       	mov    edx,0x2
  40127d:	41 58                	pop    r8
  40127f:	e9 8c ff ff ff       	jmp    401210 <setvbuf@plt>

0000000000401284 <main>:
  401284:	f3 0f 1e fa          	endbr64
  401288:	41 54                	push   r12
  40128a:	55                   	push   rbp
  40128b:	53                   	push   rbx
  40128c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401293:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
  401298:	48 83 ec 30          	sub    rsp,0x30
  40129c:	b9 06 04 00 00       	mov    ecx,0x406
  4012a1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4012a8:	00 00 
  4012aa:	48 89 84 24 28 10 00 	mov    QWORD PTR [rsp+0x1028],rax
  4012b1:	00 
  4012b2:	31 c0                	xor    eax,eax
  4012b4:	41 89 f8             	mov    r8d,edi
  4012b7:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  4012bc:	48 8d 6c 24 10       	lea    rbp,[rsp+0x10]
  4012c1:	41 ff c8             	dec    r8d
  4012c4:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  4012c6:	7e 4f                	jle    401317 <main+0x93>
  4012c8:	4c 8b 66 08          	mov    r12,QWORD PTR [rsi+0x8]
  4012cc:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
  4012d0:	48 8d 35 66 0f 00 00 	lea    rsi,[rip+0xf66]        # 40223d <_IO_stdin_used+0x23d>
  4012d7:	4c 89 e7             	mov    rdi,r12
  4012da:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  4012dc:	48 f7 d1             	not    rcx
  4012df:	49 8d 7c 0c fa       	lea    rdi,[r12+rcx*1-0x6]
  4012e4:	e8 f7 fe ff ff       	call   4011e0 <strcmp@plt>
  4012e9:	85 c0                	test   eax,eax
  4012eb:	74 15                	je     401302 <main+0x7e>
  4012ed:	48 8d 35 4f 0f 00 00 	lea    rsi,[rip+0xf4f]        # 402243 <_IO_stdin_used+0x243>
  4012f4:	bf 01 00 00 00       	mov    edi,0x1
  4012f9:	31 c0                	xor    eax,eax
  4012fb:	e8 00 ff ff ff       	call   401200 <__printf_chk@plt>
  401300:	eb 45                	jmp    401347 <main+0xc3>
  401302:	31 f6                	xor    esi,esi
  401304:	4c 89 e7             	mov    rdi,r12
  401307:	31 c0                	xor    eax,eax
  401309:	e8 12 ff ff ff       	call   401220 <open@plt>
  40130e:	31 f6                	xor    esi,esi
  401310:	89 c7                	mov    edi,eax
  401312:	e8 79 fe ff ff       	call   401190 <dup2@plt>
  401317:	41 83 c8 ff          	or     r8d,0xffffffff
  40131b:	31 ff                	xor    edi,edi
  40131d:	48 8d 0d 3e 0f 00 00 	lea    rcx,[rip+0xf3e]        # 402262 <_IO_stdin_used+0x262>
  401324:	48 89 ee             	mov    rsi,rbp
  401327:	ba 0c 00 00 00       	mov    edx,0xc
  40132c:	e8 e5 01 00 00       	call   401516 <read_exact>
  401331:	81 7c 24 10 63 49 4d 	cmp    DWORD PTR [rsp+0x10],0x474d4963
  401338:	47 
  401339:	74 14                	je     40134f <main+0xcb>
  40133b:	48 8d 3d 3e 0f 00 00 	lea    rdi,[rip+0xf3e]        # 402280 <_IO_stdin_used+0x280>
  401342:	e8 19 fe ff ff       	call   401160 <puts@plt>
  401347:	83 cf ff             	or     edi,0xffffffff
  40134a:	e8 e1 fe ff ff       	call   401230 <exit@plt>
  40134f:	66 83 7c 24 14 04    	cmp    WORD PTR [rsp+0x14],0x4
  401355:	48 8d 3d 41 0f 00 00 	lea    rdi,[rip+0xf41]        # 40229d <_IO_stdin_used+0x29d>
  40135c:	75 e4                	jne    401342 <main+0xbe>
  40135e:	48 89 ef             	mov    rdi,rbp
  401361:	48 8d 1d 9c 0f 00 00 	lea    rbx,[rip+0xf9c]        # 402304 <_IO_stdin_used+0x304>
  401368:	e8 f8 0a 00 00       	call   401e65 <initialize_framebuffer>
  40136d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  401371:	8d 50 ff             	lea    edx,[rax-0x1]
  401374:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  401378:	85 c0                	test   eax,eax
  40137a:	74 7c                	je     4013f8 <main+0x174>
  40137c:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401381:	41 83 c8 ff          	or     r8d,0xffffffff
  401385:	ba 02 00 00 00       	mov    edx,0x2
  40138a:	31 ff                	xor    edi,edi
  40138c:	48 8d 0d 26 0f 00 00 	lea    rcx,[rip+0xf26]        # 4022b9 <_IO_stdin_used+0x2b9>
  401393:	e8 7e 01 00 00       	call   401516 <read_exact>
  401398:	0f b7 4c 24 0e       	movzx  ecx,WORD PTR [rsp+0xe]
  40139d:	8d 41 ff             	lea    eax,[rcx-0x1]
  4013a0:	66 83 f8 04          	cmp    ax,0x4
  4013a4:	77 33                	ja     4013d9 <main+0x155>
  4013a6:	0f b7 c0             	movzx  eax,ax
  4013a9:	48 89 ef             	mov    rdi,rbp
  4013ac:	48 63 04 83          	movsxd rax,DWORD PTR [rbx+rax*4]
  4013b0:	48 01 d8             	add    rax,rbx
  4013b3:	3e ff e0             	notrack jmp rax
  4013b6:	e8 ab 01 00 00       	call   401566 <handle_1>
  4013bb:	eb b0                	jmp    40136d <main+0xe9>
  4013bd:	e8 26 03 00 00       	call   4016e8 <handle_2>
  4013c2:	eb a9                	jmp    40136d <main+0xe9>
  4013c4:	e8 24 05 00 00       	call   4018ed <handle_3>
  4013c9:	eb a2                	jmp    40136d <main+0xe9>
  4013cb:	e8 d9 07 00 00       	call   401ba9 <handle_4>
  4013d0:	eb 9b                	jmp    40136d <main+0xe9>
  4013d2:	e8 67 06 00 00       	call   401a3e <handle_5>
  4013d7:	eb 94                	jmp    40136d <main+0xe9>
  4013d9:	48 8b 3d c0 6d 00 00 	mov    rdi,QWORD PTR [rip+0x6dc0]        # 4081a0 <stderr@GLIBC_2.2.5>
  4013e0:	48 8d 15 f9 0e 00 00 	lea    rdx,[rip+0xef9]        # 4022e0 <_IO_stdin_used+0x2e0>
  4013e7:	be 01 00 00 00       	mov    esi,0x1
  4013ec:	31 c0                	xor    eax,eax
  4013ee:	e8 4d fe ff ff       	call   401240 <__fprintf_chk@plt>
  4013f3:	e9 4f ff ff ff       	jmp    401347 <main+0xc3>
  4013f8:	31 f6                	xor    esi,esi
  4013fa:	48 89 ef             	mov    rdi,rbp
  4013fd:	e8 02 0a 00 00       	call   401e04 <display>
  401402:	48 8b 84 24 28 10 00 	mov    rax,QWORD PTR [rsp+0x1028]
  401409:	00 
  40140a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401411:	00 00 
  401413:	74 05                	je     40141a <main+0x196>
  401415:	e8 66 fd ff ff       	call   401180 <__stack_chk_fail@plt>
  40141a:	48 81 c4 30 10 00 00 	add    rsp,0x1030
  401421:	31 c0                	xor    eax,eax
  401423:	5b                   	pop    rbx
  401424:	5d                   	pop    rbp
  401425:	41 5c                	pop    r12
  401427:	c3                   	ret
  401428:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40142f:	00 

0000000000401430 <_start>:
  401430:	f3 0f 1e fa          	endbr64
  401434:	31 ed                	xor    ebp,ebp
  401436:	49 89 d1             	mov    r9,rdx
  401439:	5e                   	pop    rsi
  40143a:	48 89 e2             	mov    rdx,rsp
  40143d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401441:	50                   	push   rax
  401442:	54                   	push   rsp
  401443:	49 c7 c0 c0 1f 40 00 	mov    r8,0x401fc0
  40144a:	48 c7 c1 50 1f 40 00 	mov    rcx,0x401f50
  401451:	48 c7 c7 84 12 40 00 	mov    rdi,0x401284
  401458:	ff 15 92 2b 00 00    	call   QWORD PTR [rip+0x2b92]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40145e:	f4                   	hlt
  40145f:	90                   	nop

0000000000401460 <_dl_relocate_static_pie>:
  401460:	f3 0f 1e fa          	endbr64
  401464:	c3                   	ret
  401465:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40146c:	00 00 00 
  40146f:	90                   	nop

0000000000401470 <deregister_tm_clones>:
  401470:	b8 68 81 40 00       	mov    eax,0x408168
  401475:	48 3d 68 81 40 00    	cmp    rax,0x408168
  40147b:	74 13                	je     401490 <deregister_tm_clones+0x20>
  40147d:	b8 00 00 00 00       	mov    eax,0x0
  401482:	48 85 c0             	test   rax,rax
  401485:	74 09                	je     401490 <deregister_tm_clones+0x20>
  401487:	bf 68 81 40 00       	mov    edi,0x408168
  40148c:	ff e0                	jmp    rax
  40148e:	66 90                	xchg   ax,ax
  401490:	c3                   	ret
  401491:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401498:	00 00 00 00 
  40149c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004014a0 <register_tm_clones>:
  4014a0:	be 68 81 40 00       	mov    esi,0x408168
  4014a5:	48 81 ee 68 81 40 00 	sub    rsi,0x408168
  4014ac:	48 89 f0             	mov    rax,rsi
  4014af:	48 c1 ee 3f          	shr    rsi,0x3f
  4014b3:	48 c1 f8 03          	sar    rax,0x3
  4014b7:	48 01 c6             	add    rsi,rax
  4014ba:	48 d1 fe             	sar    rsi,1
  4014bd:	74 11                	je     4014d0 <register_tm_clones+0x30>
  4014bf:	b8 00 00 00 00       	mov    eax,0x0
  4014c4:	48 85 c0             	test   rax,rax
  4014c7:	74 07                	je     4014d0 <register_tm_clones+0x30>
  4014c9:	bf 68 81 40 00       	mov    edi,0x408168
  4014ce:	ff e0                	jmp    rax
  4014d0:	c3                   	ret
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004014e0 <__do_global_dtors_aux>:
  4014e0:	f3 0f 1e fa          	endbr64
  4014e4:	80 3d bd 6c 00 00 00 	cmp    BYTE PTR [rip+0x6cbd],0x0        # 4081a8 <completed.8061>
  4014eb:	75 13                	jne    401500 <__do_global_dtors_aux+0x20>
  4014ed:	55                   	push   rbp
  4014ee:	48 89 e5             	mov    rbp,rsp
  4014f1:	e8 7a ff ff ff       	call   401470 <deregister_tm_clones>
  4014f6:	c6 05 ab 6c 00 00 01 	mov    BYTE PTR [rip+0x6cab],0x1        # 4081a8 <completed.8061>
  4014fd:	5d                   	pop    rbp
  4014fe:	c3                   	ret
  4014ff:	90                   	nop
  401500:	c3                   	ret
  401501:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401508:	00 00 00 00 
  40150c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401510 <frame_dummy>:
  401510:	f3 0f 1e fa          	endbr64
  401514:	eb 8a                	jmp    4014a0 <register_tm_clones>

0000000000401516 <read_exact>:
  401516:	f3 0f 1e fa          	endbr64
  40151a:	41 54                	push   r12
  40151c:	48 63 d2             	movsxd rdx,edx
  40151f:	49 89 cc             	mov    r12,rcx
  401522:	55                   	push   rbp
  401523:	44 89 c5             	mov    ebp,r8d
  401526:	53                   	push   rbx
  401527:	48 89 d3             	mov    rbx,rdx
  40152a:	e8 a1 fc ff ff       	call   4011d0 <read@plt>
  40152f:	39 c3                	cmp    ebx,eax
  401531:	74 2e                	je     401561 <read_exact+0x4b>
  401533:	48 8b 3d 66 6c 00 00 	mov    rdi,QWORD PTR [rip+0x6c66]        # 4081a0 <stderr@GLIBC_2.2.5>
  40153a:	4c 89 e2             	mov    rdx,r12
  40153d:	be 01 00 00 00       	mov    esi,0x1
  401542:	31 c0                	xor    eax,eax
  401544:	e8 f7 fc ff ff       	call   401240 <__fprintf_chk@plt>
  401549:	48 8b 35 50 6c 00 00 	mov    rsi,QWORD PTR [rip+0x6c50]        # 4081a0 <stderr@GLIBC_2.2.5>
  401550:	bf 0a 00 00 00       	mov    edi,0xa
  401555:	e8 66 fc ff ff       	call   4011c0 <fputc@plt>
  40155a:	89 ef                	mov    edi,ebp
  40155c:	e8 cf fc ff ff       	call   401230 <exit@plt>
  401561:	5b                   	pop    rbx
  401562:	5d                   	pop    rbp
  401563:	41 5c                	pop    r12
  401565:	c3                   	ret

0000000000401566 <handle_1>:
  401566:	f3 0f 1e fa          	endbr64
  40156a:	41 57                	push   r15
  40156c:	41 56                	push   r14
  40156e:	41 55                	push   r13
  401570:	41 54                	push   r12
  401572:	55                   	push   rbp
  401573:	53                   	push   rbx
  401574:	48 89 fb             	mov    rbx,rdi
  401577:	48 83 ec 48          	sub    rsp,0x48
  40157b:	0f b6 6f 06          	movzx  ebp,BYTE PTR [rdi+0x6]
  40157f:	0f b6 57 07          	movzx  edx,BYTE PTR [rdi+0x7]
  401583:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40158a:	00 00 
  40158c:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401591:	31 c0                	xor    eax,eax
  401593:	0f af ea             	imul   ebp,edx
  401596:	48 63 ed             	movsxd rbp,ebp
  401599:	48 c1 e5 02          	shl    rbp,0x2
  40159d:	48 89 ef             	mov    rdi,rbp
  4015a0:	e8 4b fc ff ff       	call   4011f0 <malloc@plt>
  4015a5:	48 85 c0             	test   rax,rax
  4015a8:	75 0e                	jne    4015b8 <handle_1+0x52>
  4015aa:	48 8d 3d 53 0a 00 00 	lea    rdi,[rip+0xa53]        # 402004 <_IO_stdin_used+0x4>
  4015b1:	e8 aa fb ff ff       	call   401160 <puts@plt>
  4015b6:	eb 57                	jmp    40160f <handle_1+0xa9>
  4015b8:	89 ea                	mov    edx,ebp
  4015ba:	48 89 c6             	mov    rsi,rax
  4015bd:	41 83 c8 ff          	or     r8d,0xffffffff
  4015c1:	31 ff                	xor    edi,edi
  4015c3:	48 8d 0d 6f 0a 00 00 	lea    rcx,[rip+0xa6f]        # 402039 <_IO_stdin_used+0x39>
  4015ca:	49 89 c4             	mov    r12,rax
  4015cd:	e8 44 ff ff ff       	call   401516 <read_exact>
  4015d2:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  4015d6:	0f b6 53 06          	movzx  edx,BYTE PTR [rbx+0x6]
  4015da:	0f af d0             	imul   edx,eax
  4015dd:	31 c0                	xor    eax,eax
  4015df:	39 c2                	cmp    edx,eax
  4015e1:	7e 34                	jle    401617 <handle_1+0xb1>
  4015e3:	41 0f b6 4c 84 03    	movzx  ecx,BYTE PTR [r12+rax*4+0x3]
  4015e9:	48 ff c0             	inc    rax
  4015ec:	8d 71 e0             	lea    esi,[rcx-0x20]
  4015ef:	40 80 fe 5e          	cmp    sil,0x5e
  4015f3:	76 ea                	jbe    4015df <handle_1+0x79>
  4015f5:	48 8b 3d a4 6b 00 00 	mov    rdi,QWORD PTR [rip+0x6ba4]        # 4081a0 <stderr@GLIBC_2.2.5>
  4015fc:	48 8d 15 52 0a 00 00 	lea    rdx,[rip+0xa52]        # 402055 <_IO_stdin_used+0x55>
  401603:	be 01 00 00 00       	mov    esi,0x1
  401608:	31 c0                	xor    eax,eax
  40160a:	e8 31 fc ff ff       	call   401240 <__fprintf_chk@plt>
  40160f:	83 cf ff             	or     edi,0xffffffff
  401612:	e8 19 fc ff ff       	call   401230 <exit@plt>
  401617:	45 31 ed             	xor    r13d,r13d
  40161a:	4c 8d 74 24 1f       	lea    r14,[rsp+0x1f]
  40161f:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401623:	44 39 e8             	cmp    eax,r13d
  401626:	0f 8e 98 00 00 00    	jle    4016c4 <handle_1+0x15e>
  40162c:	31 ed                	xor    ebp,ebp
  40162e:	44 0f b6 7b 06       	movzx  r15d,BYTE PTR [rbx+0x6]
  401633:	41 39 ef             	cmp    r15d,ebp
  401636:	0f 8e 80 00 00 00    	jle    4016bc <handle_1+0x156>
  40163c:	45 89 fa             	mov    r10d,r15d
  40163f:	b9 19 00 00 00       	mov    ecx,0x19
  401644:	be 19 00 00 00       	mov    esi,0x19
  401649:	4c 89 f7             	mov    rdi,r14
  40164c:	45 0f af d5          	imul   r10d,r13d
  401650:	4c 8d 05 30 0a 00 00 	lea    r8,[rip+0xa30]        # 402087 <_IO_stdin_used+0x87>
  401657:	41 8d 04 2a          	lea    eax,[r10+rbp*1]
  40165b:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
  401660:	48 98                	cdqe
  401662:	52                   	push   rdx
  401663:	49 8d 04 84          	lea    rax,[r12+rax*4]
  401667:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  40166b:	52                   	push   rdx
  40166c:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401670:	52                   	push   rdx
  401671:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401675:	52                   	push   rdx
  401676:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  40167a:	ba 01 00 00 00       	mov    edx,0x1
  40167f:	31 c0                	xor    eax,eax
  401681:	e8 ba fa ff ff       	call   401140 <__snprintf_chk@plt>
  401686:	89 e8                	mov    eax,ebp
  401688:	44 8b 54 24 2c       	mov    r10d,DWORD PTR [rsp+0x2c]
  40168d:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  401691:	99                   	cdq
  401692:	48 83 c4 20          	add    rsp,0x20
  401696:	ff c5                	inc    ebp
  401698:	41 f7 ff             	idiv   r15d
  40169b:	42 8d 04 12          	lea    eax,[rdx+r10*1]
  40169f:	31 d2                	xor    edx,edx
  4016a1:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  4016a4:	48 6b d2 18          	imul   rdx,rdx,0x18
  4016a8:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  4016ac:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  4016af:	49 8b 46 10          	mov    rax,QWORD PTR [r14+0x10]
  4016b3:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  4016b7:	e9 72 ff ff ff       	jmp    40162e <handle_1+0xc8>
  4016bc:	41 ff c5             	inc    r13d
  4016bf:	e9 5b ff ff ff       	jmp    40161f <handle_1+0xb9>
  4016c4:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  4016c9:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4016d0:	00 00 
  4016d2:	74 05                	je     4016d9 <handle_1+0x173>
  4016d4:	e8 a7 fa ff ff       	call   401180 <__stack_chk_fail@plt>
  4016d9:	48 83 c4 48          	add    rsp,0x48
  4016dd:	5b                   	pop    rbx
  4016de:	5d                   	pop    rbp
  4016df:	41 5c                	pop    r12
  4016e1:	41 5d                	pop    r13
  4016e3:	41 5e                	pop    r14
  4016e5:	41 5f                	pop    r15
  4016e7:	c3                   	ret

00000000004016e8 <handle_2>:
  4016e8:	f3 0f 1e fa          	endbr64
  4016ec:	41 57                	push   r15
  4016ee:	41 83 c8 ff          	or     r8d,0xffffffff
  4016f2:	ba 01 00 00 00       	mov    edx,0x1
  4016f7:	48 8d 0d a6 09 00 00 	lea    rcx,[rip+0x9a6]        # 4020a4 <_IO_stdin_used+0xa4>
  4016fe:	41 56                	push   r14
  401700:	41 55                	push   r13
  401702:	41 54                	push   r12
  401704:	49 89 fc             	mov    r12,rdi
  401707:	31 ff                	xor    edi,edi
  401709:	55                   	push   rbp
  40170a:	53                   	push   rbx
  40170b:	48 83 ec 38          	sub    rsp,0x38
  40170f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401716:	00 00 
  401718:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40171d:	31 c0                	xor    eax,eax
  40171f:	48 8d 74 24 0d       	lea    rsi,[rsp+0xd]
  401724:	e8 ed fd ff ff       	call   401516 <read_exact>
  401729:	41 83 c8 ff          	or     r8d,0xffffffff
  40172d:	31 ff                	xor    edi,edi
  40172f:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401734:	48 8d 0d 88 09 00 00 	lea    rcx,[rip+0x988]        # 4020c3 <_IO_stdin_used+0xc3>
  40173b:	ba 01 00 00 00       	mov    edx,0x1
  401740:	e8 d1 fd ff ff       	call   401516 <read_exact>
  401745:	41 83 c8 ff          	or     r8d,0xffffffff
  401749:	31 ff                	xor    edi,edi
  40174b:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
  401750:	48 8d 0d 8b 09 00 00 	lea    rcx,[rip+0x98b]        # 4020e2 <_IO_stdin_used+0xe2>
  401757:	ba 01 00 00 00       	mov    edx,0x1
  40175c:	e8 b5 fd ff ff       	call   401516 <read_exact>
  401761:	31 ff                	xor    edi,edi
  401763:	41 83 c8 ff          	or     r8d,0xffffffff
  401767:	ba 01 00 00 00       	mov    edx,0x1
  40176c:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  401771:	48 8d 0d 88 09 00 00 	lea    rcx,[rip+0x988]        # 402100 <_IO_stdin_used+0x100>
  401778:	e8 99 fd ff ff       	call   401516 <read_exact>
  40177d:	0f b6 5c 24 0b       	movzx  ebx,BYTE PTR [rsp+0xb]
  401782:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [rsp+0xc]
  401787:	0f af da             	imul   ebx,edx
  40178a:	48 63 db             	movsxd rbx,ebx
  40178d:	48 c1 e3 02          	shl    rbx,0x2
  401791:	48 89 df             	mov    rdi,rbx
  401794:	e8 57 fa ff ff       	call   4011f0 <malloc@plt>
  401799:	48 85 c0             	test   rax,rax
  40179c:	75 0e                	jne    4017ac <handle_2+0xc4>
  40179e:	48 8d 3d 5f 08 00 00 	lea    rdi,[rip+0x85f]        # 402004 <_IO_stdin_used+0x4>
  4017a5:	e8 b6 f9 ff ff       	call   401160 <puts@plt>
  4017aa:	eb 58                	jmp    401804 <handle_2+0x11c>
  4017ac:	89 da                	mov    edx,ebx
  4017ae:	48 89 c6             	mov    rsi,rax
  4017b1:	41 83 c8 ff          	or     r8d,0xffffffff
  4017b5:	31 ff                	xor    edi,edi
  4017b7:	48 8d 0d 7b 08 00 00 	lea    rcx,[rip+0x87b]        # 402039 <_IO_stdin_used+0x39>
  4017be:	48 89 c5             	mov    rbp,rax
  4017c1:	e8 50 fd ff ff       	call   401516 <read_exact>
  4017c6:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  4017cb:	0f b6 54 24 0b       	movzx  edx,BYTE PTR [rsp+0xb]
  4017d0:	0f af d0             	imul   edx,eax
  4017d3:	31 c0                	xor    eax,eax
  4017d5:	39 c2                	cmp    edx,eax
  4017d7:	7e 33                	jle    40180c <handle_2+0x124>
  4017d9:	0f b6 4c 85 03       	movzx  ecx,BYTE PTR [rbp+rax*4+0x3]
  4017de:	48 ff c0             	inc    rax
  4017e1:	8d 71 e0             	lea    esi,[rcx-0x20]
  4017e4:	40 80 fe 5e          	cmp    sil,0x5e
  4017e8:	76 eb                	jbe    4017d5 <handle_2+0xed>
  4017ea:	48 8b 3d af 69 00 00 	mov    rdi,QWORD PTR [rip+0x69af]        # 4081a0 <stderr@GLIBC_2.2.5>
  4017f1:	48 8d 15 5d 08 00 00 	lea    rdx,[rip+0x85d]        # 402055 <_IO_stdin_used+0x55>
  4017f8:	be 01 00 00 00       	mov    esi,0x1
  4017fd:	31 c0                	xor    eax,eax
  4017ff:	e8 3c fa ff ff       	call   401240 <__fprintf_chk@plt>
  401804:	83 cf ff             	or     edi,0xffffffff
  401807:	e8 24 fa ff ff       	call   401230 <exit@plt>
  40180c:	45 31 ed             	xor    r13d,r13d
  40180f:	4c 8d 7c 24 0f       	lea    r15,[rsp+0xf]
  401814:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  401819:	44 39 e8             	cmp    eax,r13d
  40181c:	0f 8e a7 00 00 00    	jle    4018c9 <handle_2+0x1e1>
  401822:	45 31 f6             	xor    r14d,r14d
  401825:	0f b6 4c 24 0b       	movzx  ecx,BYTE PTR [rsp+0xb]
  40182a:	44 39 f1             	cmp    ecx,r14d
  40182d:	0f 8e 8e 00 00 00    	jle    4018c1 <handle_2+0x1d9>
  401833:	0f b6 44 24 0d       	movzx  eax,BYTE PTR [rsp+0xd]
  401838:	0f b6 5c 24 0e       	movzx  ebx,BYTE PTR [rsp+0xe]
  40183d:	41 0f af cd          	imul   ecx,r13d
  401841:	4c 89 ff             	mov    rdi,r15
  401844:	41 0f b6 74 24 06    	movzx  esi,BYTE PTR [r12+0x6]
  40184a:	4c 8d 05 36 08 00 00 	lea    r8,[rip+0x836]        # 402087 <_IO_stdin_used+0x87>
  401851:	44 01 f0             	add    eax,r14d
  401854:	44 01 eb             	add    ebx,r13d
  401857:	99                   	cdq
  401858:	0f af de             	imul   ebx,esi
  40185b:	44 01 f1             	add    ecx,r14d
  40185e:	41 ff c6             	inc    r14d
  401861:	f7 fe                	idiv   esi
  401863:	48 63 c9             	movsxd rcx,ecx
  401866:	be 19 00 00 00       	mov    esi,0x19
  40186b:	48 8d 44 8d 00       	lea    rax,[rbp+rcx*4+0x0]
  401870:	b9 19 00 00 00       	mov    ecx,0x19
  401875:	01 d3                	add    ebx,edx
  401877:	52                   	push   rdx
  401878:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  40187c:	52                   	push   rdx
  40187d:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401881:	52                   	push   rdx
  401882:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401886:	52                   	push   rdx
  401887:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  40188b:	ba 01 00 00 00       	mov    edx,0x1
  401890:	31 c0                	xor    eax,eax
  401892:	e8 a9 f8 ff ff       	call   401140 <__snprintf_chk@plt>
  401897:	89 d8                	mov    eax,ebx
  401899:	31 d2                	xor    edx,edx
  40189b:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  40189f:	41 f7 74 24 0c       	div    DWORD PTR [r12+0xc]
  4018a4:	48 83 c4 20          	add    rsp,0x20
  4018a8:	48 6b d2 18          	imul   rdx,rdx,0x18
  4018ac:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
  4018b1:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  4018b4:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  4018b8:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  4018bc:	e9 64 ff ff ff       	jmp    401825 <handle_2+0x13d>
  4018c1:	41 ff c5             	inc    r13d
  4018c4:	e9 4b ff ff ff       	jmp    401814 <handle_2+0x12c>
  4018c9:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  4018ce:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4018d5:	00 00 
  4018d7:	74 05                	je     4018de <handle_2+0x1f6>
  4018d9:	e8 a2 f8 ff ff       	call   401180 <__stack_chk_fail@plt>
  4018de:	48 83 c4 38          	add    rsp,0x38
  4018e2:	5b                   	pop    rbx
  4018e3:	5d                   	pop    rbp
  4018e4:	41 5c                	pop    r12
  4018e6:	41 5d                	pop    r13
  4018e8:	41 5e                	pop    r14
  4018ea:	41 5f                	pop    r15
  4018ec:	c3                   	ret

00000000004018ed <handle_3>:
  4018ed:	f3 0f 1e fa          	endbr64
  4018f1:	41 54                	push   r12
  4018f3:	41 83 c8 ff          	or     r8d,0xffffffff
  4018f7:	ba 01 00 00 00       	mov    edx,0x1
  4018fc:	48 8d 0d 1c 08 00 00 	lea    rcx,[rip+0x81c]        # 40211f <_IO_stdin_used+0x11f>
  401903:	55                   	push   rbp
  401904:	48 89 fd             	mov    rbp,rdi
  401907:	31 ff                	xor    edi,edi
  401909:	53                   	push   rbx
  40190a:	48 83 ec 10          	sub    rsp,0x10
  40190e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401915:	00 00 
  401917:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40191c:	31 c0                	xor    eax,eax
  40191e:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401923:	e8 ee fb ff ff       	call   401516 <read_exact>
  401928:	48 8d 74 24 06       	lea    rsi,[rsp+0x6]
  40192d:	41 83 c8 ff          	or     r8d,0xffffffff
  401931:	31 ff                	xor    edi,edi
  401933:	48 8d 0d a8 07 00 00 	lea    rcx,[rip+0x7a8]        # 4020e2 <_IO_stdin_used+0xe2>
  40193a:	ba 01 00 00 00       	mov    edx,0x1
  40193f:	e8 d2 fb ff ff       	call   401516 <read_exact>
  401944:	ba 01 00 00 00       	mov    edx,0x1
  401949:	31 ff                	xor    edi,edi
  40194b:	41 83 c8 ff          	or     r8d,0xffffffff
  40194f:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401954:	48 8d 0d a5 07 00 00 	lea    rcx,[rip+0x7a5]        # 402100 <_IO_stdin_used+0x100>
  40195b:	e8 b6 fb ff ff       	call   401516 <read_exact>
  401960:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401965:	8a 54 24 06          	mov    dl,BYTE PTR [rsp+0x6]
  401969:	48 c1 e0 04          	shl    rax,0x4
  40196d:	48 01 e8             	add    rax,rbp
  401970:	88 50 19             	mov    BYTE PTR [rax+0x19],dl
  401973:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
  401977:	8a 54 24 07          	mov    dl,BYTE PTR [rsp+0x7]
  40197b:	88 50 18             	mov    BYTE PTR [rax+0x18],dl
  40197e:	48 85 ff             	test   rdi,rdi
  401981:	74 05                	je     401988 <handle_3+0x9b>
  401983:	e8 c8 f7 ff ff       	call   401150 <free@plt>
  401988:	44 0f b6 64 24 06    	movzx  r12d,BYTE PTR [rsp+0x6]
  40198e:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401993:	44 0f af e2          	imul   r12d,edx
  401997:	49 63 fc             	movsxd rdi,r12d
  40199a:	e8 51 f8 ff ff       	call   4011f0 <malloc@plt>
  40199f:	48 89 c3             	mov    rbx,rax
  4019a2:	48 85 c0             	test   rax,rax
  4019a5:	75 0e                	jne    4019b5 <handle_3+0xc8>
  4019a7:	48 8d 3d 56 06 00 00 	lea    rdi,[rip+0x656]        # 402004 <_IO_stdin_used+0x4>
  4019ae:	e8 ad f7 ff ff       	call   401160 <puts@plt>
  4019b3:	eb 55                	jmp    401a0a <handle_3+0x11d>
  4019b5:	44 89 e2             	mov    edx,r12d
  4019b8:	48 89 c6             	mov    rsi,rax
  4019bb:	41 83 c8 ff          	or     r8d,0xffffffff
  4019bf:	31 ff                	xor    edi,edi
  4019c1:	48 8d 0d 71 06 00 00 	lea    rcx,[rip+0x671]        # 402039 <_IO_stdin_used+0x39>
  4019c8:	e8 49 fb ff ff       	call   401516 <read_exact>
  4019cd:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  4019d2:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  4019d7:	0f af d0             	imul   edx,eax
  4019da:	31 c0                	xor    eax,eax
  4019dc:	39 c2                	cmp    edx,eax
  4019de:	7e 32                	jle    401a12 <handle_3+0x125>
  4019e0:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  4019e4:	48 ff c0             	inc    rax
  4019e7:	8d 71 e0             	lea    esi,[rcx-0x20]
  4019ea:	40 80 fe 5e          	cmp    sil,0x5e
  4019ee:	76 ec                	jbe    4019dc <handle_3+0xef>
  4019f0:	48 8b 3d a9 67 00 00 	mov    rdi,QWORD PTR [rip+0x67a9]        # 4081a0 <stderr@GLIBC_2.2.5>
  4019f7:	48 8d 15 57 06 00 00 	lea    rdx,[rip+0x657]        # 402055 <_IO_stdin_used+0x55>
  4019fe:	be 01 00 00 00       	mov    esi,0x1
  401a03:	31 c0                	xor    eax,eax
  401a05:	e8 36 f8 ff ff       	call   401240 <__fprintf_chk@plt>
  401a0a:	83 cf ff             	or     edi,0xffffffff
  401a0d:	e8 1e f8 ff ff       	call   401230 <exit@plt>
  401a12:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401a17:	48 c1 e0 04          	shl    rax,0x4
  401a1b:	48 89 5c 28 20       	mov    QWORD PTR [rax+rbp*1+0x20],rbx
  401a20:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401a25:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401a2c:	00 00 
  401a2e:	74 05                	je     401a35 <handle_3+0x148>
  401a30:	e8 4b f7 ff ff       	call   401180 <__stack_chk_fail@plt>
  401a35:	48 83 c4 10          	add    rsp,0x10
  401a39:	5b                   	pop    rbx
  401a3a:	5d                   	pop    rbp
  401a3b:	41 5c                	pop    r12
  401a3d:	c3                   	ret

0000000000401a3e <handle_5>:
  401a3e:	f3 0f 1e fa          	endbr64
  401a42:	41 55                	push   r13
  401a44:	b9 03 01 00 00       	mov    ecx,0x103
  401a49:	41 83 c8 ff          	or     r8d,0xffffffff
  401a4d:	ba 02 01 00 00       	mov    edx,0x102
  401a52:	41 54                	push   r12
  401a54:	49 89 fc             	mov    r12,rdi
  401a57:	55                   	push   rbp
  401a58:	53                   	push   rbx
  401a59:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  401a60:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401a67:	00 00 
  401a69:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  401a70:	00 
  401a71:	31 c0                	xor    eax,eax
  401a73:	48 8d 7c 24 05       	lea    rdi,[rsp+0x5]
  401a78:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401a7d:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  401a7f:	31 ff                	xor    edi,edi
  401a81:	48 8d 0d b9 06 00 00 	lea    rcx,[rip+0x6b9]        # 402141 <_IO_stdin_used+0x141>
  401a88:	e8 89 fa ff ff       	call   401516 <read_exact>
  401a8d:	66 8b 54 24 06       	mov    dx,WORD PTR [rsp+0x6]
  401a92:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401a97:	31 f6                	xor    esi,esi
  401a99:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401a9e:	86 f2                	xchg   dl,dh
  401aa0:	48 c1 e0 04          	shl    rax,0x4
  401aa4:	66 41 89 54 04 18    	mov    WORD PTR [r12+rax*1+0x18],dx
  401aaa:	31 c0                	xor    eax,eax
  401aac:	e8 6f f7 ff ff       	call   401220 <open@plt>
  401ab1:	85 c0                	test   eax,eax
  401ab3:	79 15                	jns    401aca <handle_5+0x8c>
  401ab5:	48 8b 35 e4 66 00 00 	mov    rsi,QWORD PTR [rip+0x66e4]        # 4081a0 <stderr@GLIBC_2.2.5>
  401abc:	48 8d 3d a9 06 00 00 	lea    rdi,[rip+0x6a9]        # 40216c <_IO_stdin_used+0x16c>
  401ac3:	e8 d8 f6 ff ff       	call   4011a0 <fputs@plt>
  401ac8:	eb 45                	jmp    401b0f <handle_5+0xd1>
  401aca:	89 c5                	mov    ebp,eax
  401acc:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401ad1:	48 c1 e0 04          	shl    rax,0x4
  401ad5:	4a 8b 7c 20 20       	mov    rdi,QWORD PTR [rax+r12*1+0x20]
  401ada:	48 85 ff             	test   rdi,rdi
  401add:	74 05                	je     401ae4 <handle_5+0xa6>
  401adf:	e8 6c f6 ff ff       	call   401150 <free@plt>
  401ae4:	44 0f b6 6c 24 06    	movzx  r13d,BYTE PTR [rsp+0x6]
  401aea:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401aef:	44 0f af ea          	imul   r13d,edx
  401af3:	49 63 fd             	movsxd rdi,r13d
  401af6:	e8 f5 f6 ff ff       	call   4011f0 <malloc@plt>
  401afb:	48 89 c3             	mov    rbx,rax
  401afe:	48 85 c0             	test   rax,rax
  401b01:	75 14                	jne    401b17 <handle_5+0xd9>
  401b03:	48 8d 3d fa 04 00 00 	lea    rdi,[rip+0x4fa]        # 402004 <_IO_stdin_used+0x4>
  401b0a:	e8 51 f6 ff ff       	call   401160 <puts@plt>
  401b0f:	83 cf ff             	or     edi,0xffffffff
  401b12:	e8 19 f7 ff ff       	call   401230 <exit@plt>
  401b17:	44 89 ea             	mov    edx,r13d
  401b1a:	48 89 c6             	mov    rsi,rax
  401b1d:	41 83 c8 ff          	or     r8d,0xffffffff
  401b21:	89 ef                	mov    edi,ebp
  401b23:	48 8d 0d 0f 05 00 00 	lea    rcx,[rip+0x50f]        # 402039 <_IO_stdin_used+0x39>
  401b2a:	e8 e7 f9 ff ff       	call   401516 <read_exact>
  401b2f:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401b34:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401b39:	0f af d0             	imul   edx,eax
  401b3c:	31 c0                	xor    eax,eax
  401b3e:	39 c2                	cmp    edx,eax
  401b40:	7e 2c                	jle    401b6e <handle_5+0x130>
  401b42:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401b46:	48 ff c0             	inc    rax
  401b49:	8d 71 e0             	lea    esi,[rcx-0x20]
  401b4c:	40 80 fe 5e          	cmp    sil,0x5e
  401b50:	76 ec                	jbe    401b3e <handle_5+0x100>
  401b52:	48 8b 3d 47 66 00 00 	mov    rdi,QWORD PTR [rip+0x6647]        # 4081a0 <stderr@GLIBC_2.2.5>
  401b59:	48 8d 15 f5 04 00 00 	lea    rdx,[rip+0x4f5]        # 402055 <_IO_stdin_used+0x55>
  401b60:	be 01 00 00 00       	mov    esi,0x1
  401b65:	31 c0                	xor    eax,eax
  401b67:	e8 d4 f6 ff ff       	call   401240 <__fprintf_chk@plt>
  401b6c:	eb a1                	jmp    401b0f <handle_5+0xd1>
  401b6e:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b73:	89 ef                	mov    edi,ebp
  401b75:	48 c1 e0 04          	shl    rax,0x4
  401b79:	4a 89 5c 20 20       	mov    QWORD PTR [rax+r12*1+0x20],rbx
  401b7e:	e8 2d f6 ff ff       	call   4011b0 <close@plt>
  401b83:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  401b8a:	00 
  401b8b:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401b92:	00 00 
  401b94:	74 05                	je     401b9b <handle_5+0x15d>
  401b96:	e8 e5 f5 ff ff       	call   401180 <__stack_chk_fail@plt>
  401b9b:	48 81 c4 18 01 00 00 	add    rsp,0x118
  401ba2:	5b                   	pop    rbx
  401ba3:	5d                   	pop    rbp
  401ba4:	41 5c                	pop    r12
  401ba6:	41 5d                	pop    r13
  401ba8:	c3                   	ret

0000000000401ba9 <handle_4>:
  401ba9:	f3 0f 1e fa          	endbr64
  401bad:	41 57                	push   r15
  401baf:	41 56                	push   r14
  401bb1:	41 55                	push   r13
  401bb3:	41 54                	push   r12
  401bb5:	55                   	push   rbp
  401bb6:	53                   	push   rbx
  401bb7:	4c 8d 9c 24 00 00 fc 	lea    r11,[rsp-0x40000]
  401bbe:	ff 
  401bbf:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401bc6:	83 0c 24 00          	or     DWORD PTR [rsp],0x0
  401bca:	4c 39 dc             	cmp    rsp,r11
  401bcd:	75 f0                	jne    401bbf <handle_4+0x16>
  401bcf:	48 83 ec 48          	sub    rsp,0x48
  401bd3:	48 8d 0d b5 05 00 00 	lea    rcx,[rip+0x5b5]        # 40218f <_IO_stdin_used+0x18f>
  401bda:	ba 09 00 00 00       	mov    edx,0x9
  401bdf:	41 83 c8 ff          	or     r8d,0xffffffff
  401be3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401bea:	00 00 
  401bec:	48 89 84 24 38 00 04 	mov    QWORD PTR [rsp+0x40038],rax
  401bf3:	00 
  401bf4:	31 c0                	xor    eax,eax
  401bf6:	48 89 fb             	mov    rbx,rdi
  401bf9:	48 8d 74 24 16       	lea    rsi,[rsp+0x16]
  401bfe:	31 ff                	xor    edi,edi
  401c00:	e8 11 f9 ff ff       	call   401516 <read_exact>
  401c05:	48 8d 7c 24 1f       	lea    rdi,[rsp+0x1f]
  401c0a:	b9 00 00 01 00       	mov    ecx,0x10000
  401c0f:	31 c0                	xor    eax,eax
  401c11:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401c16:	44 8a 54 24 17       	mov    r10b,BYTE PTR [rsp+0x17]
  401c1b:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
  401c20:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401c22:	44 8a 5c 24 18       	mov    r11b,BYTE PTR [rsp+0x18]
  401c27:	40 8a 6c 24 19       	mov    bpl,BYTE PTR [rsp+0x19]
  401c2c:	48 c1 e2 04          	shl    rdx,0x4
  401c30:	48 01 da             	add    rdx,rbx
  401c33:	44 0f b6 62 18       	movzx  r12d,BYTE PTR [rdx+0x18]
  401c38:	41 39 cc             	cmp    r12d,ecx
  401c3b:	7e 58                	jle    401c95 <handle_4+0xec>
  401c3d:	44 0f b6 42 19       	movzx  r8d,BYTE PTR [rdx+0x19]
  401c42:	31 ff                	xor    edi,edi
  401c44:	44 89 c0             	mov    eax,r8d
  401c47:	0f af c1             	imul   eax,ecx
  401c4a:	41 39 f8             	cmp    r8d,edi
  401c4d:	7e 42                	jle    401c91 <handle_4+0xe8>
  401c4f:	4c 8b 4a 20          	mov    r9,QWORD PTR [rdx+0x20]
  401c53:	44 88 14 86          	mov    BYTE PTR [rsi+rax*4],r10b
  401c57:	44 88 5c 86 01       	mov    BYTE PTR [rsi+rax*4+0x1],r11b
  401c5c:	40 88 6c 86 02       	mov    BYTE PTR [rsi+rax*4+0x2],bpl
  401c61:	4d 85 c9             	test   r9,r9
  401c64:	75 1b                	jne    401c81 <handle_4+0xd8>
  401c66:	48 8b 35 33 65 00 00 	mov    rsi,QWORD PTR [rip+0x6533]        # 4081a0 <stderr@GLIBC_2.2.5>
  401c6d:	48 8d 3d 48 05 00 00 	lea    rdi,[rip+0x548]        # 4021bc <_IO_stdin_used+0x1bc>
  401c74:	e8 27 f5 ff ff       	call   4011a0 <fputs@plt>
  401c79:	83 cf ff             	or     edi,0xffffffff
  401c7c:	e8 af f5 ff ff       	call   401230 <exit@plt>
  401c81:	45 8a 0c 01          	mov    r9b,BYTE PTR [r9+rax*1]
  401c85:	ff c7                	inc    edi
  401c87:	44 88 4c 86 03       	mov    BYTE PTR [rsi+rax*4+0x3],r9b
  401c8c:	48 ff c0             	inc    rax
  401c8f:	eb b9                	jmp    401c4a <handle_4+0xa1>
  401c91:	ff c1                	inc    ecx
  401c93:	eb a3                	jmp    401c38 <handle_4+0x8f>
  401c95:	45 31 ff             	xor    r15d,r15d
  401c98:	48 8d bc 24 1f 00 04 	lea    rdi,[rsp+0x4001f]
  401c9f:	00 
  401ca0:	0f b6 44 24 1d       	movzx  eax,BYTE PTR [rsp+0x1d]
  401ca5:	44 39 f8             	cmp    eax,r15d
  401ca8:	0f 8e 2c 01 00 00    	jle    401dda <handle_4+0x231>
  401cae:	45 31 d2             	xor    r10d,r10d
  401cb1:	0f b6 44 24 1c       	movzx  eax,BYTE PTR [rsp+0x1c]
  401cb6:	44 39 d0             	cmp    eax,r10d
  401cb9:	0f 8e 13 01 00 00    	jle    401dd2 <handle_4+0x229>
  401cbf:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401cc4:	45 31 db             	xor    r11d,r11d
  401cc7:	48 c1 e2 04          	shl    rdx,0x4
  401ccb:	48 01 da             	add    rdx,rbx
  401cce:	8a 42 19             	mov    al,BYTE PTR [rdx+0x19]
  401cd1:	41 0f af c2          	imul   eax,r10d
  401cd5:	02 44 24 1a          	add    al,BYTE PTR [rsp+0x1a]
  401cd9:	44 0f b6 e0          	movzx  r12d,al
  401cdd:	8a 42 18             	mov    al,BYTE PTR [rdx+0x18]
  401ce0:	41 0f af c7          	imul   eax,r15d
  401ce4:	02 44 24 1b          	add    al,BYTE PTR [rsp+0x1b]
  401ce8:	0f b6 e8             	movzx  ebp,al
  401ceb:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401cf0:	48 c1 e0 04          	shl    rax,0x4
  401cf4:	0f b6 44 18 18       	movzx  eax,BYTE PTR [rax+rbx*1+0x18]
  401cf9:	44 39 d8             	cmp    eax,r11d
  401cfc:	0f 8e c8 00 00 00    	jle    401dca <handle_4+0x221>
  401d02:	45 31 ed             	xor    r13d,r13d
  401d05:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d0a:	48 c1 e0 04          	shl    rax,0x4
  401d0e:	0f b6 44 18 19       	movzx  eax,BYTE PTR [rax+rbx*1+0x19]
  401d13:	44 39 e8             	cmp    eax,r13d
  401d16:	0f 8e a4 00 00 00    	jle    401dc0 <handle_4+0x217>
  401d1c:	41 0f af c3          	imul   eax,r11d
  401d20:	44 01 e8             	add    eax,r13d
  401d23:	48 98                	cdqe
  401d25:	0f b6 54 84 22       	movzx  edx,BYTE PTR [rsp+rax*4+0x22]
  401d2a:	3a 54 24 1e          	cmp    dl,BYTE PTR [rsp+0x1e]
  401d2e:	0f 84 84 00 00 00    	je     401db8 <handle_4+0x20f>
  401d34:	44 89 5c 24 0c       	mov    DWORD PTR [rsp+0xc],r11d
  401d39:	be 19 00 00 00       	mov    esi,0x19
  401d3e:	44 0f b6 73 06       	movzx  r14d,BYTE PTR [rbx+0x6]
  401d43:	4c 8d 05 3d 03 00 00 	lea    r8,[rip+0x33d]        # 402087 <_IO_stdin_used+0x87>
  401d4a:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  401d4f:	51                   	push   rcx
  401d50:	b9 19 00 00 00       	mov    ecx,0x19
  401d55:	52                   	push   rdx
  401d56:	0f b6 54 84 31       	movzx  edx,BYTE PTR [rsp+rax*4+0x31]
  401d5b:	52                   	push   rdx
  401d5c:	0f b6 54 84 38       	movzx  edx,BYTE PTR [rsp+rax*4+0x38]
  401d61:	52                   	push   rdx
  401d62:	44 0f b6 4c 84 3f    	movzx  r9d,BYTE PTR [rsp+rax*4+0x3f]
  401d68:	ba 01 00 00 00       	mov    edx,0x1
  401d6d:	31 c0                	xor    eax,eax
  401d6f:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  401d74:	e8 c7 f3 ff ff       	call   401140 <__snprintf_chk@plt>
  401d79:	43 8d 44 25 00       	lea    eax,[r13+r12*1+0x0]
  401d7e:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401d83:	44 8b 5c 24 2c       	mov    r11d,DWORD PTR [rsp+0x2c]
  401d88:	99                   	cdq
  401d89:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
  401d8e:	48 83 c4 20          	add    rsp,0x20
  401d92:	41 f7 fe             	idiv   r14d
  401d95:	0f 10 07             	movups xmm0,XMMWORD PTR [rdi]
  401d98:	44 0f af f5          	imul   r14d,ebp
  401d9c:	42 8d 04 32          	lea    eax,[rdx+r14*1]
  401da0:	31 d2                	xor    edx,edx
  401da2:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401da5:	48 6b d2 18          	imul   rdx,rdx,0x18
  401da9:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  401dad:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401db0:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401db4:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401db8:	41 ff c5             	inc    r13d
  401dbb:	e9 45 ff ff ff       	jmp    401d05 <handle_4+0x15c>
  401dc0:	41 ff c3             	inc    r11d
  401dc3:	ff c5                	inc    ebp
  401dc5:	e9 21 ff ff ff       	jmp    401ceb <handle_4+0x142>
  401dca:	41 ff c2             	inc    r10d
  401dcd:	e9 df fe ff ff       	jmp    401cb1 <handle_4+0x108>
  401dd2:	41 ff c7             	inc    r15d
  401dd5:	e9 c6 fe ff ff       	jmp    401ca0 <handle_4+0xf7>
  401dda:	48 8b 84 24 38 00 04 	mov    rax,QWORD PTR [rsp+0x40038]
  401de1:	00 
  401de2:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401de9:	00 00 
  401deb:	74 05                	je     401df2 <handle_4+0x249>
  401ded:	e8 8e f3 ff ff       	call   401180 <__stack_chk_fail@plt>
  401df2:	48 81 c4 48 00 04 00 	add    rsp,0x40048
  401df9:	5b                   	pop    rbx
  401dfa:	5d                   	pop    rbp
  401dfb:	41 5c                	pop    r12
  401dfd:	41 5d                	pop    r13
  401dff:	41 5e                	pop    r14
  401e01:	41 5f                	pop    r15
  401e03:	c3                   	ret

0000000000401e04 <display>:
  401e04:	f3 0f 1e fa          	endbr64
  401e08:	41 54                	push   r12
  401e0a:	45 31 e4             	xor    r12d,r12d
  401e0d:	55                   	push   rbp
  401e0e:	48 89 fd             	mov    rbp,rdi
  401e11:	53                   	push   rbx
  401e12:	48 8d 1d d5 03 00 00 	lea    rbx,[rip+0x3d5]        # 4021ee <_IO_stdin_used+0x1ee>
  401e19:	0f b6 45 07          	movzx  eax,BYTE PTR [rbp+0x7]
  401e1d:	44 39 e0             	cmp    eax,r12d
  401e20:	7e 3e                	jle    401e60 <display+0x5c>
  401e22:	0f b6 55 06          	movzx  edx,BYTE PTR [rbp+0x6]
  401e26:	bf 01 00 00 00       	mov    edi,0x1
  401e2b:	48 89 d0             	mov    rax,rdx
  401e2e:	48 6b d2 18          	imul   rdx,rdx,0x18
  401e32:	0f b6 f0             	movzx  esi,al
  401e35:	41 0f af f4          	imul   esi,r12d
  401e39:	41 ff c4             	inc    r12d
  401e3c:	48 63 f6             	movsxd rsi,esi
  401e3f:	48 6b f6 18          	imul   rsi,rsi,0x18
  401e43:	48 03 75 10          	add    rsi,QWORD PTR [rbp+0x10]
  401e47:	e8 24 f3 ff ff       	call   401170 <write@plt>
  401e4c:	ba 18 00 00 00       	mov    edx,0x18
  401e51:	48 89 de             	mov    rsi,rbx
  401e54:	bf 01 00 00 00       	mov    edi,0x1
  401e59:	e8 12 f3 ff ff       	call   401170 <write@plt>
  401e5e:	eb b9                	jmp    401e19 <display+0x15>
  401e60:	5b                   	pop    rbx
  401e61:	5d                   	pop    rbp
  401e62:	41 5c                	pop    r12
  401e64:	c3                   	ret

0000000000401e65 <initialize_framebuffer>:
  401e65:	f3 0f 1e fa          	endbr64
  401e69:	41 54                	push   r12
  401e6b:	49 89 fc             	mov    r12,rdi
  401e6e:	55                   	push   rbp
  401e6f:	53                   	push   rbx
  401e70:	48 83 ec 30          	sub    rsp,0x30
  401e74:	0f b6 7f 06          	movzx  edi,BYTE PTR [rdi+0x6]
  401e78:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401e7f:	00 00 
  401e81:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  401e86:	31 c0                	xor    eax,eax
  401e88:	41 0f b6 44 24 07    	movzx  eax,BYTE PTR [r12+0x7]
  401e8e:	0f af f8             	imul   edi,eax
  401e91:	41 89 7c 24 0c       	mov    DWORD PTR [r12+0xc],edi
  401e96:	48 63 ff             	movsxd rdi,edi
  401e99:	48 6b ff 18          	imul   rdi,rdi,0x18
  401e9d:	48 ff c7             	inc    rdi
  401ea0:	e8 4b f3 ff ff       	call   4011f0 <malloc@plt>
  401ea5:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  401eaa:	48 85 c0             	test   rax,rax
  401ead:	75 14                	jne    401ec3 <initialize_framebuffer+0x5e>
  401eaf:	48 8d 3d 51 03 00 00 	lea    rdi,[rip+0x351]        # 402207 <_IO_stdin_used+0x207>
  401eb6:	e8 a5 f2 ff ff       	call   401160 <puts@plt>
  401ebb:	83 cf ff             	or     edi,0xffffffff
  401ebe:	e8 6d f3 ff ff       	call   401230 <exit@plt>
  401ec3:	31 db                	xor    ebx,ebx
  401ec5:	48 8d 6c 24 0f       	lea    rbp,[rsp+0xf]
  401eca:	41 39 5c 24 0c       	cmp    DWORD PTR [r12+0xc],ebx
  401ecf:	76 54                	jbe    401f25 <initialize_framebuffer+0xc0>
  401ed1:	50                   	push   rax
  401ed2:	ba 01 00 00 00       	mov    edx,0x1
  401ed7:	41 b9 ff 00 00 00    	mov    r9d,0xff
  401edd:	48 89 ef             	mov    rdi,rbp
  401ee0:	6a 20                	push   0x20
  401ee2:	4c 8d 05 9e 01 00 00 	lea    r8,[rip+0x19e]        # 402087 <_IO_stdin_used+0x87>
  401ee9:	b9 19 00 00 00       	mov    ecx,0x19
  401eee:	31 c0                	xor    eax,eax
  401ef0:	68 ff 00 00 00       	push   0xff
  401ef5:	be 19 00 00 00       	mov    esi,0x19
  401efa:	68 ff 00 00 00       	push   0xff
  401eff:	e8 3c f2 ff ff       	call   401140 <__snprintf_chk@plt>
  401f04:	0f 10 45 00          	movups xmm0,XMMWORD PTR [rbp+0x0]
  401f08:	48 6b c3 18          	imul   rax,rbx,0x18
  401f0c:	48 ff c3             	inc    rbx
  401f0f:	49 03 44 24 10       	add    rax,QWORD PTR [r12+0x10]
  401f14:	48 83 c4 20          	add    rsp,0x20
  401f18:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  401f1b:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  401f1f:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  401f23:	eb a5                	jmp    401eca <initialize_framebuffer+0x65>
  401f25:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  401f2a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401f31:	00 00 
  401f33:	74 05                	je     401f3a <initialize_framebuffer+0xd5>
  401f35:	e8 46 f2 ff ff       	call   401180 <__stack_chk_fail@plt>
  401f3a:	48 83 c4 30          	add    rsp,0x30
  401f3e:	4c 89 e0             	mov    rax,r12
  401f41:	5b                   	pop    rbx
  401f42:	5d                   	pop    rbp
  401f43:	41 5c                	pop    r12
  401f45:	c3                   	ret
  401f46:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401f4d:	00 00 00 

0000000000401f50 <__libc_csu_init>:
  401f50:	f3 0f 1e fa          	endbr64
  401f54:	41 57                	push   r15
  401f56:	4c 8d 3d eb 1d 00 00 	lea    r15,[rip+0x1deb]        # 403d48 <__frame_dummy_init_array_entry>
  401f5d:	41 56                	push   r14
  401f5f:	49 89 d6             	mov    r14,rdx
  401f62:	41 55                	push   r13
  401f64:	49 89 f5             	mov    r13,rsi
  401f67:	41 54                	push   r12
  401f69:	41 89 fc             	mov    r12d,edi
  401f6c:	55                   	push   rbp
  401f6d:	48 8d 2d e4 1d 00 00 	lea    rbp,[rip+0x1de4]        # 403d58 <__do_global_dtors_aux_fini_array_entry>
  401f74:	53                   	push   rbx
  401f75:	4c 29 fd             	sub    rbp,r15
  401f78:	48 83 ec 08          	sub    rsp,0x8
  401f7c:	e8 7f f0 ff ff       	call   401000 <_init>
  401f81:	48 c1 fd 03          	sar    rbp,0x3
  401f85:	74 1f                	je     401fa6 <__libc_csu_init+0x56>
  401f87:	31 db                	xor    ebx,ebx
  401f89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401f90:	4c 89 f2             	mov    rdx,r14
  401f93:	4c 89 ee             	mov    rsi,r13
  401f96:	44 89 e7             	mov    edi,r12d
  401f99:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  401f9d:	48 83 c3 01          	add    rbx,0x1
  401fa1:	48 39 dd             	cmp    rbp,rbx
  401fa4:	75 ea                	jne    401f90 <__libc_csu_init+0x40>
  401fa6:	48 83 c4 08          	add    rsp,0x8
  401faa:	5b                   	pop    rbx
  401fab:	5d                   	pop    rbp
  401fac:	41 5c                	pop    r12
  401fae:	41 5d                	pop    r13
  401fb0:	41 5e                	pop    r14
  401fb2:	41 5f                	pop    r15
  401fb4:	c3                   	ret
  401fb5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401fbc:	00 00 00 00 

0000000000401fc0 <__libc_csu_fini>:
  401fc0:	f3 0f 1e fa          	endbr64
  401fc4:	c3                   	ret

Disassembly of section .fini:

0000000000401fc8 <_fini>:
  401fc8:	f3 0f 1e fa          	endbr64
  401fcc:	48 83 ec 08          	sub    rsp,0x8
  401fd0:	48 83 c4 08          	add    rsp,0x8
  401fd4:	c3                   	ret
