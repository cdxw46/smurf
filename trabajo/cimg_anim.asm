
cimg_anim:     file format elf64-x86-64


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
  401020:	ff 35 22 3f 00 00    	push   QWORD PTR [rip+0x3f22]        # 404f48 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 23 3f 00 00 	bnd jmp QWORD PTR [rip+0x3f23]        # 404f50 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.sec:

0000000000401160 <__snprintf_chk@plt>:
  401160:	f3 0f 1e fa          	endbr64
  401164:	f2 ff 25 ed 3d 00 00 	bnd jmp QWORD PTR [rip+0x3ded]        # 404f58 <__snprintf_chk@GLIBC_2.3.4>
  40116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401170 <free@plt>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	f2 ff 25 e5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3de5]        # 404f60 <free@GLIBC_2.2.5>
  40117b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401180 <strncmp@plt>:
  401180:	f3 0f 1e fa          	endbr64
  401184:	f2 ff 25 dd 3d 00 00 	bnd jmp QWORD PTR [rip+0x3ddd]        # 404f68 <strncmp@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401190 <puts@plt>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	f2 ff 25 d5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dd5]        # 404f70 <puts@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <write@plt>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	f2 ff 25 cd 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dcd]        # 404f78 <write@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <__stack_chk_fail@plt>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	f2 ff 25 c5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dc5]        # 404f80 <__stack_chk_fail@GLIBC_2.4>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <dup2@plt>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	f2 ff 25 bd 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dbd]        # 404f88 <dup2@GLIBC_2.2.5>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <nanosleep@plt>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	f2 ff 25 b5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3db5]        # 404f90 <nanosleep@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <fputs@plt>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	f2 ff 25 ad 3d 00 00 	bnd jmp QWORD PTR [rip+0x3dad]        # 404f98 <fputs@GLIBC_2.2.5>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <close@plt>:
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	f2 ff 25 a5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3da5]        # 404fa0 <close@GLIBC_2.2.5>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <fputc@plt>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	f2 ff 25 9d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d9d]        # 404fa8 <fputc@GLIBC_2.2.5>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <read@plt>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	f2 ff 25 95 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d95]        # 404fb0 <read@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <strcmp@plt>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	f2 ff 25 8d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d8d]        # 404fb8 <strcmp@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401230 <malloc@plt>:
  401230:	f3 0f 1e fa          	endbr64
  401234:	f2 ff 25 85 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d85]        # 404fc0 <malloc@GLIBC_2.2.5>
  40123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401240 <__printf_chk@plt>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	f2 ff 25 7d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d7d]        # 404fc8 <__printf_chk@GLIBC_2.3.4>
  40124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401250 <setvbuf@plt>:
  401250:	f3 0f 1e fa          	endbr64
  401254:	f2 ff 25 75 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d75]        # 404fd0 <setvbuf@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401260 <open@plt>:
  401260:	f3 0f 1e fa          	endbr64
  401264:	f2 ff 25 6d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d6d]        # 404fd8 <open@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401270 <exit@plt>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	f2 ff 25 65 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d65]        # 404fe0 <exit@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401280 <__fprintf_chk@plt>:
  401280:	f3 0f 1e fa          	endbr64
  401284:	f2 ff 25 5d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d5d]        # 404fe8 <__fprintf_chk@GLIBC_2.3.4>
  40128b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000401290 <disable_buffering>:
  401290:	f3 0f 1e fa          	endbr64
  401294:	50                   	push   rax
  401295:	48 8b 3d 94 3d 00 00 	mov    rdi,QWORD PTR [rip+0x3d94]        # 405030 <stdin@GLIBC_2.2.5>
  40129c:	31 c9                	xor    ecx,ecx
  40129e:	ba 02 00 00 00       	mov    edx,0x2
  4012a3:	31 f6                	xor    esi,esi
  4012a5:	e8 a6 ff ff ff       	call   401250 <setvbuf@plt>
  4012aa:	48 8b 3d 6f 3d 00 00 	mov    rdi,QWORD PTR [rip+0x3d6f]        # 405020 <stdout@GLIBC_2.2.5>
  4012b1:	b9 01 00 00 00       	mov    ecx,0x1
  4012b6:	31 f6                	xor    esi,esi
  4012b8:	ba 02 00 00 00       	mov    edx,0x2
  4012bd:	41 58                	pop    r8
  4012bf:	e9 8c ff ff ff       	jmp    401250 <setvbuf@plt>

00000000004012c4 <main>:
  4012c4:	f3 0f 1e fa          	endbr64
  4012c8:	41 54                	push   r12
  4012ca:	55                   	push   rbp
  4012cb:	53                   	push   rbx
  4012cc:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  4012d3:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
  4012d8:	48 83 ec 30          	sub    rsp,0x30
  4012dc:	b9 06 04 00 00       	mov    ecx,0x406
  4012e1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4012e8:	00 00 
  4012ea:	48 89 84 24 28 10 00 	mov    QWORD PTR [rsp+0x1028],rax
  4012f1:	00 
  4012f2:	31 c0                	xor    eax,eax
  4012f4:	41 89 f8             	mov    r8d,edi
  4012f7:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  4012fc:	48 8d 6c 24 10       	lea    rbp,[rsp+0x10]
  401301:	41 ff c8             	dec    r8d
  401304:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401306:	7e 4f                	jle    401357 <main+0x93>
  401308:	4c 8b 66 08          	mov    r12,QWORD PTR [rsi+0x8]
  40130c:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
  401310:	48 8d 35 9f 1f 00 00 	lea    rsi,[rip+0x1f9f]        # 4032b6 <_IO_stdin_used+0x2b6>
  401317:	4c 89 e7             	mov    rdi,r12
  40131a:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40131c:	48 f7 d1             	not    rcx
  40131f:	49 8d 7c 0c fa       	lea    rdi,[r12+rcx*1-0x6]
  401324:	e8 f7 fe ff ff       	call   401220 <strcmp@plt>
  401329:	85 c0                	test   eax,eax
  40132b:	74 15                	je     401342 <main+0x7e>
  40132d:	48 8d 35 88 1f 00 00 	lea    rsi,[rip+0x1f88]        # 4032bc <_IO_stdin_used+0x2bc>
  401334:	bf 01 00 00 00       	mov    edi,0x1
  401339:	31 c0                	xor    eax,eax
  40133b:	e8 00 ff ff ff       	call   401240 <__printf_chk@plt>
  401340:	eb 45                	jmp    401387 <main+0xc3>
  401342:	31 f6                	xor    esi,esi
  401344:	4c 89 e7             	mov    rdi,r12
  401347:	31 c0                	xor    eax,eax
  401349:	e8 12 ff ff ff       	call   401260 <open@plt>
  40134e:	31 f6                	xor    esi,esi
  401350:	89 c7                	mov    edi,eax
  401352:	e8 69 fe ff ff       	call   4011c0 <dup2@plt>
  401357:	41 83 c8 ff          	or     r8d,0xffffffff
  40135b:	31 ff                	xor    edi,edi
  40135d:	48 8d 0d 77 1f 00 00 	lea    rcx,[rip+0x1f77]        # 4032db <_IO_stdin_used+0x2db>
  401364:	48 89 ee             	mov    rsi,rbp
  401367:	ba 0c 00 00 00       	mov    edx,0xc
  40136c:	e8 f5 01 00 00       	call   401566 <read_exact>
  401371:	81 7c 24 10 63 49 4d 	cmp    DWORD PTR [rsp+0x10],0x474d4963
  401378:	47 
  401379:	74 14                	je     40138f <main+0xcb>
  40137b:	48 8d 3d 77 1f 00 00 	lea    rdi,[rip+0x1f77]        # 4032f9 <_IO_stdin_used+0x2f9>
  401382:	e8 09 fe ff ff       	call   401190 <puts@plt>
  401387:	83 cf ff             	or     edi,0xffffffff
  40138a:	e8 e1 fe ff ff       	call   401270 <exit@plt>
  40138f:	66 83 7c 24 14 04    	cmp    WORD PTR [rsp+0x14],0x4
  401395:	48 8d 3d 7a 1f 00 00 	lea    rdi,[rip+0x1f7a]        # 403316 <_IO_stdin_used+0x316>
  40139c:	75 e4                	jne    401382 <main+0xbe>
  40139e:	48 89 ef             	mov    rdi,rbp
  4013a1:	48 8d 1d d4 1f 00 00 	lea    rbx,[rip+0x1fd4]        # 40337c <_IO_stdin_used+0x37c>
  4013a8:	e8 27 0c 00 00       	call   401fd4 <initialize_framebuffer>
  4013ad:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4013b1:	8d 50 ff             	lea    edx,[rax-0x1]
  4013b4:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  4013b8:	85 c0                	test   eax,eax
  4013ba:	0f 84 8a 00 00 00    	je     40144a <main+0x186>
  4013c0:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  4013c5:	41 83 c8 ff          	or     r8d,0xffffffff
  4013c9:	ba 02 00 00 00       	mov    edx,0x2
  4013ce:	31 ff                	xor    edi,edi
  4013d0:	48 8d 0d 5b 1f 00 00 	lea    rcx,[rip+0x1f5b]        # 403332 <_IO_stdin_used+0x332>
  4013d7:	e8 8a 01 00 00       	call   401566 <read_exact>
  4013dc:	0f b7 4c 24 0e       	movzx  ecx,WORD PTR [rsp+0xe]
  4013e1:	8d 41 ff             	lea    eax,[rcx-0x1]
  4013e4:	66 83 f8 06          	cmp    ax,0x6
  4013e8:	77 41                	ja     40142b <main+0x167>
  4013ea:	0f b7 c0             	movzx  eax,ax
  4013ed:	48 89 ef             	mov    rdi,rbp
  4013f0:	48 63 04 83          	movsxd rax,DWORD PTR [rbx+rax*4]
  4013f4:	48 01 d8             	add    rax,rbx
  4013f7:	3e ff e0             	notrack jmp rax
  4013fa:	e8 b7 01 00 00       	call   4015b6 <handle_1>
  4013ff:	eb ac                	jmp    4013ad <main+0xe9>
  401401:	e8 32 03 00 00       	call   401738 <handle_2>
  401406:	eb a5                	jmp    4013ad <main+0xe9>
  401408:	e8 30 05 00 00       	call   40193d <handle_3>
  40140d:	eb 9e                	jmp    4013ad <main+0xe9>
  40140f:	e8 12 08 00 00       	call   401c26 <handle_4>
  401414:	eb 97                	jmp    4013ad <main+0xe9>
  401416:	e8 73 06 00 00       	call   401a8e <handle_5>
  40141b:	eb 90                	jmp    4013ad <main+0xe9>
  40141d:	e8 39 0b 00 00       	call   401f5b <handle_6>
  401422:	eb 89                	jmp    4013ad <main+0xe9>
  401424:	e8 58 0a 00 00       	call   401e81 <handle_7>
  401429:	eb 82                	jmp    4013ad <main+0xe9>
  40142b:	48 8b 3d 0e 3c 00 00 	mov    rdi,QWORD PTR [rip+0x3c0e]        # 405040 <stderr@GLIBC_2.2.5>
  401432:	48 8d 15 20 1f 00 00 	lea    rdx,[rip+0x1f20]        # 403359 <_IO_stdin_used+0x359>
  401439:	be 01 00 00 00       	mov    esi,0x1
  40143e:	31 c0                	xor    eax,eax
  401440:	e8 3b fe ff ff       	call   401280 <__fprintf_chk@plt>
  401445:	e9 3d ff ff ff       	jmp    401387 <main+0xc3>
  40144a:	31 f6                	xor    esi,esi
  40144c:	48 89 ef             	mov    rdi,rbp
  40144f:	e8 a6 0a 00 00       	call   401efa <display>
  401454:	48 8b 84 24 28 10 00 	mov    rax,QWORD PTR [rsp+0x1028]
  40145b:	00 
  40145c:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401463:	00 00 
  401465:	74 05                	je     40146c <main+0x1a8>
  401467:	e8 44 fd ff ff       	call   4011b0 <__stack_chk_fail@plt>
  40146c:	48 81 c4 30 10 00 00 	add    rsp,0x1030
  401473:	31 c0                	xor    eax,eax
  401475:	5b                   	pop    rbx
  401476:	5d                   	pop    rbp
  401477:	41 5c                	pop    r12
  401479:	c3                   	ret
  40147a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000401480 <_start>:
  401480:	f3 0f 1e fa          	endbr64
  401484:	31 ed                	xor    ebp,ebp
  401486:	49 89 d1             	mov    r9,rdx
  401489:	5e                   	pop    rsi
  40148a:	48 89 e2             	mov    rdx,rsp
  40148d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401491:	50                   	push   rax
  401492:	54                   	push   rsp
  401493:	49 c7 c0 30 21 40 00 	mov    r8,0x402130
  40149a:	48 c7 c1 c0 20 40 00 	mov    rcx,0x4020c0
  4014a1:	48 c7 c7 c4 12 40 00 	mov    rdi,0x4012c4
  4014a8:	ff 15 42 3b 00 00    	call   QWORD PTR [rip+0x3b42]        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  4014ae:	f4                   	hlt
  4014af:	90                   	nop

00000000004014b0 <_dl_relocate_static_pie>:
  4014b0:	f3 0f 1e fa          	endbr64
  4014b4:	c3                   	ret
  4014b5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4014bc:	00 00 00 
  4014bf:	90                   	nop

00000000004014c0 <deregister_tm_clones>:
  4014c0:	b8 10 50 40 00       	mov    eax,0x405010
  4014c5:	48 3d 10 50 40 00    	cmp    rax,0x405010
  4014cb:	74 13                	je     4014e0 <deregister_tm_clones+0x20>
  4014cd:	b8 00 00 00 00       	mov    eax,0x0
  4014d2:	48 85 c0             	test   rax,rax
  4014d5:	74 09                	je     4014e0 <deregister_tm_clones+0x20>
  4014d7:	bf 10 50 40 00       	mov    edi,0x405010
  4014dc:	ff e0                	jmp    rax
  4014de:	66 90                	xchg   ax,ax
  4014e0:	c3                   	ret
  4014e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4014e8:	00 00 00 00 
  4014ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004014f0 <register_tm_clones>:
  4014f0:	be 10 50 40 00       	mov    esi,0x405010
  4014f5:	48 81 ee 10 50 40 00 	sub    rsi,0x405010
  4014fc:	48 89 f0             	mov    rax,rsi
  4014ff:	48 c1 ee 3f          	shr    rsi,0x3f
  401503:	48 c1 f8 03          	sar    rax,0x3
  401507:	48 01 c6             	add    rsi,rax
  40150a:	48 d1 fe             	sar    rsi,1
  40150d:	74 11                	je     401520 <register_tm_clones+0x30>
  40150f:	b8 00 00 00 00       	mov    eax,0x0
  401514:	48 85 c0             	test   rax,rax
  401517:	74 07                	je     401520 <register_tm_clones+0x30>
  401519:	bf 10 50 40 00       	mov    edi,0x405010
  40151e:	ff e0                	jmp    rax
  401520:	c3                   	ret
  401521:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401528:	00 00 00 00 
  40152c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401530 <__do_global_dtors_aux>:
  401530:	f3 0f 1e fa          	endbr64
  401534:	80 3d 0d 3b 00 00 00 	cmp    BYTE PTR [rip+0x3b0d],0x0        # 405048 <completed.8061>
  40153b:	75 13                	jne    401550 <__do_global_dtors_aux+0x20>
  40153d:	55                   	push   rbp
  40153e:	48 89 e5             	mov    rbp,rsp
  401541:	e8 7a ff ff ff       	call   4014c0 <deregister_tm_clones>
  401546:	c6 05 fb 3a 00 00 01 	mov    BYTE PTR [rip+0x3afb],0x1        # 405048 <completed.8061>
  40154d:	5d                   	pop    rbp
  40154e:	c3                   	ret
  40154f:	90                   	nop
  401550:	c3                   	ret
  401551:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401558:	00 00 00 00 
  40155c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401560 <frame_dummy>:
  401560:	f3 0f 1e fa          	endbr64
  401564:	eb 8a                	jmp    4014f0 <register_tm_clones>

0000000000401566 <read_exact>:
  401566:	f3 0f 1e fa          	endbr64
  40156a:	41 54                	push   r12
  40156c:	48 63 d2             	movsxd rdx,edx
  40156f:	49 89 cc             	mov    r12,rcx
  401572:	55                   	push   rbp
  401573:	44 89 c5             	mov    ebp,r8d
  401576:	53                   	push   rbx
  401577:	48 89 d3             	mov    rbx,rdx
  40157a:	e8 91 fc ff ff       	call   401210 <read@plt>
  40157f:	39 c3                	cmp    ebx,eax
  401581:	74 2e                	je     4015b1 <read_exact+0x4b>
  401583:	48 8b 3d b6 3a 00 00 	mov    rdi,QWORD PTR [rip+0x3ab6]        # 405040 <stderr@GLIBC_2.2.5>
  40158a:	4c 89 e2             	mov    rdx,r12
  40158d:	be 01 00 00 00       	mov    esi,0x1
  401592:	31 c0                	xor    eax,eax
  401594:	e8 e7 fc ff ff       	call   401280 <__fprintf_chk@plt>
  401599:	48 8b 35 a0 3a 00 00 	mov    rsi,QWORD PTR [rip+0x3aa0]        # 405040 <stderr@GLIBC_2.2.5>
  4015a0:	bf 0a 00 00 00       	mov    edi,0xa
  4015a5:	e8 56 fc ff ff       	call   401200 <fputc@plt>
  4015aa:	89 ef                	mov    edi,ebp
  4015ac:	e8 bf fc ff ff       	call   401270 <exit@plt>
  4015b1:	5b                   	pop    rbx
  4015b2:	5d                   	pop    rbp
  4015b3:	41 5c                	pop    r12
  4015b5:	c3                   	ret

00000000004015b6 <handle_1>:
  4015b6:	f3 0f 1e fa          	endbr64
  4015ba:	41 57                	push   r15
  4015bc:	41 56                	push   r14
  4015be:	41 55                	push   r13
  4015c0:	41 54                	push   r12
  4015c2:	55                   	push   rbp
  4015c3:	53                   	push   rbx
  4015c4:	48 89 fb             	mov    rbx,rdi
  4015c7:	48 83 ec 48          	sub    rsp,0x48
  4015cb:	0f b6 6f 06          	movzx  ebp,BYTE PTR [rdi+0x6]
  4015cf:	0f b6 57 07          	movzx  edx,BYTE PTR [rdi+0x7]
  4015d3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4015da:	00 00 
  4015dc:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  4015e1:	31 c0                	xor    eax,eax
  4015e3:	0f af ea             	imul   ebp,edx
  4015e6:	48 63 ed             	movsxd rbp,ebp
  4015e9:	48 c1 e5 02          	shl    rbp,0x2
  4015ed:	48 89 ef             	mov    rdi,rbp
  4015f0:	e8 3b fc ff ff       	call   401230 <malloc@plt>
  4015f5:	48 85 c0             	test   rax,rax
  4015f8:	75 0e                	jne    401608 <handle_1+0x52>
  4015fa:	48 8d 3d 03 1a 00 00 	lea    rdi,[rip+0x1a03]        # 403004 <_IO_stdin_used+0x4>
  401601:	e8 8a fb ff ff       	call   401190 <puts@plt>
  401606:	eb 57                	jmp    40165f <handle_1+0xa9>
  401608:	89 ea                	mov    edx,ebp
  40160a:	48 89 c6             	mov    rsi,rax
  40160d:	41 83 c8 ff          	or     r8d,0xffffffff
  401611:	31 ff                	xor    edi,edi
  401613:	48 8d 0d 1f 1a 00 00 	lea    rcx,[rip+0x1a1f]        # 403039 <_IO_stdin_used+0x39>
  40161a:	49 89 c4             	mov    r12,rax
  40161d:	e8 44 ff ff ff       	call   401566 <read_exact>
  401622:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401626:	0f b6 53 06          	movzx  edx,BYTE PTR [rbx+0x6]
  40162a:	0f af d0             	imul   edx,eax
  40162d:	31 c0                	xor    eax,eax
  40162f:	39 c2                	cmp    edx,eax
  401631:	7e 34                	jle    401667 <handle_1+0xb1>
  401633:	41 0f b6 4c 84 03    	movzx  ecx,BYTE PTR [r12+rax*4+0x3]
  401639:	48 ff c0             	inc    rax
  40163c:	8d 71 e0             	lea    esi,[rcx-0x20]
  40163f:	40 80 fe 5e          	cmp    sil,0x5e
  401643:	76 ea                	jbe    40162f <handle_1+0x79>
  401645:	48 8b 3d f4 39 00 00 	mov    rdi,QWORD PTR [rip+0x39f4]        # 405040 <stderr@GLIBC_2.2.5>
  40164c:	48 8d 15 02 1a 00 00 	lea    rdx,[rip+0x1a02]        # 403055 <_IO_stdin_used+0x55>
  401653:	be 01 00 00 00       	mov    esi,0x1
  401658:	31 c0                	xor    eax,eax
  40165a:	e8 21 fc ff ff       	call   401280 <__fprintf_chk@plt>
  40165f:	83 cf ff             	or     edi,0xffffffff
  401662:	e8 09 fc ff ff       	call   401270 <exit@plt>
  401667:	45 31 ed             	xor    r13d,r13d
  40166a:	4c 8d 74 24 1f       	lea    r14,[rsp+0x1f]
  40166f:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401673:	44 39 e8             	cmp    eax,r13d
  401676:	0f 8e 98 00 00 00    	jle    401714 <handle_1+0x15e>
  40167c:	31 ed                	xor    ebp,ebp
  40167e:	44 0f b6 7b 06       	movzx  r15d,BYTE PTR [rbx+0x6]
  401683:	41 39 ef             	cmp    r15d,ebp
  401686:	0f 8e 80 00 00 00    	jle    40170c <handle_1+0x156>
  40168c:	45 89 fa             	mov    r10d,r15d
  40168f:	b9 19 00 00 00       	mov    ecx,0x19
  401694:	be 19 00 00 00       	mov    esi,0x19
  401699:	4c 89 f7             	mov    rdi,r14
  40169c:	45 0f af d5          	imul   r10d,r13d
  4016a0:	4c 8d 05 e0 19 00 00 	lea    r8,[rip+0x19e0]        # 403087 <_IO_stdin_used+0x87>
  4016a7:	41 8d 04 2a          	lea    eax,[r10+rbp*1]
  4016ab:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
  4016b0:	48 98                	cdqe
  4016b2:	52                   	push   rdx
  4016b3:	49 8d 04 84          	lea    rax,[r12+rax*4]
  4016b7:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  4016bb:	52                   	push   rdx
  4016bc:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  4016c0:	52                   	push   rdx
  4016c1:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  4016c5:	52                   	push   rdx
  4016c6:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  4016ca:	ba 01 00 00 00       	mov    edx,0x1
  4016cf:	31 c0                	xor    eax,eax
  4016d1:	e8 8a fa ff ff       	call   401160 <__snprintf_chk@plt>
  4016d6:	89 e8                	mov    eax,ebp
  4016d8:	44 8b 54 24 2c       	mov    r10d,DWORD PTR [rsp+0x2c]
  4016dd:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  4016e1:	99                   	cdq
  4016e2:	48 83 c4 20          	add    rsp,0x20
  4016e6:	ff c5                	inc    ebp
  4016e8:	41 f7 ff             	idiv   r15d
  4016eb:	42 8d 04 12          	lea    eax,[rdx+r10*1]
  4016ef:	31 d2                	xor    edx,edx
  4016f1:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  4016f4:	48 6b d2 18          	imul   rdx,rdx,0x18
  4016f8:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  4016fc:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  4016ff:	49 8b 46 10          	mov    rax,QWORD PTR [r14+0x10]
  401703:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401707:	e9 72 ff ff ff       	jmp    40167e <handle_1+0xc8>
  40170c:	41 ff c5             	inc    r13d
  40170f:	e9 5b ff ff ff       	jmp    40166f <handle_1+0xb9>
  401714:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  401719:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401720:	00 00 
  401722:	74 05                	je     401729 <handle_1+0x173>
  401724:	e8 87 fa ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401729:	48 83 c4 48          	add    rsp,0x48
  40172d:	5b                   	pop    rbx
  40172e:	5d                   	pop    rbp
  40172f:	41 5c                	pop    r12
  401731:	41 5d                	pop    r13
  401733:	41 5e                	pop    r14
  401735:	41 5f                	pop    r15
  401737:	c3                   	ret

0000000000401738 <handle_2>:
  401738:	f3 0f 1e fa          	endbr64
  40173c:	41 57                	push   r15
  40173e:	41 83 c8 ff          	or     r8d,0xffffffff
  401742:	ba 01 00 00 00       	mov    edx,0x1
  401747:	48 8d 0d 56 19 00 00 	lea    rcx,[rip+0x1956]        # 4030a4 <_IO_stdin_used+0xa4>
  40174e:	41 56                	push   r14
  401750:	41 55                	push   r13
  401752:	41 54                	push   r12
  401754:	49 89 fc             	mov    r12,rdi
  401757:	31 ff                	xor    edi,edi
  401759:	55                   	push   rbp
  40175a:	53                   	push   rbx
  40175b:	48 83 ec 38          	sub    rsp,0x38
  40175f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401766:	00 00 
  401768:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40176d:	31 c0                	xor    eax,eax
  40176f:	48 8d 74 24 0d       	lea    rsi,[rsp+0xd]
  401774:	e8 ed fd ff ff       	call   401566 <read_exact>
  401779:	41 83 c8 ff          	or     r8d,0xffffffff
  40177d:	31 ff                	xor    edi,edi
  40177f:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401784:	48 8d 0d 38 19 00 00 	lea    rcx,[rip+0x1938]        # 4030c3 <_IO_stdin_used+0xc3>
  40178b:	ba 01 00 00 00       	mov    edx,0x1
  401790:	e8 d1 fd ff ff       	call   401566 <read_exact>
  401795:	41 83 c8 ff          	or     r8d,0xffffffff
  401799:	31 ff                	xor    edi,edi
  40179b:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
  4017a0:	48 8d 0d 3b 19 00 00 	lea    rcx,[rip+0x193b]        # 4030e2 <_IO_stdin_used+0xe2>
  4017a7:	ba 01 00 00 00       	mov    edx,0x1
  4017ac:	e8 b5 fd ff ff       	call   401566 <read_exact>
  4017b1:	31 ff                	xor    edi,edi
  4017b3:	41 83 c8 ff          	or     r8d,0xffffffff
  4017b7:	ba 01 00 00 00       	mov    edx,0x1
  4017bc:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  4017c1:	48 8d 0d 38 19 00 00 	lea    rcx,[rip+0x1938]        # 403100 <_IO_stdin_used+0x100>
  4017c8:	e8 99 fd ff ff       	call   401566 <read_exact>
  4017cd:	0f b6 5c 24 0b       	movzx  ebx,BYTE PTR [rsp+0xb]
  4017d2:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [rsp+0xc]
  4017d7:	0f af da             	imul   ebx,edx
  4017da:	48 63 db             	movsxd rbx,ebx
  4017dd:	48 c1 e3 02          	shl    rbx,0x2
  4017e1:	48 89 df             	mov    rdi,rbx
  4017e4:	e8 47 fa ff ff       	call   401230 <malloc@plt>
  4017e9:	48 85 c0             	test   rax,rax
  4017ec:	75 0e                	jne    4017fc <handle_2+0xc4>
  4017ee:	48 8d 3d 0f 18 00 00 	lea    rdi,[rip+0x180f]        # 403004 <_IO_stdin_used+0x4>
  4017f5:	e8 96 f9 ff ff       	call   401190 <puts@plt>
  4017fa:	eb 58                	jmp    401854 <handle_2+0x11c>
  4017fc:	89 da                	mov    edx,ebx
  4017fe:	48 89 c6             	mov    rsi,rax
  401801:	41 83 c8 ff          	or     r8d,0xffffffff
  401805:	31 ff                	xor    edi,edi
  401807:	48 8d 0d 2b 18 00 00 	lea    rcx,[rip+0x182b]        # 403039 <_IO_stdin_used+0x39>
  40180e:	48 89 c5             	mov    rbp,rax
  401811:	e8 50 fd ff ff       	call   401566 <read_exact>
  401816:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  40181b:	0f b6 54 24 0b       	movzx  edx,BYTE PTR [rsp+0xb]
  401820:	0f af d0             	imul   edx,eax
  401823:	31 c0                	xor    eax,eax
  401825:	39 c2                	cmp    edx,eax
  401827:	7e 33                	jle    40185c <handle_2+0x124>
  401829:	0f b6 4c 85 03       	movzx  ecx,BYTE PTR [rbp+rax*4+0x3]
  40182e:	48 ff c0             	inc    rax
  401831:	8d 71 e0             	lea    esi,[rcx-0x20]
  401834:	40 80 fe 5e          	cmp    sil,0x5e
  401838:	76 eb                	jbe    401825 <handle_2+0xed>
  40183a:	48 8b 3d ff 37 00 00 	mov    rdi,QWORD PTR [rip+0x37ff]        # 405040 <stderr@GLIBC_2.2.5>
  401841:	48 8d 15 0d 18 00 00 	lea    rdx,[rip+0x180d]        # 403055 <_IO_stdin_used+0x55>
  401848:	be 01 00 00 00       	mov    esi,0x1
  40184d:	31 c0                	xor    eax,eax
  40184f:	e8 2c fa ff ff       	call   401280 <__fprintf_chk@plt>
  401854:	83 cf ff             	or     edi,0xffffffff
  401857:	e8 14 fa ff ff       	call   401270 <exit@plt>
  40185c:	45 31 ed             	xor    r13d,r13d
  40185f:	4c 8d 7c 24 0f       	lea    r15,[rsp+0xf]
  401864:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  401869:	44 39 e8             	cmp    eax,r13d
  40186c:	0f 8e a7 00 00 00    	jle    401919 <handle_2+0x1e1>
  401872:	45 31 f6             	xor    r14d,r14d
  401875:	0f b6 4c 24 0b       	movzx  ecx,BYTE PTR [rsp+0xb]
  40187a:	44 39 f1             	cmp    ecx,r14d
  40187d:	0f 8e 8e 00 00 00    	jle    401911 <handle_2+0x1d9>
  401883:	0f b6 44 24 0d       	movzx  eax,BYTE PTR [rsp+0xd]
  401888:	0f b6 5c 24 0e       	movzx  ebx,BYTE PTR [rsp+0xe]
  40188d:	41 0f af cd          	imul   ecx,r13d
  401891:	4c 89 ff             	mov    rdi,r15
  401894:	41 0f b6 74 24 06    	movzx  esi,BYTE PTR [r12+0x6]
  40189a:	4c 8d 05 e6 17 00 00 	lea    r8,[rip+0x17e6]        # 403087 <_IO_stdin_used+0x87>
  4018a1:	44 01 f0             	add    eax,r14d
  4018a4:	44 01 eb             	add    ebx,r13d
  4018a7:	99                   	cdq
  4018a8:	0f af de             	imul   ebx,esi
  4018ab:	44 01 f1             	add    ecx,r14d
  4018ae:	41 ff c6             	inc    r14d
  4018b1:	f7 fe                	idiv   esi
  4018b3:	48 63 c9             	movsxd rcx,ecx
  4018b6:	be 19 00 00 00       	mov    esi,0x19
  4018bb:	48 8d 44 8d 00       	lea    rax,[rbp+rcx*4+0x0]
  4018c0:	b9 19 00 00 00       	mov    ecx,0x19
  4018c5:	01 d3                	add    ebx,edx
  4018c7:	52                   	push   rdx
  4018c8:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  4018cc:	52                   	push   rdx
  4018cd:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  4018d1:	52                   	push   rdx
  4018d2:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  4018d6:	52                   	push   rdx
  4018d7:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  4018db:	ba 01 00 00 00       	mov    edx,0x1
  4018e0:	31 c0                	xor    eax,eax
  4018e2:	e8 79 f8 ff ff       	call   401160 <__snprintf_chk@plt>
  4018e7:	89 d8                	mov    eax,ebx
  4018e9:	31 d2                	xor    edx,edx
  4018eb:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  4018ef:	41 f7 74 24 0c       	div    DWORD PTR [r12+0xc]
  4018f4:	48 83 c4 20          	add    rsp,0x20
  4018f8:	48 6b d2 18          	imul   rdx,rdx,0x18
  4018fc:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
  401901:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401904:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  401908:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  40190c:	e9 64 ff ff ff       	jmp    401875 <handle_2+0x13d>
  401911:	41 ff c5             	inc    r13d
  401914:	e9 4b ff ff ff       	jmp    401864 <handle_2+0x12c>
  401919:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  40191e:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401925:	00 00 
  401927:	74 05                	je     40192e <handle_2+0x1f6>
  401929:	e8 82 f8 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  40192e:	48 83 c4 38          	add    rsp,0x38
  401932:	5b                   	pop    rbx
  401933:	5d                   	pop    rbp
  401934:	41 5c                	pop    r12
  401936:	41 5d                	pop    r13
  401938:	41 5e                	pop    r14
  40193a:	41 5f                	pop    r15
  40193c:	c3                   	ret

000000000040193d <handle_3>:
  40193d:	f3 0f 1e fa          	endbr64
  401941:	41 54                	push   r12
  401943:	41 83 c8 ff          	or     r8d,0xffffffff
  401947:	ba 01 00 00 00       	mov    edx,0x1
  40194c:	48 8d 0d cc 17 00 00 	lea    rcx,[rip+0x17cc]        # 40311f <_IO_stdin_used+0x11f>
  401953:	55                   	push   rbp
  401954:	48 89 fd             	mov    rbp,rdi
  401957:	31 ff                	xor    edi,edi
  401959:	53                   	push   rbx
  40195a:	48 83 ec 10          	sub    rsp,0x10
  40195e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401965:	00 00 
  401967:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40196c:	31 c0                	xor    eax,eax
  40196e:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401973:	e8 ee fb ff ff       	call   401566 <read_exact>
  401978:	48 8d 74 24 06       	lea    rsi,[rsp+0x6]
  40197d:	41 83 c8 ff          	or     r8d,0xffffffff
  401981:	31 ff                	xor    edi,edi
  401983:	48 8d 0d 58 17 00 00 	lea    rcx,[rip+0x1758]        # 4030e2 <_IO_stdin_used+0xe2>
  40198a:	ba 01 00 00 00       	mov    edx,0x1
  40198f:	e8 d2 fb ff ff       	call   401566 <read_exact>
  401994:	ba 01 00 00 00       	mov    edx,0x1
  401999:	31 ff                	xor    edi,edi
  40199b:	41 83 c8 ff          	or     r8d,0xffffffff
  40199f:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  4019a4:	48 8d 0d 55 17 00 00 	lea    rcx,[rip+0x1755]        # 403100 <_IO_stdin_used+0x100>
  4019ab:	e8 b6 fb ff ff       	call   401566 <read_exact>
  4019b0:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  4019b5:	8a 54 24 06          	mov    dl,BYTE PTR [rsp+0x6]
  4019b9:	48 c1 e0 04          	shl    rax,0x4
  4019bd:	48 01 e8             	add    rax,rbp
  4019c0:	88 50 19             	mov    BYTE PTR [rax+0x19],dl
  4019c3:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
  4019c7:	8a 54 24 07          	mov    dl,BYTE PTR [rsp+0x7]
  4019cb:	88 50 18             	mov    BYTE PTR [rax+0x18],dl
  4019ce:	48 85 ff             	test   rdi,rdi
  4019d1:	74 05                	je     4019d8 <handle_3+0x9b>
  4019d3:	e8 98 f7 ff ff       	call   401170 <free@plt>
  4019d8:	44 0f b6 64 24 06    	movzx  r12d,BYTE PTR [rsp+0x6]
  4019de:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  4019e3:	44 0f af e2          	imul   r12d,edx
  4019e7:	49 63 fc             	movsxd rdi,r12d
  4019ea:	e8 41 f8 ff ff       	call   401230 <malloc@plt>
  4019ef:	48 89 c3             	mov    rbx,rax
  4019f2:	48 85 c0             	test   rax,rax
  4019f5:	75 0e                	jne    401a05 <handle_3+0xc8>
  4019f7:	48 8d 3d 06 16 00 00 	lea    rdi,[rip+0x1606]        # 403004 <_IO_stdin_used+0x4>
  4019fe:	e8 8d f7 ff ff       	call   401190 <puts@plt>
  401a03:	eb 55                	jmp    401a5a <handle_3+0x11d>
  401a05:	44 89 e2             	mov    edx,r12d
  401a08:	48 89 c6             	mov    rsi,rax
  401a0b:	41 83 c8 ff          	or     r8d,0xffffffff
  401a0f:	31 ff                	xor    edi,edi
  401a11:	48 8d 0d 21 16 00 00 	lea    rcx,[rip+0x1621]        # 403039 <_IO_stdin_used+0x39>
  401a18:	e8 49 fb ff ff       	call   401566 <read_exact>
  401a1d:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401a22:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401a27:	0f af d0             	imul   edx,eax
  401a2a:	31 c0                	xor    eax,eax
  401a2c:	39 c2                	cmp    edx,eax
  401a2e:	7e 32                	jle    401a62 <handle_3+0x125>
  401a30:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401a34:	48 ff c0             	inc    rax
  401a37:	8d 71 e0             	lea    esi,[rcx-0x20]
  401a3a:	40 80 fe 5e          	cmp    sil,0x5e
  401a3e:	76 ec                	jbe    401a2c <handle_3+0xef>
  401a40:	48 8b 3d f9 35 00 00 	mov    rdi,QWORD PTR [rip+0x35f9]        # 405040 <stderr@GLIBC_2.2.5>
  401a47:	48 8d 15 07 16 00 00 	lea    rdx,[rip+0x1607]        # 403055 <_IO_stdin_used+0x55>
  401a4e:	be 01 00 00 00       	mov    esi,0x1
  401a53:	31 c0                	xor    eax,eax
  401a55:	e8 26 f8 ff ff       	call   401280 <__fprintf_chk@plt>
  401a5a:	83 cf ff             	or     edi,0xffffffff
  401a5d:	e8 0e f8 ff ff       	call   401270 <exit@plt>
  401a62:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401a67:	48 c1 e0 04          	shl    rax,0x4
  401a6b:	48 89 5c 28 20       	mov    QWORD PTR [rax+rbp*1+0x20],rbx
  401a70:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401a75:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401a7c:	00 00 
  401a7e:	74 05                	je     401a85 <handle_3+0x148>
  401a80:	e8 2b f7 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401a85:	48 83 c4 10          	add    rsp,0x10
  401a89:	5b                   	pop    rbx
  401a8a:	5d                   	pop    rbp
  401a8b:	41 5c                	pop    r12
  401a8d:	c3                   	ret

0000000000401a8e <handle_5>:
  401a8e:	f3 0f 1e fa          	endbr64
  401a92:	41 55                	push   r13
  401a94:	b9 03 01 00 00       	mov    ecx,0x103
  401a99:	41 83 c8 ff          	or     r8d,0xffffffff
  401a9d:	ba 02 01 00 00       	mov    edx,0x102
  401aa2:	41 54                	push   r12
  401aa4:	49 89 fc             	mov    r12,rdi
  401aa7:	55                   	push   rbp
  401aa8:	53                   	push   rbx
  401aa9:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  401ab0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401ab7:	00 00 
  401ab9:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  401ac0:	00 
  401ac1:	31 c0                	xor    eax,eax
  401ac3:	48 8d 7c 24 05       	lea    rdi,[rsp+0x5]
  401ac8:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401acd:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  401acf:	48 8d 0d 6b 16 00 00 	lea    rcx,[rip+0x166b]        # 403141 <_IO_stdin_used+0x141>
  401ad6:	31 ff                	xor    edi,edi
  401ad8:	e8 89 fa ff ff       	call   401566 <read_exact>
  401add:	66 8b 54 24 06       	mov    dx,WORD PTR [rsp+0x6]
  401ae2:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401ae7:	31 f6                	xor    esi,esi
  401ae9:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401aee:	86 f2                	xchg   dl,dh
  401af0:	48 c1 e0 04          	shl    rax,0x4
  401af4:	66 41 89 54 04 18    	mov    WORD PTR [r12+rax*1+0x18],dx
  401afa:	31 c0                	xor    eax,eax
  401afc:	e8 5f f7 ff ff       	call   401260 <open@plt>
  401b01:	48 8b 35 38 35 00 00 	mov    rsi,QWORD PTR [rip+0x3538]        # 405040 <stderr@GLIBC_2.2.5>
  401b08:	48 8d 3d 5d 16 00 00 	lea    rdi,[rip+0x165d]        # 40316c <_IO_stdin_used+0x16c>
  401b0f:	85 c0                	test   eax,eax
  401b11:	0f 88 ca 00 00 00    	js     401be1 <handle_5+0x153>
  401b17:	89 c5                	mov    ebp,eax
  401b19:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b1e:	48 c1 e0 04          	shl    rax,0x4
  401b22:	4a 8b 7c 20 20       	mov    rdi,QWORD PTR [rax+r12*1+0x20]
  401b27:	48 85 ff             	test   rdi,rdi
  401b2a:	74 05                	je     401b31 <handle_5+0xa3>
  401b2c:	e8 3f f6 ff ff       	call   401170 <free@plt>
  401b31:	44 0f b6 6c 24 06    	movzx  r13d,BYTE PTR [rsp+0x6]
  401b37:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401b3c:	44 0f af ea          	imul   r13d,edx
  401b40:	49 63 fd             	movsxd rdi,r13d
  401b43:	e8 e8 f6 ff ff       	call   401230 <malloc@plt>
  401b48:	48 89 c3             	mov    rbx,rax
  401b4b:	48 85 c0             	test   rax,rax
  401b4e:	75 14                	jne    401b64 <handle_5+0xd6>
  401b50:	48 8d 3d ad 14 00 00 	lea    rdi,[rip+0x14ad]        # 403004 <_IO_stdin_used+0x4>
  401b57:	e8 34 f6 ff ff       	call   401190 <puts@plt>
  401b5c:	83 cf ff             	or     edi,0xffffffff
  401b5f:	e8 0c f7 ff ff       	call   401270 <exit@plt>
  401b64:	44 89 ea             	mov    edx,r13d
  401b67:	48 89 c6             	mov    rsi,rax
  401b6a:	41 83 c8 ff          	or     r8d,0xffffffff
  401b6e:	89 ef                	mov    edi,ebp
  401b70:	48 8d 0d c2 14 00 00 	lea    rcx,[rip+0x14c2]        # 403039 <_IO_stdin_used+0x39>
  401b77:	e8 ea f9 ff ff       	call   401566 <read_exact>
  401b7c:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401b81:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401b86:	0f af d0             	imul   edx,eax
  401b89:	31 c0                	xor    eax,eax
  401b8b:	39 c2                	cmp    edx,eax
  401b8d:	7e 2c                	jle    401bbb <handle_5+0x12d>
  401b8f:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401b93:	48 ff c0             	inc    rax
  401b96:	8d 71 e0             	lea    esi,[rcx-0x20]
  401b99:	40 80 fe 5e          	cmp    sil,0x5e
  401b9d:	76 ec                	jbe    401b8b <handle_5+0xfd>
  401b9f:	48 8b 3d 9a 34 00 00 	mov    rdi,QWORD PTR [rip+0x349a]        # 405040 <stderr@GLIBC_2.2.5>
  401ba6:	48 8d 15 a8 14 00 00 	lea    rdx,[rip+0x14a8]        # 403055 <_IO_stdin_used+0x55>
  401bad:	be 01 00 00 00       	mov    esi,0x1
  401bb2:	31 c0                	xor    eax,eax
  401bb4:	e8 c7 f6 ff ff       	call   401280 <__fprintf_chk@plt>
  401bb9:	eb a1                	jmp    401b5c <handle_5+0xce>
  401bbb:	ba 0c 00 00 00       	mov    edx,0xc
  401bc0:	48 8d 35 c8 15 00 00 	lea    rsi,[rip+0x15c8]        # 40318f <_IO_stdin_used+0x18f>
  401bc7:	48 89 df             	mov    rdi,rbx
  401bca:	e8 b1 f5 ff ff       	call   401180 <strncmp@plt>
  401bcf:	85 c0                	test   eax,eax
  401bd1:	75 18                	jne    401beb <handle_5+0x15d>
  401bd3:	48 8b 35 66 34 00 00 	mov    rsi,QWORD PTR [rip+0x3466]        # 405040 <stderr@GLIBC_2.2.5>
  401bda:	48 8d 3d bb 15 00 00 	lea    rdi,[rip+0x15bb]        # 40319c <_IO_stdin_used+0x19c>
  401be1:	e8 fa f5 ff ff       	call   4011e0 <fputs@plt>
  401be6:	e9 71 ff ff ff       	jmp    401b5c <handle_5+0xce>
  401beb:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401bf0:	89 ef                	mov    edi,ebp
  401bf2:	48 c1 e0 04          	shl    rax,0x4
  401bf6:	4a 89 5c 20 20       	mov    QWORD PTR [rax+r12*1+0x20],rbx
  401bfb:	e8 f0 f5 ff ff       	call   4011f0 <close@plt>
  401c00:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  401c07:	00 
  401c08:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401c0f:	00 00 
  401c11:	74 05                	je     401c18 <handle_5+0x18a>
  401c13:	e8 98 f5 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401c18:	48 81 c4 18 01 00 00 	add    rsp,0x118
  401c1f:	5b                   	pop    rbx
  401c20:	5d                   	pop    rbp
  401c21:	41 5c                	pop    r12
  401c23:	41 5d                	pop    r13
  401c25:	c3                   	ret

0000000000401c26 <handle_4>:
  401c26:	f3 0f 1e fa          	endbr64
  401c2a:	41 57                	push   r15
  401c2c:	41 56                	push   r14
  401c2e:	41 55                	push   r13
  401c30:	41 54                	push   r12
  401c32:	55                   	push   rbp
  401c33:	53                   	push   rbx
  401c34:	4c 8d 9c 24 00 00 fc 	lea    r11,[rsp-0x40000]
  401c3b:	ff 
  401c3c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401c43:	83 0c 24 00          	or     DWORD PTR [rsp],0x0
  401c47:	4c 39 dc             	cmp    rsp,r11
  401c4a:	75 f0                	jne    401c3c <handle_4+0x16>
  401c4c:	48 83 ec 48          	sub    rsp,0x48
  401c50:	48 8d 0d 66 15 00 00 	lea    rcx,[rip+0x1566]        # 4031bd <_IO_stdin_used+0x1bd>
  401c57:	ba 09 00 00 00       	mov    edx,0x9
  401c5c:	41 83 c8 ff          	or     r8d,0xffffffff
  401c60:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401c67:	00 00 
  401c69:	48 89 84 24 38 00 04 	mov    QWORD PTR [rsp+0x40038],rax
  401c70:	00 
  401c71:	31 c0                	xor    eax,eax
  401c73:	48 89 fb             	mov    rbx,rdi
  401c76:	48 8d 74 24 16       	lea    rsi,[rsp+0x16]
  401c7b:	31 ff                	xor    edi,edi
  401c7d:	e8 e4 f8 ff ff       	call   401566 <read_exact>
  401c82:	48 8d 7c 24 1f       	lea    rdi,[rsp+0x1f]
  401c87:	b9 00 00 01 00       	mov    ecx,0x10000
  401c8c:	31 c0                	xor    eax,eax
  401c8e:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401c93:	44 8a 54 24 17       	mov    r10b,BYTE PTR [rsp+0x17]
  401c98:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
  401c9d:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401c9f:	44 8a 5c 24 18       	mov    r11b,BYTE PTR [rsp+0x18]
  401ca4:	40 8a 6c 24 19       	mov    bpl,BYTE PTR [rsp+0x19]
  401ca9:	48 c1 e2 04          	shl    rdx,0x4
  401cad:	48 01 da             	add    rdx,rbx
  401cb0:	44 0f b6 62 18       	movzx  r12d,BYTE PTR [rdx+0x18]
  401cb5:	41 39 cc             	cmp    r12d,ecx
  401cb8:	7e 58                	jle    401d12 <handle_4+0xec>
  401cba:	44 0f b6 42 19       	movzx  r8d,BYTE PTR [rdx+0x19]
  401cbf:	31 ff                	xor    edi,edi
  401cc1:	44 89 c0             	mov    eax,r8d
  401cc4:	0f af c1             	imul   eax,ecx
  401cc7:	41 39 f8             	cmp    r8d,edi
  401cca:	7e 42                	jle    401d0e <handle_4+0xe8>
  401ccc:	4c 8b 4a 20          	mov    r9,QWORD PTR [rdx+0x20]
  401cd0:	44 88 14 86          	mov    BYTE PTR [rsi+rax*4],r10b
  401cd4:	44 88 5c 86 01       	mov    BYTE PTR [rsi+rax*4+0x1],r11b
  401cd9:	40 88 6c 86 02       	mov    BYTE PTR [rsi+rax*4+0x2],bpl
  401cde:	4d 85 c9             	test   r9,r9
  401ce1:	75 1b                	jne    401cfe <handle_4+0xd8>
  401ce3:	48 8b 35 56 33 00 00 	mov    rsi,QWORD PTR [rip+0x3356]        # 405040 <stderr@GLIBC_2.2.5>
  401cea:	48 8d 3d f9 14 00 00 	lea    rdi,[rip+0x14f9]        # 4031ea <_IO_stdin_used+0x1ea>
  401cf1:	e8 ea f4 ff ff       	call   4011e0 <fputs@plt>
  401cf6:	83 cf ff             	or     edi,0xffffffff
  401cf9:	e8 72 f5 ff ff       	call   401270 <exit@plt>
  401cfe:	45 8a 0c 01          	mov    r9b,BYTE PTR [r9+rax*1]
  401d02:	ff c7                	inc    edi
  401d04:	44 88 4c 86 03       	mov    BYTE PTR [rsi+rax*4+0x3],r9b
  401d09:	48 ff c0             	inc    rax
  401d0c:	eb b9                	jmp    401cc7 <handle_4+0xa1>
  401d0e:	ff c1                	inc    ecx
  401d10:	eb a3                	jmp    401cb5 <handle_4+0x8f>
  401d12:	45 31 ff             	xor    r15d,r15d
  401d15:	48 8d bc 24 1f 00 04 	lea    rdi,[rsp+0x4001f]
  401d1c:	00 
  401d1d:	0f b6 44 24 1d       	movzx  eax,BYTE PTR [rsp+0x1d]
  401d22:	44 39 f8             	cmp    eax,r15d
  401d25:	0f 8e 2c 01 00 00    	jle    401e57 <handle_4+0x231>
  401d2b:	45 31 d2             	xor    r10d,r10d
  401d2e:	0f b6 44 24 1c       	movzx  eax,BYTE PTR [rsp+0x1c]
  401d33:	44 39 d0             	cmp    eax,r10d
  401d36:	0f 8e 13 01 00 00    	jle    401e4f <handle_4+0x229>
  401d3c:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401d41:	45 31 db             	xor    r11d,r11d
  401d44:	48 c1 e2 04          	shl    rdx,0x4
  401d48:	48 01 da             	add    rdx,rbx
  401d4b:	8a 42 19             	mov    al,BYTE PTR [rdx+0x19]
  401d4e:	41 0f af c2          	imul   eax,r10d
  401d52:	02 44 24 1a          	add    al,BYTE PTR [rsp+0x1a]
  401d56:	44 0f b6 e0          	movzx  r12d,al
  401d5a:	8a 42 18             	mov    al,BYTE PTR [rdx+0x18]
  401d5d:	41 0f af c7          	imul   eax,r15d
  401d61:	02 44 24 1b          	add    al,BYTE PTR [rsp+0x1b]
  401d65:	0f b6 e8             	movzx  ebp,al
  401d68:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d6d:	48 c1 e0 04          	shl    rax,0x4
  401d71:	0f b6 44 18 18       	movzx  eax,BYTE PTR [rax+rbx*1+0x18]
  401d76:	44 39 d8             	cmp    eax,r11d
  401d79:	0f 8e c8 00 00 00    	jle    401e47 <handle_4+0x221>
  401d7f:	45 31 ed             	xor    r13d,r13d
  401d82:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d87:	48 c1 e0 04          	shl    rax,0x4
  401d8b:	0f b6 44 18 19       	movzx  eax,BYTE PTR [rax+rbx*1+0x19]
  401d90:	44 39 e8             	cmp    eax,r13d
  401d93:	0f 8e a4 00 00 00    	jle    401e3d <handle_4+0x217>
  401d99:	41 0f af c3          	imul   eax,r11d
  401d9d:	44 01 e8             	add    eax,r13d
  401da0:	48 98                	cdqe
  401da2:	0f b6 54 84 22       	movzx  edx,BYTE PTR [rsp+rax*4+0x22]
  401da7:	3a 54 24 1e          	cmp    dl,BYTE PTR [rsp+0x1e]
  401dab:	0f 84 84 00 00 00    	je     401e35 <handle_4+0x20f>
  401db1:	44 89 5c 24 0c       	mov    DWORD PTR [rsp+0xc],r11d
  401db6:	be 19 00 00 00       	mov    esi,0x19
  401dbb:	44 0f b6 73 06       	movzx  r14d,BYTE PTR [rbx+0x6]
  401dc0:	4c 8d 05 c0 12 00 00 	lea    r8,[rip+0x12c0]        # 403087 <_IO_stdin_used+0x87>
  401dc7:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  401dcc:	51                   	push   rcx
  401dcd:	b9 19 00 00 00       	mov    ecx,0x19
  401dd2:	52                   	push   rdx
  401dd3:	0f b6 54 84 31       	movzx  edx,BYTE PTR [rsp+rax*4+0x31]
  401dd8:	52                   	push   rdx
  401dd9:	0f b6 54 84 38       	movzx  edx,BYTE PTR [rsp+rax*4+0x38]
  401dde:	52                   	push   rdx
  401ddf:	44 0f b6 4c 84 3f    	movzx  r9d,BYTE PTR [rsp+rax*4+0x3f]
  401de5:	ba 01 00 00 00       	mov    edx,0x1
  401dea:	31 c0                	xor    eax,eax
  401dec:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  401df1:	e8 6a f3 ff ff       	call   401160 <__snprintf_chk@plt>
  401df6:	43 8d 44 25 00       	lea    eax,[r13+r12*1+0x0]
  401dfb:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401e00:	44 8b 5c 24 2c       	mov    r11d,DWORD PTR [rsp+0x2c]
  401e05:	99                   	cdq
  401e06:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
  401e0b:	48 83 c4 20          	add    rsp,0x20
  401e0f:	41 f7 fe             	idiv   r14d
  401e12:	0f 10 07             	movups xmm0,XMMWORD PTR [rdi]
  401e15:	44 0f af f5          	imul   r14d,ebp
  401e19:	42 8d 04 32          	lea    eax,[rdx+r14*1]
  401e1d:	31 d2                	xor    edx,edx
  401e1f:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401e22:	48 6b d2 18          	imul   rdx,rdx,0x18
  401e26:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  401e2a:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401e2d:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401e31:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401e35:	41 ff c5             	inc    r13d
  401e38:	e9 45 ff ff ff       	jmp    401d82 <handle_4+0x15c>
  401e3d:	41 ff c3             	inc    r11d
  401e40:	ff c5                	inc    ebp
  401e42:	e9 21 ff ff ff       	jmp    401d68 <handle_4+0x142>
  401e47:	41 ff c2             	inc    r10d
  401e4a:	e9 df fe ff ff       	jmp    401d2e <handle_4+0x108>
  401e4f:	41 ff c7             	inc    r15d
  401e52:	e9 c6 fe ff ff       	jmp    401d1d <handle_4+0xf7>
  401e57:	48 8b 84 24 38 00 04 	mov    rax,QWORD PTR [rsp+0x40038]
  401e5e:	00 
  401e5f:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401e66:	00 00 
  401e68:	74 05                	je     401e6f <handle_4+0x249>
  401e6a:	e8 41 f3 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401e6f:	48 81 c4 48 00 04 00 	add    rsp,0x40048
  401e76:	5b                   	pop    rbx
  401e77:	5d                   	pop    rbp
  401e78:	41 5c                	pop    r12
  401e7a:	41 5d                	pop    r13
  401e7c:	41 5e                	pop    r14
  401e7e:	41 5f                	pop    r15
  401e80:	c3                   	ret

0000000000401e81 <handle_7>:
  401e81:	f3 0f 1e fa          	endbr64
  401e85:	48 83 ec 28          	sub    rsp,0x28
  401e89:	41 83 c8 ff          	or     r8d,0xffffffff
  401e8d:	31 ff                	xor    edi,edi
  401e8f:	ba 04 00 00 00       	mov    edx,0x4
  401e94:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401e9b:	00 00 
  401e9d:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401ea2:	31 c0                	xor    eax,eax
  401ea4:	48 8d 74 24 04       	lea    rsi,[rsp+0x4]
  401ea9:	48 8d 0d 6c 13 00 00 	lea    rcx,[rip+0x136c]        # 40321c <_IO_stdin_used+0x21c>
  401eb0:	e8 b1 f6 ff ff       	call   401566 <read_exact>
  401eb5:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401eb9:	b9 e8 03 00 00       	mov    ecx,0x3e8
  401ebe:	31 d2                	xor    edx,edx
  401ec0:	31 f6                	xor    esi,esi
  401ec2:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401ec7:	f7 f1                	div    ecx
  401ec9:	89 c0                	mov    eax,eax
  401ecb:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401ed0:	69 c2 40 42 0f 00    	imul   eax,edx,0xf4240
  401ed6:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401edb:	e8 f0 f2 ff ff       	call   4011d0 <nanosleep@plt>
  401ee0:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401ee5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401eec:	00 00 
  401eee:	74 05                	je     401ef5 <handle_7+0x74>
  401ef0:	e8 bb f2 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401ef5:	48 83 c4 28          	add    rsp,0x28
  401ef9:	c3                   	ret

0000000000401efa <display>:
  401efa:	f3 0f 1e fa          	endbr64
  401efe:	41 54                	push   r12
  401f00:	45 31 e4             	xor    r12d,r12d
  401f03:	55                   	push   rbp
  401f04:	48 89 fd             	mov    rbp,rdi
  401f07:	53                   	push   rbx
  401f08:	48 8d 1d 32 13 00 00 	lea    rbx,[rip+0x1332]        # 403241 <_IO_stdin_used+0x241>
  401f0f:	0f b6 45 07          	movzx  eax,BYTE PTR [rbp+0x7]
  401f13:	44 39 e0             	cmp    eax,r12d
  401f16:	7e 3e                	jle    401f56 <display+0x5c>
  401f18:	0f b6 55 06          	movzx  edx,BYTE PTR [rbp+0x6]
  401f1c:	bf 01 00 00 00       	mov    edi,0x1
  401f21:	48 89 d0             	mov    rax,rdx
  401f24:	48 6b d2 18          	imul   rdx,rdx,0x18
  401f28:	0f b6 f0             	movzx  esi,al
  401f2b:	41 0f af f4          	imul   esi,r12d
  401f2f:	41 ff c4             	inc    r12d
  401f32:	48 63 f6             	movsxd rsi,esi
  401f35:	48 6b f6 18          	imul   rsi,rsi,0x18
  401f39:	48 03 75 10          	add    rsi,QWORD PTR [rbp+0x10]
  401f3d:	e8 5e f2 ff ff       	call   4011a0 <write@plt>
  401f42:	ba 18 00 00 00       	mov    edx,0x18
  401f47:	48 89 de             	mov    rsi,rbx
  401f4a:	bf 01 00 00 00       	mov    edi,0x1
  401f4f:	e8 4c f2 ff ff       	call   4011a0 <write@plt>
  401f54:	eb b9                	jmp    401f0f <display+0x15>
  401f56:	5b                   	pop    rbx
  401f57:	5d                   	pop    rbp
  401f58:	41 5c                	pop    r12
  401f5a:	c3                   	ret

0000000000401f5b <handle_6>:
  401f5b:	f3 0f 1e fa          	endbr64
  401f5f:	55                   	push   rbp
  401f60:	41 83 c8 ff          	or     r8d,0xffffffff
  401f64:	48 89 fd             	mov    rbp,rdi
  401f67:	ba 01 00 00 00       	mov    edx,0x1
  401f6c:	31 ff                	xor    edi,edi
  401f6e:	48 8d 0d e5 12 00 00 	lea    rcx,[rip+0x12e5]        # 40325a <_IO_stdin_used+0x25a>
  401f75:	48 83 ec 10          	sub    rsp,0x10
  401f79:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401f80:	00 00 
  401f82:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401f87:	31 c0                	xor    eax,eax
  401f89:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401f8e:	e8 d3 f5 ff ff       	call   401566 <read_exact>
  401f93:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  401f98:	74 13                	je     401fad <handle_6+0x52>
  401f9a:	48 8d 35 d7 12 00 00 	lea    rsi,[rip+0x12d7]        # 403278 <_IO_stdin_used+0x278>
  401fa1:	bf 01 00 00 00       	mov    edi,0x1
  401fa6:	31 c0                	xor    eax,eax
  401fa8:	e8 93 f2 ff ff       	call   401240 <__printf_chk@plt>
  401fad:	31 f6                	xor    esi,esi
  401faf:	31 c0                	xor    eax,eax
  401fb1:	48 89 ef             	mov    rdi,rbp
  401fb4:	e8 41 ff ff ff       	call   401efa <display>
  401fb9:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401fbe:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401fc5:	00 00 
  401fc7:	74 05                	je     401fce <handle_6+0x73>
  401fc9:	e8 e2 f1 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401fce:	48 83 c4 10          	add    rsp,0x10
  401fd2:	5d                   	pop    rbp
  401fd3:	c3                   	ret

0000000000401fd4 <initialize_framebuffer>:
  401fd4:	f3 0f 1e fa          	endbr64
  401fd8:	41 54                	push   r12
  401fda:	49 89 fc             	mov    r12,rdi
  401fdd:	55                   	push   rbp
  401fde:	53                   	push   rbx
  401fdf:	48 83 ec 30          	sub    rsp,0x30
  401fe3:	0f b6 7f 06          	movzx  edi,BYTE PTR [rdi+0x6]
  401fe7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401fee:	00 00 
  401ff0:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  401ff5:	31 c0                	xor    eax,eax
  401ff7:	41 0f b6 44 24 07    	movzx  eax,BYTE PTR [r12+0x7]
  401ffd:	0f af f8             	imul   edi,eax
  402000:	41 89 7c 24 0c       	mov    DWORD PTR [r12+0xc],edi
  402005:	48 63 ff             	movsxd rdi,edi
  402008:	48 6b ff 18          	imul   rdi,rdi,0x18
  40200c:	48 ff c7             	inc    rdi
  40200f:	e8 1c f2 ff ff       	call   401230 <malloc@plt>
  402014:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  402019:	48 85 c0             	test   rax,rax
  40201c:	75 14                	jne    402032 <initialize_framebuffer+0x5e>
  40201e:	48 8d 3d 5b 12 00 00 	lea    rdi,[rip+0x125b]        # 403280 <_IO_stdin_used+0x280>
  402025:	e8 66 f1 ff ff       	call   401190 <puts@plt>
  40202a:	83 cf ff             	or     edi,0xffffffff
  40202d:	e8 3e f2 ff ff       	call   401270 <exit@plt>
  402032:	31 db                	xor    ebx,ebx
  402034:	48 8d 6c 24 0f       	lea    rbp,[rsp+0xf]
  402039:	41 39 5c 24 0c       	cmp    DWORD PTR [r12+0xc],ebx
  40203e:	76 54                	jbe    402094 <initialize_framebuffer+0xc0>
  402040:	50                   	push   rax
  402041:	ba 01 00 00 00       	mov    edx,0x1
  402046:	41 b9 ff 00 00 00    	mov    r9d,0xff
  40204c:	48 89 ef             	mov    rdi,rbp
  40204f:	6a 20                	push   0x20
  402051:	4c 8d 05 2f 10 00 00 	lea    r8,[rip+0x102f]        # 403087 <_IO_stdin_used+0x87>
  402058:	b9 19 00 00 00       	mov    ecx,0x19
  40205d:	31 c0                	xor    eax,eax
  40205f:	68 ff 00 00 00       	push   0xff
  402064:	be 19 00 00 00       	mov    esi,0x19
  402069:	68 ff 00 00 00       	push   0xff
  40206e:	e8 ed f0 ff ff       	call   401160 <__snprintf_chk@plt>
  402073:	0f 10 45 00          	movups xmm0,XMMWORD PTR [rbp+0x0]
  402077:	48 6b c3 18          	imul   rax,rbx,0x18
  40207b:	48 ff c3             	inc    rbx
  40207e:	49 03 44 24 10       	add    rax,QWORD PTR [r12+0x10]
  402083:	48 83 c4 20          	add    rsp,0x20
  402087:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  40208a:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  40208e:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  402092:	eb a5                	jmp    402039 <initialize_framebuffer+0x65>
  402094:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  402099:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4020a0:	00 00 
  4020a2:	74 05                	je     4020a9 <initialize_framebuffer+0xd5>
  4020a4:	e8 07 f1 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  4020a9:	48 83 c4 30          	add    rsp,0x30
  4020ad:	4c 89 e0             	mov    rax,r12
  4020b0:	5b                   	pop    rbx
  4020b1:	5d                   	pop    rbp
  4020b2:	41 5c                	pop    r12
  4020b4:	c3                   	ret
  4020b5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4020bc:	00 00 00 
  4020bf:	90                   	nop

00000000004020c0 <__libc_csu_init>:
  4020c0:	f3 0f 1e fa          	endbr64
  4020c4:	41 57                	push   r15
  4020c6:	4c 8d 3d 6b 2c 00 00 	lea    r15,[rip+0x2c6b]        # 404d38 <__frame_dummy_init_array_entry>
  4020cd:	41 56                	push   r14
  4020cf:	49 89 d6             	mov    r14,rdx
  4020d2:	41 55                	push   r13
  4020d4:	49 89 f5             	mov    r13,rsi
  4020d7:	41 54                	push   r12
  4020d9:	41 89 fc             	mov    r12d,edi
  4020dc:	55                   	push   rbp
  4020dd:	48 8d 2d 64 2c 00 00 	lea    rbp,[rip+0x2c64]        # 404d48 <__do_global_dtors_aux_fini_array_entry>
  4020e4:	53                   	push   rbx
  4020e5:	4c 29 fd             	sub    rbp,r15
  4020e8:	48 83 ec 08          	sub    rsp,0x8
  4020ec:	e8 0f ef ff ff       	call   401000 <_init>
  4020f1:	48 c1 fd 03          	sar    rbp,0x3
  4020f5:	74 1f                	je     402116 <__libc_csu_init+0x56>
  4020f7:	31 db                	xor    ebx,ebx
  4020f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402100:	4c 89 f2             	mov    rdx,r14
  402103:	4c 89 ee             	mov    rsi,r13
  402106:	44 89 e7             	mov    edi,r12d
  402109:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40210d:	48 83 c3 01          	add    rbx,0x1
  402111:	48 39 dd             	cmp    rbp,rbx
  402114:	75 ea                	jne    402100 <__libc_csu_init+0x40>
  402116:	48 83 c4 08          	add    rsp,0x8
  40211a:	5b                   	pop    rbx
  40211b:	5d                   	pop    rbp
  40211c:	41 5c                	pop    r12
  40211e:	41 5d                	pop    r13
  402120:	41 5e                	pop    r14
  402122:	41 5f                	pop    r15
  402124:	c3                   	ret
  402125:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40212c:	00 00 00 00 

0000000000402130 <__libc_csu_fini>:
  402130:	f3 0f 1e fa          	endbr64
  402134:	c3                   	ret

Disassembly of section .fini:

0000000000402138 <_fini>:
  402138:	f3 0f 1e fa          	endbr64
  40213c:	48 83 ec 08          	sub    rsp,0x8
  402140:	48 83 c4 08          	add    rsp,0x8
  402144:	c3                   	ret
