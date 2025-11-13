
cimg_tradeoff:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e9 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fe9]        # 404ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 1a 3f 00 00    	push   QWORD PTR [rip+0x3f1a]        # 404f40 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 1b 3f 00 00 	bnd jmp QWORD PTR [rip+0x3f1b]        # 404f48 <_GLOBAL_OFFSET_TABLE_+0x10>
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
  401140:	f3 0f 1e fa          	endbr64
  401144:	68 11 00 00 00       	push   0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64
  401154:	68 12 00 00 00       	push   0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64
  401164:	68 13 00 00 00       	push   0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401170 <__snprintf_chk@plt>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	f2 ff 25 d5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dd5]        # 404f50 <__snprintf_chk@GLIBC_2.3.4>
  40117b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401180 <free@plt>:
  401180:	f3 0f 1e fa          	endbr64
  401184:	f2 ff 25 cd 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dcd]        # 404f58 <free@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401190 <__errno_location@plt>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	f2 ff 25 c5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dc5]        # 404f60 <__errno_location@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <puts@plt>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	f2 ff 25 bd 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dbd]        # 404f68 <puts@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <write@plt>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	f2 ff 25 b5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3db5]        # 404f70 <write@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <__stack_chk_fail@plt>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	f2 ff 25 ad 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dad]        # 404f78 <__stack_chk_fail@GLIBC_2.4>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <dup2@plt>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	f2 ff 25 a5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3da5]        # 404f80 <dup2@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <fputs@plt>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	f2 ff 25 9d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d9d]        # 404f88 <fputs@GLIBC_2.2.5>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <geteuid@plt>:
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	f2 ff 25 95 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d95]        # 404f90 <geteuid@GLIBC_2.2.5>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <fputc@plt>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	f2 ff 25 8d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d8d]        # 404f98 <fputc@GLIBC_2.2.5>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <read@plt>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	f2 ff 25 85 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d85]        # 404fa0 <read@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <memcmp@plt>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	f2 ff 25 7d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d7d]        # 404fa8 <memcmp@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401230 <strcmp@plt>:
  401230:	f3 0f 1e fa          	endbr64
  401234:	f2 ff 25 75 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d75]        # 404fb0 <strcmp@GLIBC_2.2.5>
  40123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401240 <malloc@plt>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	f2 ff 25 6d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d6d]        # 404fb8 <malloc@GLIBC_2.2.5>
  40124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401250 <__printf_chk@plt>:
  401250:	f3 0f 1e fa          	endbr64
  401254:	f2 ff 25 65 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d65]        # 404fc0 <__printf_chk@GLIBC_2.3.4>
  40125b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401260 <setvbuf@plt>:
  401260:	f3 0f 1e fa          	endbr64
  401264:	f2 ff 25 5d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d5d]        # 404fc8 <setvbuf@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401270 <open@plt>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	f2 ff 25 55 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d55]        # 404fd0 <open@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401280 <exit@plt>:
  401280:	f3 0f 1e fa          	endbr64
  401284:	f2 ff 25 4d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d4d]        # 404fd8 <exit@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401290 <__fprintf_chk@plt>:
  401290:	f3 0f 1e fa          	endbr64
  401294:	f2 ff 25 45 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d45]        # 404fe0 <__fprintf_chk@GLIBC_2.3.4>
  40129b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012a0 <strerror@plt>:
  4012a0:	f3 0f 1e fa          	endbr64
  4012a4:	f2 ff 25 3d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d3d]        # 404fe8 <strerror@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

00000000004012b0 <disable_buffering>:
  4012b0:	f3 0f 1e fa          	endbr64
  4012b4:	50                   	push   rax
  4012b5:	48 8b 3d 94 e8 00 00 	mov    rdi,QWORD PTR [rip+0xe894]        # 40fb50 <stdin@GLIBC_2.2.5>
  4012bc:	31 c9                	xor    ecx,ecx
  4012be:	ba 02 00 00 00       	mov    edx,0x2
  4012c3:	31 f6                	xor    esi,esi
  4012c5:	e8 96 ff ff ff       	call   401260 <setvbuf@plt>
  4012ca:	48 8b 3d 6f e8 00 00 	mov    rdi,QWORD PTR [rip+0xe86f]        # 40fb40 <stdout@GLIBC_2.2.5>
  4012d1:	b9 01 00 00 00       	mov    ecx,0x1
  4012d6:	31 f6                	xor    esi,esi
  4012d8:	ba 02 00 00 00       	mov    edx,0x2
  4012dd:	41 58                	pop    r8
  4012df:	e9 7c ff ff ff       	jmp    401260 <setvbuf@plt>

00000000004012e4 <main>:
  4012e4:	f3 0f 1e fa          	endbr64
  4012e8:	41 57                	push   r15
  4012ea:	41 56                	push   r14
  4012ec:	41 55                	push   r13
  4012ee:	41 54                	push   r12
  4012f0:	55                   	push   rbp
  4012f1:	53                   	push   rbx
  4012f2:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  4012f9:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
  4012fe:	48 83 ec 38          	sub    rsp,0x38
  401302:	b9 06 04 00 00       	mov    ecx,0x406
  401307:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40130e:	00 00 
  401310:	48 89 84 24 28 10 00 	mov    QWORD PTR [rsp+0x1028],rax
  401317:	00 
  401318:	31 c0                	xor    eax,eax
  40131a:	41 89 f8             	mov    r8d,edi
  40131d:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  401322:	48 8d 6c 24 10       	lea    rbp,[rsp+0x10]
  401327:	41 ff c8             	dec    r8d
  40132a:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  40132c:	7e 4f                	jle    40137d <main+0x99>
  40132e:	4c 8b 66 08          	mov    r12,QWORD PTR [rsi+0x8]
  401332:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
  401336:	48 8d 35 81 1f 00 00 	lea    rsi,[rip+0x1f81]        # 4032be <_IO_stdin_used+0x2be>
  40133d:	4c 89 e7             	mov    rdi,r12
  401340:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  401342:	48 f7 d1             	not    rcx
  401345:	49 8d 7c 0c fa       	lea    rdi,[r12+rcx*1-0x6]
  40134a:	e8 e1 fe ff ff       	call   401230 <strcmp@plt>
  40134f:	85 c0                	test   eax,eax
  401351:	74 15                	je     401368 <main+0x84>
  401353:	48 8d 35 6a 1f 00 00 	lea    rsi,[rip+0x1f6a]        # 4032c4 <_IO_stdin_used+0x2c4>
  40135a:	bf 01 00 00 00       	mov    edi,0x1
  40135f:	31 c0                	xor    eax,eax
  401361:	e8 ea fe ff ff       	call   401250 <__printf_chk@plt>
  401366:	eb 45                	jmp    4013ad <main+0xc9>
  401368:	31 f6                	xor    esi,esi
  40136a:	4c 89 e7             	mov    rdi,r12
  40136d:	31 c0                	xor    eax,eax
  40136f:	e8 fc fe ff ff       	call   401270 <open@plt>
  401374:	31 f6                	xor    esi,esi
  401376:	89 c7                	mov    edi,eax
  401378:	e8 53 fe ff ff       	call   4011d0 <dup2@plt>
  40137d:	41 83 c8 ff          	or     r8d,0xffffffff
  401381:	31 ff                	xor    edi,edi
  401383:	48 8d 0d 59 1f 00 00 	lea    rcx,[rip+0x1f59]        # 4032e3 <_IO_stdin_used+0x2e3>
  40138a:	48 89 ee             	mov    rsi,rbp
  40138d:	ba 0c 00 00 00       	mov    edx,0xc
  401392:	e8 64 03 00 00       	call   4016fb <read_exact>
  401397:	81 7c 24 10 63 49 4d 	cmp    DWORD PTR [rsp+0x10],0x474d4963
  40139e:	47 
  40139f:	74 14                	je     4013b5 <main+0xd1>
  4013a1:	48 8d 3d 59 1f 00 00 	lea    rdi,[rip+0x1f59]        # 403301 <_IO_stdin_used+0x301>
  4013a8:	e8 f3 fd ff ff       	call   4011a0 <puts@plt>
  4013ad:	83 cf ff             	or     edi,0xffffffff
  4013b0:	e8 cb fe ff ff       	call   401280 <exit@plt>
  4013b5:	66 83 7c 24 14 04    	cmp    WORD PTR [rsp+0x14],0x4
  4013bb:	48 8d 3d 5c 1f 00 00 	lea    rdi,[rip+0x1f5c]        # 40331e <_IO_stdin_used+0x31e>
  4013c2:	75 e4                	jne    4013a8 <main+0xc4>
  4013c4:	48 89 ef             	mov    rdi,rbp
  4013c7:	48 8d 5c 24 0e       	lea    rbx,[rsp+0xe]
  4013cc:	e8 1d 0b 00 00       	call   401eee <initialize_framebuffer>
  4013d1:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4013d5:	8d 50 ff             	lea    edx,[rax-0x1]
  4013d8:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  4013dc:	85 c0                	test   eax,eax
  4013de:	0f 84 80 00 00 00    	je     401464 <main+0x180>
  4013e4:	48 8d 0d 4f 1f 00 00 	lea    rcx,[rip+0x1f4f]        # 40333a <_IO_stdin_used+0x33a>
  4013eb:	41 83 c8 ff          	or     r8d,0xffffffff
  4013ef:	48 89 de             	mov    rsi,rbx
  4013f2:	31 ff                	xor    edi,edi
  4013f4:	ba 02 00 00 00       	mov    edx,0x2
  4013f9:	e8 fd 02 00 00       	call   4016fb <read_exact>
  4013fe:	0f b7 4c 24 0e       	movzx  ecx,WORD PTR [rsp+0xe]
  401403:	66 83 f9 03          	cmp    cx,0x3
  401407:	74 32                	je     40143b <main+0x157>
  401409:	77 16                	ja     401421 <main+0x13d>
  40140b:	66 83 f9 01          	cmp    cx,0x1
  40140f:	74 20                	je     401431 <main+0x14d>
  401411:	66 83 f9 02          	cmp    cx,0x2
  401415:	75 2e                	jne    401445 <main+0x161>
  401417:	48 89 ef             	mov    rdi,rbp
  40141a:	e8 bd 04 00 00       	call   4018dc <handle_2>
  40141f:	eb b0                	jmp    4013d1 <main+0xed>
  401421:	66 83 f9 04          	cmp    cx,0x4
  401425:	75 1e                	jne    401445 <main+0x161>
  401427:	48 89 ef             	mov    rdi,rbp
  40142a:	e8 03 08 00 00       	call   401c32 <handle_4>
  40142f:	eb a0                	jmp    4013d1 <main+0xed>
  401431:	48 89 ef             	mov    rdi,rbp
  401434:	e8 21 03 00 00       	call   40175a <handle_1>
  401439:	eb 96                	jmp    4013d1 <main+0xed>
  40143b:	48 89 ef             	mov    rdi,rbp
  40143e:	e8 9e 06 00 00       	call   401ae1 <handle_3>
  401443:	eb 8c                	jmp    4013d1 <main+0xed>
  401445:	48 8b 3d 14 e7 00 00 	mov    rdi,QWORD PTR [rip+0xe714]        # 40fb60 <stderr@GLIBC_2.2.5>
  40144c:	48 8d 15 0e 1f 00 00 	lea    rdx,[rip+0x1f0e]        # 403361 <_IO_stdin_used+0x361>
  401453:	be 01 00 00 00       	mov    esi,0x1
  401458:	31 c0                	xor    eax,eax
  40145a:	e8 31 fe ff ff       	call   401290 <__fprintf_chk@plt>
  40145f:	e9 49 ff ff ff       	jmp    4013ad <main+0xc9>
  401464:	31 f6                	xor    esi,esi
  401466:	48 89 ef             	mov    rdi,rbp
  401469:	4c 8d 25 b0 3b 00 00 	lea    r12,[rip+0x3bb0]        # 405020 <desired_output>
  401470:	31 ed                	xor    ebp,ebp
  401472:	e8 16 0a 00 00       	call   401e8d <display>
  401477:	44 8b 74 24 1c       	mov    r14d,DWORD PTR [rsp+0x1c]
  40147c:	4c 8b 6c 24 20       	mov    r13,QWORD PTR [rsp+0x20]
  401481:	41 81 fe 20 07 00 00 	cmp    r14d,0x720
  401488:	40 0f 94 c5          	sete   bpl
  40148c:	31 db                	xor    ebx,ebx
  40148e:	45 31 ff             	xor    r15d,r15d
  401491:	41 39 de             	cmp    r14d,ebx
  401494:	76 3f                	jbe    4014d5 <main+0x1f1>
  401496:	81 fb 20 07 00 00    	cmp    ebx,0x720
  40149c:	74 37                	je     4014d5 <main+0x1f1>
  40149e:	41 8a 45 13          	mov    al,BYTE PTR [r13+0x13]
  4014a2:	41 3a 44 24 13       	cmp    al,BYTE PTR [r12+0x13]
  4014a7:	41 0f 45 ef          	cmovne ebp,r15d
  4014ab:	3c 20                	cmp    al,0x20
  4014ad:	74 1a                	je     4014c9 <main+0x1e5>
  4014af:	3c 0a                	cmp    al,0xa
  4014b1:	74 16                	je     4014c9 <main+0x1e5>
  4014b3:	ba 18 00 00 00       	mov    edx,0x18
  4014b8:	4c 89 e6             	mov    rsi,r12
  4014bb:	4c 89 ef             	mov    rdi,r13
  4014be:	e8 5d fd ff ff       	call   401220 <memcmp@plt>
  4014c3:	85 c0                	test   eax,eax
  4014c5:	41 0f 45 ef          	cmovne ebp,r15d
  4014c9:	ff c3                	inc    ebx
  4014cb:	49 83 c5 18          	add    r13,0x18
  4014cf:	49 83 c4 18          	add    r12,0x18
  4014d3:	eb bc                	jmp    401491 <main+0x1ad>
  4014d5:	48 81 3d 90 e6 00 00 	cmp    QWORD PTR [rip+0xe690],0x11d        # 40fb70 <total_data>
  4014dc:	1d 01 00 00 
  4014e0:	77 0d                	ja     4014ef <main+0x20b>
  4014e2:	40 80 e5 01          	and    bpl,0x1
  4014e6:	74 07                	je     4014ef <main+0x20b>
  4014e8:	31 c0                	xor    eax,eax
  4014ea:	e8 17 01 00 00       	call   401606 <win>
  4014ef:	48 8b 84 24 28 10 00 	mov    rax,QWORD PTR [rsp+0x1028]
  4014f6:	00 
  4014f7:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4014fe:	00 00 
  401500:	74 05                	je     401507 <main+0x223>
  401502:	e8 b9 fc ff ff       	call   4011c0 <__stack_chk_fail@plt>
  401507:	48 81 c4 38 10 00 00 	add    rsp,0x1038
  40150e:	31 c0                	xor    eax,eax
  401510:	5b                   	pop    rbx
  401511:	5d                   	pop    rbp
  401512:	41 5c                	pop    r12
  401514:	41 5d                	pop    r13
  401516:	41 5e                	pop    r14
  401518:	41 5f                	pop    r15
  40151a:	c3                   	ret
  40151b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401520 <_start>:
  401520:	f3 0f 1e fa          	endbr64
  401524:	31 ed                	xor    ebp,ebp
  401526:	49 89 d1             	mov    r9,rdx
  401529:	5e                   	pop    rsi
  40152a:	48 89 e2             	mov    rdx,rsp
  40152d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401531:	50                   	push   rax
  401532:	54                   	push   rsp
  401533:	49 c7 c0 40 20 40 00 	mov    r8,0x402040
  40153a:	48 c7 c1 d0 1f 40 00 	mov    rcx,0x401fd0
  401541:	48 c7 c7 e4 12 40 00 	mov    rdi,0x4012e4
  401548:	ff 15 a2 3a 00 00    	call   QWORD PTR [rip+0x3aa2]        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40154e:	f4                   	hlt
  40154f:	90                   	nop

0000000000401550 <_dl_relocate_static_pie>:
  401550:	f3 0f 1e fa          	endbr64
  401554:	c3                   	ret
  401555:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40155c:	00 00 00 
  40155f:	90                   	nop

0000000000401560 <deregister_tm_clones>:
  401560:	b8 28 fb 40 00       	mov    eax,0x40fb28
  401565:	48 3d 28 fb 40 00    	cmp    rax,0x40fb28
  40156b:	74 13                	je     401580 <deregister_tm_clones+0x20>
  40156d:	b8 00 00 00 00       	mov    eax,0x0
  401572:	48 85 c0             	test   rax,rax
  401575:	74 09                	je     401580 <deregister_tm_clones+0x20>
  401577:	bf 28 fb 40 00       	mov    edi,0x40fb28
  40157c:	ff e0                	jmp    rax
  40157e:	66 90                	xchg   ax,ax
  401580:	c3                   	ret
  401581:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401588:	00 00 00 00 
  40158c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401590 <register_tm_clones>:
  401590:	be 28 fb 40 00       	mov    esi,0x40fb28
  401595:	48 81 ee 28 fb 40 00 	sub    rsi,0x40fb28
  40159c:	48 89 f0             	mov    rax,rsi
  40159f:	48 c1 ee 3f          	shr    rsi,0x3f
  4015a3:	48 c1 f8 03          	sar    rax,0x3
  4015a7:	48 01 c6             	add    rsi,rax
  4015aa:	48 d1 fe             	sar    rsi,1
  4015ad:	74 11                	je     4015c0 <register_tm_clones+0x30>
  4015af:	b8 00 00 00 00       	mov    eax,0x0
  4015b4:	48 85 c0             	test   rax,rax
  4015b7:	74 07                	je     4015c0 <register_tm_clones+0x30>
  4015b9:	bf 28 fb 40 00       	mov    edi,0x40fb28
  4015be:	ff e0                	jmp    rax
  4015c0:	c3                   	ret
  4015c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4015c8:	00 00 00 00 
  4015cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004015d0 <__do_global_dtors_aux>:
  4015d0:	f3 0f 1e fa          	endbr64
  4015d4:	80 3d 8d e5 00 00 00 	cmp    BYTE PTR [rip+0xe58d],0x0        # 40fb68 <completed.8061>
  4015db:	75 13                	jne    4015f0 <__do_global_dtors_aux+0x20>
  4015dd:	55                   	push   rbp
  4015de:	48 89 e5             	mov    rbp,rsp
  4015e1:	e8 7a ff ff ff       	call   401560 <deregister_tm_clones>
  4015e6:	c6 05 7b e5 00 00 01 	mov    BYTE PTR [rip+0xe57b],0x1        # 40fb68 <completed.8061>
  4015ed:	5d                   	pop    rbp
  4015ee:	c3                   	ret
  4015ef:	90                   	nop
  4015f0:	c3                   	ret
  4015f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4015f8:	00 00 00 00 
  4015fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401600 <frame_dummy>:
  401600:	f3 0f 1e fa          	endbr64
  401604:	eb 8a                	jmp    401590 <register_tm_clones>

0000000000401606 <win>:
  401606:	f3 0f 1e fa          	endbr64
  40160a:	55                   	push   rbp
  40160b:	31 f6                	xor    esi,esi
  40160d:	48 8d 3d f0 19 00 00 	lea    rdi,[rip+0x19f0]        # 403004 <_IO_stdin_used+0x4>
  401614:	48 81 ec 10 01 00 00 	sub    rsp,0x110
  40161b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401622:	00 00 
  401624:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  40162b:	00 
  40162c:	31 c0                	xor    eax,eax
  40162e:	e8 3d fc ff ff       	call   401270 <open@plt>
  401633:	85 c0                	test   eax,eax
  401635:	79 45                	jns    40167c <win+0x76>
  401637:	e8 54 fb ff ff       	call   401190 <__errno_location@plt>
  40163c:	8b 38                	mov    edi,DWORD PTR [rax]
  40163e:	e8 5d fc ff ff       	call   4012a0 <strerror@plt>
  401643:	48 8d 35 c0 19 00 00 	lea    rsi,[rip+0x19c0]        # 40300a <_IO_stdin_used+0xa>
  40164a:	bf 01 00 00 00       	mov    edi,0x1
  40164f:	48 89 c2             	mov    rdx,rax
  401652:	31 c0                	xor    eax,eax
  401654:	e8 f7 fb ff ff       	call   401250 <__printf_chk@plt>
  401659:	e8 92 fb ff ff       	call   4011f0 <geteuid@plt>
  40165e:	85 c0                	test   eax,eax
  401660:	74 54                	je     4016b6 <win+0xb0>
  401662:	48 8d 3d cb 19 00 00 	lea    rdi,[rip+0x19cb]        # 403034 <_IO_stdin_used+0x34>
  401669:	e8 32 fb ff ff       	call   4011a0 <puts@plt>
  40166e:	48 8d 3d e2 19 00 00 	lea    rdi,[rip+0x19e2]        # 403057 <_IO_stdin_used+0x57>
  401675:	e8 26 fb ff ff       	call   4011a0 <puts@plt>
  40167a:	eb 3a                	jmp    4016b6 <win+0xb0>
  40167c:	48 8d 6c 24 08       	lea    rbp,[rsp+0x8]
  401681:	89 c7                	mov    edi,eax
  401683:	ba 00 01 00 00       	mov    edx,0x100
  401688:	48 89 ee             	mov    rsi,rbp
  40168b:	e8 80 fb ff ff       	call   401210 <read@plt>
  401690:	85 c0                	test   eax,eax
  401692:	7f 2a                	jg     4016be <win+0xb8>
  401694:	e8 f7 fa ff ff       	call   401190 <__errno_location@plt>
  401699:	8b 38                	mov    edi,DWORD PTR [rax]
  40169b:	e8 00 fc ff ff       	call   4012a0 <strerror@plt>
  4016a0:	48 8d 35 02 1a 00 00 	lea    rsi,[rip+0x1a02]        # 4030a9 <_IO_stdin_used+0xa9>
  4016a7:	bf 01 00 00 00       	mov    edi,0x1
  4016ac:	48 89 c2             	mov    rdx,rax
  4016af:	31 c0                	xor    eax,eax
  4016b1:	e8 9a fb ff ff       	call   401250 <__printf_chk@plt>
  4016b6:	83 cf ff             	or     edi,0xffffffff
  4016b9:	e8 c2 fb ff ff       	call   401280 <exit@plt>
  4016be:	48 63 d0             	movsxd rdx,eax
  4016c1:	48 89 ee             	mov    rsi,rbp
  4016c4:	bf 01 00 00 00       	mov    edi,0x1
  4016c9:	e8 e2 fa ff ff       	call   4011b0 <write@plt>
  4016ce:	48 8d 3d 7f 1a 00 00 	lea    rdi,[rip+0x1a7f]        # 403154 <_IO_stdin_used+0x154>
  4016d5:	e8 c6 fa ff ff       	call   4011a0 <puts@plt>
  4016da:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  4016e1:	00 
  4016e2:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4016e9:	00 00 
  4016eb:	74 05                	je     4016f2 <win+0xec>
  4016ed:	e8 ce fa ff ff       	call   4011c0 <__stack_chk_fail@plt>
  4016f2:	48 81 c4 10 01 00 00 	add    rsp,0x110
  4016f9:	5d                   	pop    rbp
  4016fa:	c3                   	ret

00000000004016fb <read_exact>:
  4016fb:	f3 0f 1e fa          	endbr64
  4016ff:	41 55                	push   r13
  401701:	4c 63 ea             	movsxd r13,edx
  401704:	41 54                	push   r12
  401706:	4c 89 ea             	mov    rdx,r13
  401709:	49 89 cc             	mov    r12,rcx
  40170c:	55                   	push   rbp
  40170d:	44 89 c5             	mov    ebp,r8d
  401710:	53                   	push   rbx
  401711:	41 51                	push   r9
  401713:	e8 f8 fa ff ff       	call   401210 <read@plt>
  401718:	41 39 c5             	cmp    r13d,eax
  40171b:	74 2e                	je     40174b <read_exact+0x50>
  40171d:	48 8b 3d 3c e4 00 00 	mov    rdi,QWORD PTR [rip+0xe43c]        # 40fb60 <stderr@GLIBC_2.2.5>
  401724:	4c 89 e2             	mov    rdx,r12
  401727:	be 01 00 00 00       	mov    esi,0x1
  40172c:	31 c0                	xor    eax,eax
  40172e:	e8 5d fb ff ff       	call   401290 <__fprintf_chk@plt>
  401733:	48 8b 35 26 e4 00 00 	mov    rsi,QWORD PTR [rip+0xe426]        # 40fb60 <stderr@GLIBC_2.2.5>
  40173a:	bf 0a 00 00 00       	mov    edi,0xa
  40173f:	e8 bc fa ff ff       	call   401200 <fputc@plt>
  401744:	89 ef                	mov    edi,ebp
  401746:	e8 35 fb ff ff       	call   401280 <exit@plt>
  40174b:	4c 01 2d 1e e4 00 00 	add    QWORD PTR [rip+0xe41e],r13        # 40fb70 <total_data>
  401752:	58                   	pop    rax
  401753:	5b                   	pop    rbx
  401754:	5d                   	pop    rbp
  401755:	41 5c                	pop    r12
  401757:	41 5d                	pop    r13
  401759:	c3                   	ret

000000000040175a <handle_1>:
  40175a:	f3 0f 1e fa          	endbr64
  40175e:	41 57                	push   r15
  401760:	41 56                	push   r14
  401762:	41 55                	push   r13
  401764:	41 54                	push   r12
  401766:	55                   	push   rbp
  401767:	53                   	push   rbx
  401768:	48 89 fb             	mov    rbx,rdi
  40176b:	48 83 ec 48          	sub    rsp,0x48
  40176f:	0f b6 6f 06          	movzx  ebp,BYTE PTR [rdi+0x6]
  401773:	0f b6 57 07          	movzx  edx,BYTE PTR [rdi+0x7]
  401777:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40177e:	00 00 
  401780:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401785:	31 c0                	xor    eax,eax
  401787:	0f af ea             	imul   ebp,edx
  40178a:	48 63 ed             	movsxd rbp,ebp
  40178d:	48 c1 e5 02          	shl    rbp,0x2
  401791:	48 89 ef             	mov    rdi,rbp
  401794:	e8 a7 fa ff ff       	call   401240 <malloc@plt>
  401799:	48 85 c0             	test   rax,rax
  40179c:	75 0e                	jne    4017ac <handle_1+0x52>
  40179e:	48 8d 3d 2e 19 00 00 	lea    rdi,[rip+0x192e]        # 4030d3 <_IO_stdin_used+0xd3>
  4017a5:	e8 f6 f9 ff ff       	call   4011a0 <puts@plt>
  4017aa:	eb 57                	jmp    401803 <handle_1+0xa9>
  4017ac:	89 ea                	mov    edx,ebp
  4017ae:	48 89 c6             	mov    rsi,rax
  4017b1:	41 83 c8 ff          	or     r8d,0xffffffff
  4017b5:	31 ff                	xor    edi,edi
  4017b7:	48 8d 0d 4a 19 00 00 	lea    rcx,[rip+0x194a]        # 403108 <_IO_stdin_used+0x108>
  4017be:	49 89 c4             	mov    r12,rax
  4017c1:	e8 35 ff ff ff       	call   4016fb <read_exact>
  4017c6:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  4017ca:	0f b6 53 06          	movzx  edx,BYTE PTR [rbx+0x6]
  4017ce:	0f af d0             	imul   edx,eax
  4017d1:	31 c0                	xor    eax,eax
  4017d3:	39 c2                	cmp    edx,eax
  4017d5:	7e 34                	jle    40180b <handle_1+0xb1>
  4017d7:	41 0f b6 4c 84 03    	movzx  ecx,BYTE PTR [r12+rax*4+0x3]
  4017dd:	48 ff c0             	inc    rax
  4017e0:	8d 71 e0             	lea    esi,[rcx-0x20]
  4017e3:	40 80 fe 5e          	cmp    sil,0x5e
  4017e7:	76 ea                	jbe    4017d3 <handle_1+0x79>
  4017e9:	48 8b 3d 70 e3 00 00 	mov    rdi,QWORD PTR [rip+0xe370]        # 40fb60 <stderr@GLIBC_2.2.5>
  4017f0:	48 8d 15 2d 19 00 00 	lea    rdx,[rip+0x192d]        # 403124 <_IO_stdin_used+0x124>
  4017f7:	be 01 00 00 00       	mov    esi,0x1
  4017fc:	31 c0                	xor    eax,eax
  4017fe:	e8 8d fa ff ff       	call   401290 <__fprintf_chk@plt>
  401803:	83 cf ff             	or     edi,0xffffffff
  401806:	e8 75 fa ff ff       	call   401280 <exit@plt>
  40180b:	45 31 ed             	xor    r13d,r13d
  40180e:	4c 8d 74 24 1f       	lea    r14,[rsp+0x1f]
  401813:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401817:	44 39 e8             	cmp    eax,r13d
  40181a:	0f 8e 98 00 00 00    	jle    4018b8 <handle_1+0x15e>
  401820:	31 ed                	xor    ebp,ebp
  401822:	44 0f b6 7b 06       	movzx  r15d,BYTE PTR [rbx+0x6]
  401827:	41 39 ef             	cmp    r15d,ebp
  40182a:	0f 8e 80 00 00 00    	jle    4018b0 <handle_1+0x156>
  401830:	45 89 fa             	mov    r10d,r15d
  401833:	b9 19 00 00 00       	mov    ecx,0x19
  401838:	be 19 00 00 00       	mov    esi,0x19
  40183d:	4c 89 f7             	mov    rdi,r14
  401840:	45 0f af d5          	imul   r10d,r13d
  401844:	4c 8d 05 0b 19 00 00 	lea    r8,[rip+0x190b]        # 403156 <_IO_stdin_used+0x156>
  40184b:	41 8d 04 2a          	lea    eax,[r10+rbp*1]
  40184f:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
  401854:	48 98                	cdqe
  401856:	52                   	push   rdx
  401857:	49 8d 04 84          	lea    rax,[r12+rax*4]
  40185b:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  40185f:	52                   	push   rdx
  401860:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401864:	52                   	push   rdx
  401865:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401869:	52                   	push   rdx
  40186a:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  40186e:	ba 01 00 00 00       	mov    edx,0x1
  401873:	31 c0                	xor    eax,eax
  401875:	e8 f6 f8 ff ff       	call   401170 <__snprintf_chk@plt>
  40187a:	89 e8                	mov    eax,ebp
  40187c:	44 8b 54 24 2c       	mov    r10d,DWORD PTR [rsp+0x2c]
  401881:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  401885:	99                   	cdq
  401886:	48 83 c4 20          	add    rsp,0x20
  40188a:	ff c5                	inc    ebp
  40188c:	41 f7 ff             	idiv   r15d
  40188f:	42 8d 04 12          	lea    eax,[rdx+r10*1]
  401893:	31 d2                	xor    edx,edx
  401895:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401898:	48 6b d2 18          	imul   rdx,rdx,0x18
  40189c:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  4018a0:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  4018a3:	49 8b 46 10          	mov    rax,QWORD PTR [r14+0x10]
  4018a7:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  4018ab:	e9 72 ff ff ff       	jmp    401822 <handle_1+0xc8>
  4018b0:	41 ff c5             	inc    r13d
  4018b3:	e9 5b ff ff ff       	jmp    401813 <handle_1+0xb9>
  4018b8:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  4018bd:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4018c4:	00 00 
  4018c6:	74 05                	je     4018cd <handle_1+0x173>
  4018c8:	e8 f3 f8 ff ff       	call   4011c0 <__stack_chk_fail@plt>
  4018cd:	48 83 c4 48          	add    rsp,0x48
  4018d1:	5b                   	pop    rbx
  4018d2:	5d                   	pop    rbp
  4018d3:	41 5c                	pop    r12
  4018d5:	41 5d                	pop    r13
  4018d7:	41 5e                	pop    r14
  4018d9:	41 5f                	pop    r15
  4018db:	c3                   	ret

00000000004018dc <handle_2>:
  4018dc:	f3 0f 1e fa          	endbr64
  4018e0:	41 57                	push   r15
  4018e2:	41 83 c8 ff          	or     r8d,0xffffffff
  4018e6:	ba 01 00 00 00       	mov    edx,0x1
  4018eb:	48 8d 0d 81 18 00 00 	lea    rcx,[rip+0x1881]        # 403173 <_IO_stdin_used+0x173>
  4018f2:	41 56                	push   r14
  4018f4:	41 55                	push   r13
  4018f6:	41 54                	push   r12
  4018f8:	49 89 fc             	mov    r12,rdi
  4018fb:	31 ff                	xor    edi,edi
  4018fd:	55                   	push   rbp
  4018fe:	53                   	push   rbx
  4018ff:	48 83 ec 38          	sub    rsp,0x38
  401903:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40190a:	00 00 
  40190c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  401911:	31 c0                	xor    eax,eax
  401913:	48 8d 74 24 0d       	lea    rsi,[rsp+0xd]
  401918:	e8 de fd ff ff       	call   4016fb <read_exact>
  40191d:	41 83 c8 ff          	or     r8d,0xffffffff
  401921:	31 ff                	xor    edi,edi
  401923:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401928:	48 8d 0d 63 18 00 00 	lea    rcx,[rip+0x1863]        # 403192 <_IO_stdin_used+0x192>
  40192f:	ba 01 00 00 00       	mov    edx,0x1
  401934:	e8 c2 fd ff ff       	call   4016fb <read_exact>
  401939:	41 83 c8 ff          	or     r8d,0xffffffff
  40193d:	31 ff                	xor    edi,edi
  40193f:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
  401944:	48 8d 0d 66 18 00 00 	lea    rcx,[rip+0x1866]        # 4031b1 <_IO_stdin_used+0x1b1>
  40194b:	ba 01 00 00 00       	mov    edx,0x1
  401950:	e8 a6 fd ff ff       	call   4016fb <read_exact>
  401955:	31 ff                	xor    edi,edi
  401957:	41 83 c8 ff          	or     r8d,0xffffffff
  40195b:	ba 01 00 00 00       	mov    edx,0x1
  401960:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  401965:	48 8d 0d 63 18 00 00 	lea    rcx,[rip+0x1863]        # 4031cf <_IO_stdin_used+0x1cf>
  40196c:	e8 8a fd ff ff       	call   4016fb <read_exact>
  401971:	0f b6 5c 24 0b       	movzx  ebx,BYTE PTR [rsp+0xb]
  401976:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [rsp+0xc]
  40197b:	0f af da             	imul   ebx,edx
  40197e:	48 63 db             	movsxd rbx,ebx
  401981:	48 c1 e3 02          	shl    rbx,0x2
  401985:	48 89 df             	mov    rdi,rbx
  401988:	e8 b3 f8 ff ff       	call   401240 <malloc@plt>
  40198d:	48 85 c0             	test   rax,rax
  401990:	75 0e                	jne    4019a0 <handle_2+0xc4>
  401992:	48 8d 3d 3a 17 00 00 	lea    rdi,[rip+0x173a]        # 4030d3 <_IO_stdin_used+0xd3>
  401999:	e8 02 f8 ff ff       	call   4011a0 <puts@plt>
  40199e:	eb 58                	jmp    4019f8 <handle_2+0x11c>
  4019a0:	89 da                	mov    edx,ebx
  4019a2:	48 89 c6             	mov    rsi,rax
  4019a5:	41 83 c8 ff          	or     r8d,0xffffffff
  4019a9:	31 ff                	xor    edi,edi
  4019ab:	48 8d 0d 56 17 00 00 	lea    rcx,[rip+0x1756]        # 403108 <_IO_stdin_used+0x108>
  4019b2:	48 89 c5             	mov    rbp,rax
  4019b5:	e8 41 fd ff ff       	call   4016fb <read_exact>
  4019ba:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  4019bf:	0f b6 54 24 0b       	movzx  edx,BYTE PTR [rsp+0xb]
  4019c4:	0f af d0             	imul   edx,eax
  4019c7:	31 c0                	xor    eax,eax
  4019c9:	39 c2                	cmp    edx,eax
  4019cb:	7e 33                	jle    401a00 <handle_2+0x124>
  4019cd:	0f b6 4c 85 03       	movzx  ecx,BYTE PTR [rbp+rax*4+0x3]
  4019d2:	48 ff c0             	inc    rax
  4019d5:	8d 71 e0             	lea    esi,[rcx-0x20]
  4019d8:	40 80 fe 5e          	cmp    sil,0x5e
  4019dc:	76 eb                	jbe    4019c9 <handle_2+0xed>
  4019de:	48 8b 3d 7b e1 00 00 	mov    rdi,QWORD PTR [rip+0xe17b]        # 40fb60 <stderr@GLIBC_2.2.5>
  4019e5:	48 8d 15 38 17 00 00 	lea    rdx,[rip+0x1738]        # 403124 <_IO_stdin_used+0x124>
  4019ec:	be 01 00 00 00       	mov    esi,0x1
  4019f1:	31 c0                	xor    eax,eax
  4019f3:	e8 98 f8 ff ff       	call   401290 <__fprintf_chk@plt>
  4019f8:	83 cf ff             	or     edi,0xffffffff
  4019fb:	e8 80 f8 ff ff       	call   401280 <exit@plt>
  401a00:	45 31 ed             	xor    r13d,r13d
  401a03:	4c 8d 7c 24 0f       	lea    r15,[rsp+0xf]
  401a08:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  401a0d:	44 39 e8             	cmp    eax,r13d
  401a10:	0f 8e a7 00 00 00    	jle    401abd <handle_2+0x1e1>
  401a16:	45 31 f6             	xor    r14d,r14d
  401a19:	0f b6 4c 24 0b       	movzx  ecx,BYTE PTR [rsp+0xb]
  401a1e:	44 39 f1             	cmp    ecx,r14d
  401a21:	0f 8e 8e 00 00 00    	jle    401ab5 <handle_2+0x1d9>
  401a27:	0f b6 44 24 0d       	movzx  eax,BYTE PTR [rsp+0xd]
  401a2c:	0f b6 5c 24 0e       	movzx  ebx,BYTE PTR [rsp+0xe]
  401a31:	41 0f af cd          	imul   ecx,r13d
  401a35:	4c 89 ff             	mov    rdi,r15
  401a38:	41 0f b6 74 24 06    	movzx  esi,BYTE PTR [r12+0x6]
  401a3e:	4c 8d 05 11 17 00 00 	lea    r8,[rip+0x1711]        # 403156 <_IO_stdin_used+0x156>
  401a45:	44 01 f0             	add    eax,r14d
  401a48:	44 01 eb             	add    ebx,r13d
  401a4b:	99                   	cdq
  401a4c:	0f af de             	imul   ebx,esi
  401a4f:	44 01 f1             	add    ecx,r14d
  401a52:	41 ff c6             	inc    r14d
  401a55:	f7 fe                	idiv   esi
  401a57:	48 63 c9             	movsxd rcx,ecx
  401a5a:	be 19 00 00 00       	mov    esi,0x19
  401a5f:	48 8d 44 8d 00       	lea    rax,[rbp+rcx*4+0x0]
  401a64:	b9 19 00 00 00       	mov    ecx,0x19
  401a69:	01 d3                	add    ebx,edx
  401a6b:	52                   	push   rdx
  401a6c:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  401a70:	52                   	push   rdx
  401a71:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401a75:	52                   	push   rdx
  401a76:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401a7a:	52                   	push   rdx
  401a7b:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  401a7f:	ba 01 00 00 00       	mov    edx,0x1
  401a84:	31 c0                	xor    eax,eax
  401a86:	e8 e5 f6 ff ff       	call   401170 <__snprintf_chk@plt>
  401a8b:	89 d8                	mov    eax,ebx
  401a8d:	31 d2                	xor    edx,edx
  401a8f:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  401a93:	41 f7 74 24 0c       	div    DWORD PTR [r12+0xc]
  401a98:	48 83 c4 20          	add    rsp,0x20
  401a9c:	48 6b d2 18          	imul   rdx,rdx,0x18
  401aa0:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
  401aa5:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401aa8:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  401aac:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401ab0:	e9 64 ff ff ff       	jmp    401a19 <handle_2+0x13d>
  401ab5:	41 ff c5             	inc    r13d
  401ab8:	e9 4b ff ff ff       	jmp    401a08 <handle_2+0x12c>
  401abd:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  401ac2:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401ac9:	00 00 
  401acb:	74 05                	je     401ad2 <handle_2+0x1f6>
  401acd:	e8 ee f6 ff ff       	call   4011c0 <__stack_chk_fail@plt>
  401ad2:	48 83 c4 38          	add    rsp,0x38
  401ad6:	5b                   	pop    rbx
  401ad7:	5d                   	pop    rbp
  401ad8:	41 5c                	pop    r12
  401ada:	41 5d                	pop    r13
  401adc:	41 5e                	pop    r14
  401ade:	41 5f                	pop    r15
  401ae0:	c3                   	ret

0000000000401ae1 <handle_3>:
  401ae1:	f3 0f 1e fa          	endbr64
  401ae5:	41 54                	push   r12
  401ae7:	41 83 c8 ff          	or     r8d,0xffffffff
  401aeb:	ba 01 00 00 00       	mov    edx,0x1
  401af0:	48 8d 0d f7 16 00 00 	lea    rcx,[rip+0x16f7]        # 4031ee <_IO_stdin_used+0x1ee>
  401af7:	55                   	push   rbp
  401af8:	48 89 fd             	mov    rbp,rdi
  401afb:	31 ff                	xor    edi,edi
  401afd:	53                   	push   rbx
  401afe:	48 83 ec 10          	sub    rsp,0x10
  401b02:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401b09:	00 00 
  401b0b:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401b10:	31 c0                	xor    eax,eax
  401b12:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401b17:	e8 df fb ff ff       	call   4016fb <read_exact>
  401b1c:	48 8d 74 24 06       	lea    rsi,[rsp+0x6]
  401b21:	41 83 c8 ff          	or     r8d,0xffffffff
  401b25:	31 ff                	xor    edi,edi
  401b27:	48 8d 0d 83 16 00 00 	lea    rcx,[rip+0x1683]        # 4031b1 <_IO_stdin_used+0x1b1>
  401b2e:	ba 01 00 00 00       	mov    edx,0x1
  401b33:	e8 c3 fb ff ff       	call   4016fb <read_exact>
  401b38:	ba 01 00 00 00       	mov    edx,0x1
  401b3d:	31 ff                	xor    edi,edi
  401b3f:	41 83 c8 ff          	or     r8d,0xffffffff
  401b43:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401b48:	48 8d 0d 80 16 00 00 	lea    rcx,[rip+0x1680]        # 4031cf <_IO_stdin_used+0x1cf>
  401b4f:	e8 a7 fb ff ff       	call   4016fb <read_exact>
  401b54:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b59:	8a 54 24 06          	mov    dl,BYTE PTR [rsp+0x6]
  401b5d:	48 c1 e0 04          	shl    rax,0x4
  401b61:	48 01 e8             	add    rax,rbp
  401b64:	88 50 19             	mov    BYTE PTR [rax+0x19],dl
  401b67:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
  401b6b:	8a 54 24 07          	mov    dl,BYTE PTR [rsp+0x7]
  401b6f:	88 50 18             	mov    BYTE PTR [rax+0x18],dl
  401b72:	48 85 ff             	test   rdi,rdi
  401b75:	74 05                	je     401b7c <handle_3+0x9b>
  401b77:	e8 04 f6 ff ff       	call   401180 <free@plt>
  401b7c:	44 0f b6 64 24 06    	movzx  r12d,BYTE PTR [rsp+0x6]
  401b82:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401b87:	44 0f af e2          	imul   r12d,edx
  401b8b:	49 63 fc             	movsxd rdi,r12d
  401b8e:	e8 ad f6 ff ff       	call   401240 <malloc@plt>
  401b93:	48 89 c3             	mov    rbx,rax
  401b96:	48 85 c0             	test   rax,rax
  401b99:	75 0e                	jne    401ba9 <handle_3+0xc8>
  401b9b:	48 8d 3d 31 15 00 00 	lea    rdi,[rip+0x1531]        # 4030d3 <_IO_stdin_used+0xd3>
  401ba2:	e8 f9 f5 ff ff       	call   4011a0 <puts@plt>
  401ba7:	eb 55                	jmp    401bfe <handle_3+0x11d>
  401ba9:	44 89 e2             	mov    edx,r12d
  401bac:	48 89 c6             	mov    rsi,rax
  401baf:	41 83 c8 ff          	or     r8d,0xffffffff
  401bb3:	31 ff                	xor    edi,edi
  401bb5:	48 8d 0d 4c 15 00 00 	lea    rcx,[rip+0x154c]        # 403108 <_IO_stdin_used+0x108>
  401bbc:	e8 3a fb ff ff       	call   4016fb <read_exact>
  401bc1:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401bc6:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401bcb:	0f af d0             	imul   edx,eax
  401bce:	31 c0                	xor    eax,eax
  401bd0:	39 c2                	cmp    edx,eax
  401bd2:	7e 32                	jle    401c06 <handle_3+0x125>
  401bd4:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401bd8:	48 ff c0             	inc    rax
  401bdb:	8d 71 e0             	lea    esi,[rcx-0x20]
  401bde:	40 80 fe 5e          	cmp    sil,0x5e
  401be2:	76 ec                	jbe    401bd0 <handle_3+0xef>
  401be4:	48 8b 3d 75 df 00 00 	mov    rdi,QWORD PTR [rip+0xdf75]        # 40fb60 <stderr@GLIBC_2.2.5>
  401beb:	48 8d 15 32 15 00 00 	lea    rdx,[rip+0x1532]        # 403124 <_IO_stdin_used+0x124>
  401bf2:	be 01 00 00 00       	mov    esi,0x1
  401bf7:	31 c0                	xor    eax,eax
  401bf9:	e8 92 f6 ff ff       	call   401290 <__fprintf_chk@plt>
  401bfe:	83 cf ff             	or     edi,0xffffffff
  401c01:	e8 7a f6 ff ff       	call   401280 <exit@plt>
  401c06:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401c0b:	48 c1 e0 04          	shl    rax,0x4
  401c0f:	48 89 5c 28 20       	mov    QWORD PTR [rax+rbp*1+0x20],rbx
  401c14:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401c19:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401c20:	00 00 
  401c22:	74 05                	je     401c29 <handle_3+0x148>
  401c24:	e8 97 f5 ff ff       	call   4011c0 <__stack_chk_fail@plt>
  401c29:	48 83 c4 10          	add    rsp,0x10
  401c2d:	5b                   	pop    rbx
  401c2e:	5d                   	pop    rbp
  401c2f:	41 5c                	pop    r12
  401c31:	c3                   	ret

0000000000401c32 <handle_4>:
  401c32:	f3 0f 1e fa          	endbr64
  401c36:	41 57                	push   r15
  401c38:	41 56                	push   r14
  401c3a:	41 55                	push   r13
  401c3c:	41 54                	push   r12
  401c3e:	55                   	push   rbp
  401c3f:	53                   	push   rbx
  401c40:	4c 8d 9c 24 00 00 fc 	lea    r11,[rsp-0x40000]
  401c47:	ff 
  401c48:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401c4f:	83 0c 24 00          	or     DWORD PTR [rsp],0x0
  401c53:	4c 39 dc             	cmp    rsp,r11
  401c56:	75 f0                	jne    401c48 <handle_4+0x16>
  401c58:	48 83 ec 48          	sub    rsp,0x48
  401c5c:	48 8d 0d ad 15 00 00 	lea    rcx,[rip+0x15ad]        # 403210 <_IO_stdin_used+0x210>
  401c63:	ba 09 00 00 00       	mov    edx,0x9
  401c68:	41 83 c8 ff          	or     r8d,0xffffffff
  401c6c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401c73:	00 00 
  401c75:	48 89 84 24 38 00 04 	mov    QWORD PTR [rsp+0x40038],rax
  401c7c:	00 
  401c7d:	31 c0                	xor    eax,eax
  401c7f:	48 89 fb             	mov    rbx,rdi
  401c82:	48 8d 74 24 16       	lea    rsi,[rsp+0x16]
  401c87:	31 ff                	xor    edi,edi
  401c89:	e8 6d fa ff ff       	call   4016fb <read_exact>
  401c8e:	48 8d 7c 24 1f       	lea    rdi,[rsp+0x1f]
  401c93:	b9 00 00 01 00       	mov    ecx,0x10000
  401c98:	31 c0                	xor    eax,eax
  401c9a:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401c9f:	44 8a 54 24 17       	mov    r10b,BYTE PTR [rsp+0x17]
  401ca4:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
  401ca9:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401cab:	44 8a 5c 24 18       	mov    r11b,BYTE PTR [rsp+0x18]
  401cb0:	40 8a 6c 24 19       	mov    bpl,BYTE PTR [rsp+0x19]
  401cb5:	48 c1 e2 04          	shl    rdx,0x4
  401cb9:	48 01 da             	add    rdx,rbx
  401cbc:	44 0f b6 62 18       	movzx  r12d,BYTE PTR [rdx+0x18]
  401cc1:	41 39 cc             	cmp    r12d,ecx
  401cc4:	7e 58                	jle    401d1e <handle_4+0xec>
  401cc6:	44 0f b6 42 19       	movzx  r8d,BYTE PTR [rdx+0x19]
  401ccb:	31 ff                	xor    edi,edi
  401ccd:	44 89 c0             	mov    eax,r8d
  401cd0:	0f af c1             	imul   eax,ecx
  401cd3:	41 39 f8             	cmp    r8d,edi
  401cd6:	7e 42                	jle    401d1a <handle_4+0xe8>
  401cd8:	4c 8b 4a 20          	mov    r9,QWORD PTR [rdx+0x20]
  401cdc:	44 88 14 86          	mov    BYTE PTR [rsi+rax*4],r10b
  401ce0:	44 88 5c 86 01       	mov    BYTE PTR [rsi+rax*4+0x1],r11b
  401ce5:	40 88 6c 86 02       	mov    BYTE PTR [rsi+rax*4+0x2],bpl
  401cea:	4d 85 c9             	test   r9,r9
  401ced:	75 1b                	jne    401d0a <handle_4+0xd8>
  401cef:	48 8b 35 6a de 00 00 	mov    rsi,QWORD PTR [rip+0xde6a]        # 40fb60 <stderr@GLIBC_2.2.5>
  401cf6:	48 8d 3d 40 15 00 00 	lea    rdi,[rip+0x1540]        # 40323d <_IO_stdin_used+0x23d>
  401cfd:	e8 de f4 ff ff       	call   4011e0 <fputs@plt>
  401d02:	83 cf ff             	or     edi,0xffffffff
  401d05:	e8 76 f5 ff ff       	call   401280 <exit@plt>
  401d0a:	45 8a 0c 01          	mov    r9b,BYTE PTR [r9+rax*1]
  401d0e:	ff c7                	inc    edi
  401d10:	44 88 4c 86 03       	mov    BYTE PTR [rsi+rax*4+0x3],r9b
  401d15:	48 ff c0             	inc    rax
  401d18:	eb b9                	jmp    401cd3 <handle_4+0xa1>
  401d1a:	ff c1                	inc    ecx
  401d1c:	eb a3                	jmp    401cc1 <handle_4+0x8f>
  401d1e:	45 31 ff             	xor    r15d,r15d
  401d21:	48 8d bc 24 1f 00 04 	lea    rdi,[rsp+0x4001f]
  401d28:	00 
  401d29:	0f b6 44 24 1d       	movzx  eax,BYTE PTR [rsp+0x1d]
  401d2e:	44 39 f8             	cmp    eax,r15d
  401d31:	0f 8e 2c 01 00 00    	jle    401e63 <handle_4+0x231>
  401d37:	45 31 d2             	xor    r10d,r10d
  401d3a:	0f b6 44 24 1c       	movzx  eax,BYTE PTR [rsp+0x1c]
  401d3f:	44 39 d0             	cmp    eax,r10d
  401d42:	0f 8e 13 01 00 00    	jle    401e5b <handle_4+0x229>
  401d48:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401d4d:	45 31 db             	xor    r11d,r11d
  401d50:	48 c1 e2 04          	shl    rdx,0x4
  401d54:	48 01 da             	add    rdx,rbx
  401d57:	8a 42 19             	mov    al,BYTE PTR [rdx+0x19]
  401d5a:	41 0f af c2          	imul   eax,r10d
  401d5e:	02 44 24 1a          	add    al,BYTE PTR [rsp+0x1a]
  401d62:	44 0f b6 e0          	movzx  r12d,al
  401d66:	8a 42 18             	mov    al,BYTE PTR [rdx+0x18]
  401d69:	41 0f af c7          	imul   eax,r15d
  401d6d:	02 44 24 1b          	add    al,BYTE PTR [rsp+0x1b]
  401d71:	0f b6 e8             	movzx  ebp,al
  401d74:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d79:	48 c1 e0 04          	shl    rax,0x4
  401d7d:	0f b6 44 18 18       	movzx  eax,BYTE PTR [rax+rbx*1+0x18]
  401d82:	44 39 d8             	cmp    eax,r11d
  401d85:	0f 8e c8 00 00 00    	jle    401e53 <handle_4+0x221>
  401d8b:	45 31 ed             	xor    r13d,r13d
  401d8e:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d93:	48 c1 e0 04          	shl    rax,0x4
  401d97:	0f b6 44 18 19       	movzx  eax,BYTE PTR [rax+rbx*1+0x19]
  401d9c:	44 39 e8             	cmp    eax,r13d
  401d9f:	0f 8e a4 00 00 00    	jle    401e49 <handle_4+0x217>
  401da5:	41 0f af c3          	imul   eax,r11d
  401da9:	44 01 e8             	add    eax,r13d
  401dac:	48 98                	cdqe
  401dae:	0f b6 54 84 22       	movzx  edx,BYTE PTR [rsp+rax*4+0x22]
  401db3:	3a 54 24 1e          	cmp    dl,BYTE PTR [rsp+0x1e]
  401db7:	0f 84 84 00 00 00    	je     401e41 <handle_4+0x20f>
  401dbd:	44 89 5c 24 0c       	mov    DWORD PTR [rsp+0xc],r11d
  401dc2:	be 19 00 00 00       	mov    esi,0x19
  401dc7:	44 0f b6 73 06       	movzx  r14d,BYTE PTR [rbx+0x6]
  401dcc:	4c 8d 05 83 13 00 00 	lea    r8,[rip+0x1383]        # 403156 <_IO_stdin_used+0x156>
  401dd3:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  401dd8:	51                   	push   rcx
  401dd9:	b9 19 00 00 00       	mov    ecx,0x19
  401dde:	52                   	push   rdx
  401ddf:	0f b6 54 84 31       	movzx  edx,BYTE PTR [rsp+rax*4+0x31]
  401de4:	52                   	push   rdx
  401de5:	0f b6 54 84 38       	movzx  edx,BYTE PTR [rsp+rax*4+0x38]
  401dea:	52                   	push   rdx
  401deb:	44 0f b6 4c 84 3f    	movzx  r9d,BYTE PTR [rsp+rax*4+0x3f]
  401df1:	ba 01 00 00 00       	mov    edx,0x1
  401df6:	31 c0                	xor    eax,eax
  401df8:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  401dfd:	e8 6e f3 ff ff       	call   401170 <__snprintf_chk@plt>
  401e02:	43 8d 44 25 00       	lea    eax,[r13+r12*1+0x0]
  401e07:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401e0c:	44 8b 5c 24 2c       	mov    r11d,DWORD PTR [rsp+0x2c]
  401e11:	99                   	cdq
  401e12:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
  401e17:	48 83 c4 20          	add    rsp,0x20
  401e1b:	41 f7 fe             	idiv   r14d
  401e1e:	0f 10 07             	movups xmm0,XMMWORD PTR [rdi]
  401e21:	44 0f af f5          	imul   r14d,ebp
  401e25:	42 8d 04 32          	lea    eax,[rdx+r14*1]
  401e29:	31 d2                	xor    edx,edx
  401e2b:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401e2e:	48 6b d2 18          	imul   rdx,rdx,0x18
  401e32:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  401e36:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401e39:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401e3d:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401e41:	41 ff c5             	inc    r13d
  401e44:	e9 45 ff ff ff       	jmp    401d8e <handle_4+0x15c>
  401e49:	41 ff c3             	inc    r11d
  401e4c:	ff c5                	inc    ebp
  401e4e:	e9 21 ff ff ff       	jmp    401d74 <handle_4+0x142>
  401e53:	41 ff c2             	inc    r10d
  401e56:	e9 df fe ff ff       	jmp    401d3a <handle_4+0x108>
  401e5b:	41 ff c7             	inc    r15d
  401e5e:	e9 c6 fe ff ff       	jmp    401d29 <handle_4+0xf7>
  401e63:	48 8b 84 24 38 00 04 	mov    rax,QWORD PTR [rsp+0x40038]
  401e6a:	00 
  401e6b:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401e72:	00 00 
  401e74:	74 05                	je     401e7b <handle_4+0x249>
  401e76:	e8 45 f3 ff ff       	call   4011c0 <__stack_chk_fail@plt>
  401e7b:	48 81 c4 48 00 04 00 	add    rsp,0x40048
  401e82:	5b                   	pop    rbx
  401e83:	5d                   	pop    rbp
  401e84:	41 5c                	pop    r12
  401e86:	41 5d                	pop    r13
  401e88:	41 5e                	pop    r14
  401e8a:	41 5f                	pop    r15
  401e8c:	c3                   	ret

0000000000401e8d <display>:
  401e8d:	f3 0f 1e fa          	endbr64
  401e91:	41 54                	push   r12
  401e93:	45 31 e4             	xor    r12d,r12d
  401e96:	55                   	push   rbp
  401e97:	48 89 fd             	mov    rbp,rdi
  401e9a:	53                   	push   rbx
  401e9b:	48 8d 1d cd 13 00 00 	lea    rbx,[rip+0x13cd]        # 40326f <_IO_stdin_used+0x26f>
  401ea2:	0f b6 45 07          	movzx  eax,BYTE PTR [rbp+0x7]
  401ea6:	44 39 e0             	cmp    eax,r12d
  401ea9:	7e 3e                	jle    401ee9 <display+0x5c>
  401eab:	0f b6 55 06          	movzx  edx,BYTE PTR [rbp+0x6]
  401eaf:	bf 01 00 00 00       	mov    edi,0x1
  401eb4:	48 89 d0             	mov    rax,rdx
  401eb7:	48 6b d2 18          	imul   rdx,rdx,0x18
  401ebb:	0f b6 f0             	movzx  esi,al
  401ebe:	41 0f af f4          	imul   esi,r12d
  401ec2:	41 ff c4             	inc    r12d
  401ec5:	48 63 f6             	movsxd rsi,esi
  401ec8:	48 6b f6 18          	imul   rsi,rsi,0x18
  401ecc:	48 03 75 10          	add    rsi,QWORD PTR [rbp+0x10]
  401ed0:	e8 db f2 ff ff       	call   4011b0 <write@plt>
  401ed5:	ba 18 00 00 00       	mov    edx,0x18
  401eda:	48 89 de             	mov    rsi,rbx
  401edd:	bf 01 00 00 00       	mov    edi,0x1
  401ee2:	e8 c9 f2 ff ff       	call   4011b0 <write@plt>
  401ee7:	eb b9                	jmp    401ea2 <display+0x15>
  401ee9:	5b                   	pop    rbx
  401eea:	5d                   	pop    rbp
  401eeb:	41 5c                	pop    r12
  401eed:	c3                   	ret

0000000000401eee <initialize_framebuffer>:
  401eee:	f3 0f 1e fa          	endbr64
  401ef2:	41 54                	push   r12
  401ef4:	49 89 fc             	mov    r12,rdi
  401ef7:	55                   	push   rbp
  401ef8:	53                   	push   rbx
  401ef9:	48 83 ec 30          	sub    rsp,0x30
  401efd:	0f b6 7f 06          	movzx  edi,BYTE PTR [rdi+0x6]
  401f01:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401f08:	00 00 
  401f0a:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  401f0f:	31 c0                	xor    eax,eax
  401f11:	41 0f b6 44 24 07    	movzx  eax,BYTE PTR [r12+0x7]
  401f17:	0f af f8             	imul   edi,eax
  401f1a:	41 89 7c 24 0c       	mov    DWORD PTR [r12+0xc],edi
  401f1f:	48 63 ff             	movsxd rdi,edi
  401f22:	48 6b ff 18          	imul   rdi,rdi,0x18
  401f26:	48 ff c7             	inc    rdi
  401f29:	e8 12 f3 ff ff       	call   401240 <malloc@plt>
  401f2e:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  401f33:	48 85 c0             	test   rax,rax
  401f36:	75 14                	jne    401f4c <initialize_framebuffer+0x5e>
  401f38:	48 8d 3d 49 13 00 00 	lea    rdi,[rip+0x1349]        # 403288 <_IO_stdin_used+0x288>
  401f3f:	e8 5c f2 ff ff       	call   4011a0 <puts@plt>
  401f44:	83 cf ff             	or     edi,0xffffffff
  401f47:	e8 34 f3 ff ff       	call   401280 <exit@plt>
  401f4c:	31 db                	xor    ebx,ebx
  401f4e:	48 8d 6c 24 0f       	lea    rbp,[rsp+0xf]
  401f53:	41 39 5c 24 0c       	cmp    DWORD PTR [r12+0xc],ebx
  401f58:	76 54                	jbe    401fae <initialize_framebuffer+0xc0>
  401f5a:	50                   	push   rax
  401f5b:	ba 01 00 00 00       	mov    edx,0x1
  401f60:	41 b9 ff 00 00 00    	mov    r9d,0xff
  401f66:	48 89 ef             	mov    rdi,rbp
  401f69:	6a 20                	push   0x20
  401f6b:	4c 8d 05 e4 11 00 00 	lea    r8,[rip+0x11e4]        # 403156 <_IO_stdin_used+0x156>
  401f72:	b9 19 00 00 00       	mov    ecx,0x19
  401f77:	31 c0                	xor    eax,eax
  401f79:	68 ff 00 00 00       	push   0xff
  401f7e:	be 19 00 00 00       	mov    esi,0x19
  401f83:	68 ff 00 00 00       	push   0xff
  401f88:	e8 e3 f1 ff ff       	call   401170 <__snprintf_chk@plt>
  401f8d:	0f 10 45 00          	movups xmm0,XMMWORD PTR [rbp+0x0]
  401f91:	48 6b c3 18          	imul   rax,rbx,0x18
  401f95:	48 ff c3             	inc    rbx
  401f98:	49 03 44 24 10       	add    rax,QWORD PTR [r12+0x10]
  401f9d:	48 83 c4 20          	add    rsp,0x20
  401fa1:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  401fa4:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  401fa8:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  401fac:	eb a5                	jmp    401f53 <initialize_framebuffer+0x65>
  401fae:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  401fb3:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401fba:	00 00 
  401fbc:	74 05                	je     401fc3 <initialize_framebuffer+0xd5>
  401fbe:	e8 fd f1 ff ff       	call   4011c0 <__stack_chk_fail@plt>
  401fc3:	48 83 c4 30          	add    rsp,0x30
  401fc7:	4c 89 e0             	mov    rax,r12
  401fca:	5b                   	pop    rbx
  401fcb:	5d                   	pop    rbp
  401fcc:	41 5c                	pop    r12
  401fce:	c3                   	ret
  401fcf:	90                   	nop

0000000000401fd0 <__libc_csu_init>:
  401fd0:	f3 0f 1e fa          	endbr64
  401fd4:	41 57                	push   r15
  401fd6:	4c 8d 3d 53 2d 00 00 	lea    r15,[rip+0x2d53]        # 404d30 <__frame_dummy_init_array_entry>
  401fdd:	41 56                	push   r14
  401fdf:	49 89 d6             	mov    r14,rdx
  401fe2:	41 55                	push   r13
  401fe4:	49 89 f5             	mov    r13,rsi
  401fe7:	41 54                	push   r12
  401fe9:	41 89 fc             	mov    r12d,edi
  401fec:	55                   	push   rbp
  401fed:	48 8d 2d 4c 2d 00 00 	lea    rbp,[rip+0x2d4c]        # 404d40 <__do_global_dtors_aux_fini_array_entry>
  401ff4:	53                   	push   rbx
  401ff5:	4c 29 fd             	sub    rbp,r15
  401ff8:	48 83 ec 08          	sub    rsp,0x8
  401ffc:	e8 ff ef ff ff       	call   401000 <_init>
  402001:	48 c1 fd 03          	sar    rbp,0x3
  402005:	74 1f                	je     402026 <__libc_csu_init+0x56>
  402007:	31 db                	xor    ebx,ebx
  402009:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402010:	4c 89 f2             	mov    rdx,r14
  402013:	4c 89 ee             	mov    rsi,r13
  402016:	44 89 e7             	mov    edi,r12d
  402019:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40201d:	48 83 c3 01          	add    rbx,0x1
  402021:	48 39 dd             	cmp    rbp,rbx
  402024:	75 ea                	jne    402010 <__libc_csu_init+0x40>
  402026:	48 83 c4 08          	add    rsp,0x8
  40202a:	5b                   	pop    rbx
  40202b:	5d                   	pop    rbp
  40202c:	41 5c                	pop    r12
  40202e:	41 5d                	pop    r13
  402030:	41 5e                	pop    r14
  402032:	41 5f                	pop    r15
  402034:	c3                   	ret
  402035:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40203c:	00 00 00 00 

0000000000402040 <__libc_csu_fini>:
  402040:	f3 0f 1e fa          	endbr64
  402044:	c3                   	ret

Disassembly of section .fini:

0000000000402048 <_fini>:
  402048:	f3 0f 1e fa          	endbr64
  40204c:	48 83 ec 08          	sub    rsp,0x8
  402050:	48 83 c4 08          	add    rsp,0x8
  402054:	c3                   	ret
