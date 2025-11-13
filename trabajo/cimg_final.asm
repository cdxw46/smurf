
cimg_final:     file format elf64-x86-64


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
  401340:	eb 53                	jmp    401395 <main+0xd1>
  401342:	31 f6                	xor    esi,esi
  401344:	4c 89 e7             	mov    rdi,r12
  401347:	31 c0                	xor    eax,eax
  401349:	e8 12 ff ff ff       	call   401260 <open@plt>
  40134e:	31 f6                	xor    esi,esi
  401350:	89 c7                	mov    edi,eax
  401352:	e8 69 fe ff ff       	call   4011c0 <dup2@plt>
  401357:	31 ff                	xor    edi,edi
  401359:	41 83 c8 ff          	or     r8d,0xffffffff
  40135d:	ba 0c 00 00 00       	mov    edx,0xc
  401362:	48 89 ee             	mov    rsi,rbp
  401365:	48 8d 0d 6f 1f 00 00 	lea    rcx,[rip+0x1f6f]        # 4032db <_IO_stdin_used+0x2db>
  40136c:	e8 05 02 00 00       	call   401576 <read_exact>
  401371:	ba 04 00 00 00       	mov    edx,0x4
  401376:	48 8d 35 7c 1f 00 00 	lea    rsi,[rip+0x1f7c]        # 4032f9 <_IO_stdin_used+0x2f9>
  40137d:	48 89 ef             	mov    rdi,rbp
  401380:	e8 fb fd ff ff       	call   401180 <strncmp@plt>
  401385:	85 c0                	test   eax,eax
  401387:	74 14                	je     40139d <main+0xd9>
  401389:	48 8d 3d 6e 1f 00 00 	lea    rdi,[rip+0x1f6e]        # 4032fe <_IO_stdin_used+0x2fe>
  401390:	e8 fb fd ff ff       	call   401190 <puts@plt>
  401395:	83 cf ff             	or     edi,0xffffffff
  401398:	e8 d3 fe ff ff       	call   401270 <exit@plt>
  40139d:	66 83 7c 24 14 04    	cmp    WORD PTR [rsp+0x14],0x4
  4013a3:	48 8d 3d 71 1f 00 00 	lea    rdi,[rip+0x1f71]        # 40331b <_IO_stdin_used+0x31b>
  4013aa:	75 e4                	jne    401390 <main+0xcc>
  4013ac:	48 89 ef             	mov    rdi,rbp
  4013af:	48 8d 1d ce 1f 00 00 	lea    rbx,[rip+0x1fce]        # 403384 <_IO_stdin_used+0x384>
  4013b6:	e8 29 0c 00 00       	call   401fe4 <initialize_framebuffer>
  4013bb:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4013bf:	8d 50 ff             	lea    edx,[rax-0x1]
  4013c2:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  4013c6:	85 c0                	test   eax,eax
  4013c8:	0f 84 8a 00 00 00    	je     401458 <main+0x194>
  4013ce:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  4013d3:	41 83 c8 ff          	or     r8d,0xffffffff
  4013d7:	ba 02 00 00 00       	mov    edx,0x2
  4013dc:	31 ff                	xor    edi,edi
  4013de:	48 8d 0d 52 1f 00 00 	lea    rcx,[rip+0x1f52]        # 403337 <_IO_stdin_used+0x337>
  4013e5:	e8 8c 01 00 00       	call   401576 <read_exact>
  4013ea:	0f b7 4c 24 0e       	movzx  ecx,WORD PTR [rsp+0xe]
  4013ef:	8d 41 ff             	lea    eax,[rcx-0x1]
  4013f2:	66 83 f8 06          	cmp    ax,0x6
  4013f6:	77 41                	ja     401439 <main+0x175>
  4013f8:	0f b7 c0             	movzx  eax,ax
  4013fb:	48 89 ef             	mov    rdi,rbp
  4013fe:	48 63 04 83          	movsxd rax,DWORD PTR [rbx+rax*4]
  401402:	48 01 d8             	add    rax,rbx
  401405:	3e ff e0             	notrack jmp rax
  401408:	e8 b9 01 00 00       	call   4015c6 <handle_1>
  40140d:	eb ac                	jmp    4013bb <main+0xf7>
  40140f:	e8 34 03 00 00       	call   401748 <handle_2>
  401414:	eb a5                	jmp    4013bb <main+0xf7>
  401416:	e8 32 05 00 00       	call   40194d <handle_3>
  40141b:	eb 9e                	jmp    4013bb <main+0xf7>
  40141d:	e8 14 08 00 00       	call   401c36 <handle_4>
  401422:	eb 97                	jmp    4013bb <main+0xf7>
  401424:	e8 75 06 00 00       	call   401a9e <handle_5>
  401429:	eb 90                	jmp    4013bb <main+0xf7>
  40142b:	e8 3b 0b 00 00       	call   401f6b <handle_6>
  401430:	eb 89                	jmp    4013bb <main+0xf7>
  401432:	e8 5a 0a 00 00       	call   401e91 <handle_7>
  401437:	eb 82                	jmp    4013bb <main+0xf7>
  401439:	48 8b 3d 00 3c 00 00 	mov    rdi,QWORD PTR [rip+0x3c00]        # 405040 <stderr@GLIBC_2.2.5>
  401440:	48 8d 15 17 1f 00 00 	lea    rdx,[rip+0x1f17]        # 40335e <_IO_stdin_used+0x35e>
  401447:	be 01 00 00 00       	mov    esi,0x1
  40144c:	31 c0                	xor    eax,eax
  40144e:	e8 2d fe ff ff       	call   401280 <__fprintf_chk@plt>
  401453:	e9 3d ff ff ff       	jmp    401395 <main+0xd1>
  401458:	31 f6                	xor    esi,esi
  40145a:	48 89 ef             	mov    rdi,rbp
  40145d:	e8 a8 0a 00 00       	call   401f0a <display>
  401462:	48 8b 84 24 28 10 00 	mov    rax,QWORD PTR [rsp+0x1028]
  401469:	00 
  40146a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401471:	00 00 
  401473:	74 05                	je     40147a <main+0x1b6>
  401475:	e8 36 fd ff ff       	call   4011b0 <__stack_chk_fail@plt>
  40147a:	48 81 c4 30 10 00 00 	add    rsp,0x1030
  401481:	31 c0                	xor    eax,eax
  401483:	5b                   	pop    rbx
  401484:	5d                   	pop    rbp
  401485:	41 5c                	pop    r12
  401487:	c3                   	ret
  401488:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40148f:	00 

0000000000401490 <_start>:
  401490:	f3 0f 1e fa          	endbr64
  401494:	31 ed                	xor    ebp,ebp
  401496:	49 89 d1             	mov    r9,rdx
  401499:	5e                   	pop    rsi
  40149a:	48 89 e2             	mov    rdx,rsp
  40149d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4014a1:	50                   	push   rax
  4014a2:	54                   	push   rsp
  4014a3:	49 c7 c0 40 21 40 00 	mov    r8,0x402140
  4014aa:	48 c7 c1 d0 20 40 00 	mov    rcx,0x4020d0
  4014b1:	48 c7 c7 c4 12 40 00 	mov    rdi,0x4012c4
  4014b8:	ff 15 32 3b 00 00    	call   QWORD PTR [rip+0x3b32]        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  4014be:	f4                   	hlt
  4014bf:	90                   	nop

00000000004014c0 <_dl_relocate_static_pie>:
  4014c0:	f3 0f 1e fa          	endbr64
  4014c4:	c3                   	ret
  4014c5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4014cc:	00 00 00 
  4014cf:	90                   	nop

00000000004014d0 <deregister_tm_clones>:
  4014d0:	b8 10 50 40 00       	mov    eax,0x405010
  4014d5:	48 3d 10 50 40 00    	cmp    rax,0x405010
  4014db:	74 13                	je     4014f0 <deregister_tm_clones+0x20>
  4014dd:	b8 00 00 00 00       	mov    eax,0x0
  4014e2:	48 85 c0             	test   rax,rax
  4014e5:	74 09                	je     4014f0 <deregister_tm_clones+0x20>
  4014e7:	bf 10 50 40 00       	mov    edi,0x405010
  4014ec:	ff e0                	jmp    rax
  4014ee:	66 90                	xchg   ax,ax
  4014f0:	c3                   	ret
  4014f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4014f8:	00 00 00 00 
  4014fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401500 <register_tm_clones>:
  401500:	be 10 50 40 00       	mov    esi,0x405010
  401505:	48 81 ee 10 50 40 00 	sub    rsi,0x405010
  40150c:	48 89 f0             	mov    rax,rsi
  40150f:	48 c1 ee 3f          	shr    rsi,0x3f
  401513:	48 c1 f8 03          	sar    rax,0x3
  401517:	48 01 c6             	add    rsi,rax
  40151a:	48 d1 fe             	sar    rsi,1
  40151d:	74 11                	je     401530 <register_tm_clones+0x30>
  40151f:	b8 00 00 00 00       	mov    eax,0x0
  401524:	48 85 c0             	test   rax,rax
  401527:	74 07                	je     401530 <register_tm_clones+0x30>
  401529:	bf 10 50 40 00       	mov    edi,0x405010
  40152e:	ff e0                	jmp    rax
  401530:	c3                   	ret
  401531:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401538:	00 00 00 00 
  40153c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401540 <__do_global_dtors_aux>:
  401540:	f3 0f 1e fa          	endbr64
  401544:	80 3d fd 3a 00 00 00 	cmp    BYTE PTR [rip+0x3afd],0x0        # 405048 <completed.8061>
  40154b:	75 13                	jne    401560 <__do_global_dtors_aux+0x20>
  40154d:	55                   	push   rbp
  40154e:	48 89 e5             	mov    rbp,rsp
  401551:	e8 7a ff ff ff       	call   4014d0 <deregister_tm_clones>
  401556:	c6 05 eb 3a 00 00 01 	mov    BYTE PTR [rip+0x3aeb],0x1        # 405048 <completed.8061>
  40155d:	5d                   	pop    rbp
  40155e:	c3                   	ret
  40155f:	90                   	nop
  401560:	c3                   	ret
  401561:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401568:	00 00 00 00 
  40156c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401570 <frame_dummy>:
  401570:	f3 0f 1e fa          	endbr64
  401574:	eb 8a                	jmp    401500 <register_tm_clones>

0000000000401576 <read_exact>:
  401576:	f3 0f 1e fa          	endbr64
  40157a:	41 54                	push   r12
  40157c:	48 63 d2             	movsxd rdx,edx
  40157f:	49 89 cc             	mov    r12,rcx
  401582:	55                   	push   rbp
  401583:	44 89 c5             	mov    ebp,r8d
  401586:	53                   	push   rbx
  401587:	48 89 d3             	mov    rbx,rdx
  40158a:	e8 81 fc ff ff       	call   401210 <read@plt>
  40158f:	39 c3                	cmp    ebx,eax
  401591:	74 2e                	je     4015c1 <read_exact+0x4b>
  401593:	48 8b 3d a6 3a 00 00 	mov    rdi,QWORD PTR [rip+0x3aa6]        # 405040 <stderr@GLIBC_2.2.5>
  40159a:	4c 89 e2             	mov    rdx,r12
  40159d:	be 01 00 00 00       	mov    esi,0x1
  4015a2:	31 c0                	xor    eax,eax
  4015a4:	e8 d7 fc ff ff       	call   401280 <__fprintf_chk@plt>
  4015a9:	48 8b 35 90 3a 00 00 	mov    rsi,QWORD PTR [rip+0x3a90]        # 405040 <stderr@GLIBC_2.2.5>
  4015b0:	bf 0a 00 00 00       	mov    edi,0xa
  4015b5:	e8 46 fc ff ff       	call   401200 <fputc@plt>
  4015ba:	89 ef                	mov    edi,ebp
  4015bc:	e8 af fc ff ff       	call   401270 <exit@plt>
  4015c1:	5b                   	pop    rbx
  4015c2:	5d                   	pop    rbp
  4015c3:	41 5c                	pop    r12
  4015c5:	c3                   	ret

00000000004015c6 <handle_1>:
  4015c6:	f3 0f 1e fa          	endbr64
  4015ca:	41 57                	push   r15
  4015cc:	41 56                	push   r14
  4015ce:	41 55                	push   r13
  4015d0:	41 54                	push   r12
  4015d2:	55                   	push   rbp
  4015d3:	53                   	push   rbx
  4015d4:	48 89 fb             	mov    rbx,rdi
  4015d7:	48 83 ec 48          	sub    rsp,0x48
  4015db:	0f b6 6f 06          	movzx  ebp,BYTE PTR [rdi+0x6]
  4015df:	0f b6 57 07          	movzx  edx,BYTE PTR [rdi+0x7]
  4015e3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4015ea:	00 00 
  4015ec:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  4015f1:	31 c0                	xor    eax,eax
  4015f3:	0f af ea             	imul   ebp,edx
  4015f6:	48 63 ed             	movsxd rbp,ebp
  4015f9:	48 c1 e5 02          	shl    rbp,0x2
  4015fd:	48 89 ef             	mov    rdi,rbp
  401600:	e8 2b fc ff ff       	call   401230 <malloc@plt>
  401605:	48 85 c0             	test   rax,rax
  401608:	75 0e                	jne    401618 <handle_1+0x52>
  40160a:	48 8d 3d f3 19 00 00 	lea    rdi,[rip+0x19f3]        # 403004 <_IO_stdin_used+0x4>
  401611:	e8 7a fb ff ff       	call   401190 <puts@plt>
  401616:	eb 57                	jmp    40166f <handle_1+0xa9>
  401618:	89 ea                	mov    edx,ebp
  40161a:	48 89 c6             	mov    rsi,rax
  40161d:	41 83 c8 ff          	or     r8d,0xffffffff
  401621:	31 ff                	xor    edi,edi
  401623:	48 8d 0d 0f 1a 00 00 	lea    rcx,[rip+0x1a0f]        # 403039 <_IO_stdin_used+0x39>
  40162a:	49 89 c4             	mov    r12,rax
  40162d:	e8 44 ff ff ff       	call   401576 <read_exact>
  401632:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401636:	0f b6 53 06          	movzx  edx,BYTE PTR [rbx+0x6]
  40163a:	0f af d0             	imul   edx,eax
  40163d:	31 c0                	xor    eax,eax
  40163f:	39 c2                	cmp    edx,eax
  401641:	7e 34                	jle    401677 <handle_1+0xb1>
  401643:	41 0f b6 4c 84 03    	movzx  ecx,BYTE PTR [r12+rax*4+0x3]
  401649:	48 ff c0             	inc    rax
  40164c:	8d 71 e0             	lea    esi,[rcx-0x20]
  40164f:	40 80 fe 5e          	cmp    sil,0x5e
  401653:	76 ea                	jbe    40163f <handle_1+0x79>
  401655:	48 8b 3d e4 39 00 00 	mov    rdi,QWORD PTR [rip+0x39e4]        # 405040 <stderr@GLIBC_2.2.5>
  40165c:	48 8d 15 f2 19 00 00 	lea    rdx,[rip+0x19f2]        # 403055 <_IO_stdin_used+0x55>
  401663:	be 01 00 00 00       	mov    esi,0x1
  401668:	31 c0                	xor    eax,eax
  40166a:	e8 11 fc ff ff       	call   401280 <__fprintf_chk@plt>
  40166f:	83 cf ff             	or     edi,0xffffffff
  401672:	e8 f9 fb ff ff       	call   401270 <exit@plt>
  401677:	45 31 ed             	xor    r13d,r13d
  40167a:	4c 8d 74 24 1f       	lea    r14,[rsp+0x1f]
  40167f:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401683:	44 39 e8             	cmp    eax,r13d
  401686:	0f 8e 98 00 00 00    	jle    401724 <handle_1+0x15e>
  40168c:	31 ed                	xor    ebp,ebp
  40168e:	44 0f b6 7b 06       	movzx  r15d,BYTE PTR [rbx+0x6]
  401693:	41 39 ef             	cmp    r15d,ebp
  401696:	0f 8e 80 00 00 00    	jle    40171c <handle_1+0x156>
  40169c:	45 89 fa             	mov    r10d,r15d
  40169f:	b9 19 00 00 00       	mov    ecx,0x19
  4016a4:	be 19 00 00 00       	mov    esi,0x19
  4016a9:	4c 89 f7             	mov    rdi,r14
  4016ac:	45 0f af d5          	imul   r10d,r13d
  4016b0:	4c 8d 05 d0 19 00 00 	lea    r8,[rip+0x19d0]        # 403087 <_IO_stdin_used+0x87>
  4016b7:	41 8d 04 2a          	lea    eax,[r10+rbp*1]
  4016bb:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
  4016c0:	48 98                	cdqe
  4016c2:	52                   	push   rdx
  4016c3:	49 8d 04 84          	lea    rax,[r12+rax*4]
  4016c7:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  4016cb:	52                   	push   rdx
  4016cc:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  4016d0:	52                   	push   rdx
  4016d1:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  4016d5:	52                   	push   rdx
  4016d6:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  4016da:	ba 01 00 00 00       	mov    edx,0x1
  4016df:	31 c0                	xor    eax,eax
  4016e1:	e8 7a fa ff ff       	call   401160 <__snprintf_chk@plt>
  4016e6:	89 e8                	mov    eax,ebp
  4016e8:	44 8b 54 24 2c       	mov    r10d,DWORD PTR [rsp+0x2c]
  4016ed:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  4016f1:	99                   	cdq
  4016f2:	48 83 c4 20          	add    rsp,0x20
  4016f6:	ff c5                	inc    ebp
  4016f8:	41 f7 ff             	idiv   r15d
  4016fb:	42 8d 04 12          	lea    eax,[rdx+r10*1]
  4016ff:	31 d2                	xor    edx,edx
  401701:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401704:	48 6b d2 18          	imul   rdx,rdx,0x18
  401708:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  40170c:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  40170f:	49 8b 46 10          	mov    rax,QWORD PTR [r14+0x10]
  401713:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401717:	e9 72 ff ff ff       	jmp    40168e <handle_1+0xc8>
  40171c:	41 ff c5             	inc    r13d
  40171f:	e9 5b ff ff ff       	jmp    40167f <handle_1+0xb9>
  401724:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  401729:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401730:	00 00 
  401732:	74 05                	je     401739 <handle_1+0x173>
  401734:	e8 77 fa ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401739:	48 83 c4 48          	add    rsp,0x48
  40173d:	5b                   	pop    rbx
  40173e:	5d                   	pop    rbp
  40173f:	41 5c                	pop    r12
  401741:	41 5d                	pop    r13
  401743:	41 5e                	pop    r14
  401745:	41 5f                	pop    r15
  401747:	c3                   	ret

0000000000401748 <handle_2>:
  401748:	f3 0f 1e fa          	endbr64
  40174c:	41 57                	push   r15
  40174e:	41 83 c8 ff          	or     r8d,0xffffffff
  401752:	ba 01 00 00 00       	mov    edx,0x1
  401757:	48 8d 0d 46 19 00 00 	lea    rcx,[rip+0x1946]        # 4030a4 <_IO_stdin_used+0xa4>
  40175e:	41 56                	push   r14
  401760:	41 55                	push   r13
  401762:	41 54                	push   r12
  401764:	49 89 fc             	mov    r12,rdi
  401767:	31 ff                	xor    edi,edi
  401769:	55                   	push   rbp
  40176a:	53                   	push   rbx
  40176b:	48 83 ec 38          	sub    rsp,0x38
  40176f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401776:	00 00 
  401778:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40177d:	31 c0                	xor    eax,eax
  40177f:	48 8d 74 24 0d       	lea    rsi,[rsp+0xd]
  401784:	e8 ed fd ff ff       	call   401576 <read_exact>
  401789:	41 83 c8 ff          	or     r8d,0xffffffff
  40178d:	31 ff                	xor    edi,edi
  40178f:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401794:	48 8d 0d 28 19 00 00 	lea    rcx,[rip+0x1928]        # 4030c3 <_IO_stdin_used+0xc3>
  40179b:	ba 01 00 00 00       	mov    edx,0x1
  4017a0:	e8 d1 fd ff ff       	call   401576 <read_exact>
  4017a5:	41 83 c8 ff          	or     r8d,0xffffffff
  4017a9:	31 ff                	xor    edi,edi
  4017ab:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
  4017b0:	48 8d 0d 2b 19 00 00 	lea    rcx,[rip+0x192b]        # 4030e2 <_IO_stdin_used+0xe2>
  4017b7:	ba 01 00 00 00       	mov    edx,0x1
  4017bc:	e8 b5 fd ff ff       	call   401576 <read_exact>
  4017c1:	31 ff                	xor    edi,edi
  4017c3:	41 83 c8 ff          	or     r8d,0xffffffff
  4017c7:	ba 01 00 00 00       	mov    edx,0x1
  4017cc:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  4017d1:	48 8d 0d 28 19 00 00 	lea    rcx,[rip+0x1928]        # 403100 <_IO_stdin_used+0x100>
  4017d8:	e8 99 fd ff ff       	call   401576 <read_exact>
  4017dd:	0f b6 5c 24 0b       	movzx  ebx,BYTE PTR [rsp+0xb]
  4017e2:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [rsp+0xc]
  4017e7:	0f af da             	imul   ebx,edx
  4017ea:	48 63 db             	movsxd rbx,ebx
  4017ed:	48 c1 e3 02          	shl    rbx,0x2
  4017f1:	48 89 df             	mov    rdi,rbx
  4017f4:	e8 37 fa ff ff       	call   401230 <malloc@plt>
  4017f9:	48 85 c0             	test   rax,rax
  4017fc:	75 0e                	jne    40180c <handle_2+0xc4>
  4017fe:	48 8d 3d ff 17 00 00 	lea    rdi,[rip+0x17ff]        # 403004 <_IO_stdin_used+0x4>
  401805:	e8 86 f9 ff ff       	call   401190 <puts@plt>
  40180a:	eb 58                	jmp    401864 <handle_2+0x11c>
  40180c:	89 da                	mov    edx,ebx
  40180e:	48 89 c6             	mov    rsi,rax
  401811:	41 83 c8 ff          	or     r8d,0xffffffff
  401815:	31 ff                	xor    edi,edi
  401817:	48 8d 0d 1b 18 00 00 	lea    rcx,[rip+0x181b]        # 403039 <_IO_stdin_used+0x39>
  40181e:	48 89 c5             	mov    rbp,rax
  401821:	e8 50 fd ff ff       	call   401576 <read_exact>
  401826:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  40182b:	0f b6 54 24 0b       	movzx  edx,BYTE PTR [rsp+0xb]
  401830:	0f af d0             	imul   edx,eax
  401833:	31 c0                	xor    eax,eax
  401835:	39 c2                	cmp    edx,eax
  401837:	7e 33                	jle    40186c <handle_2+0x124>
  401839:	0f b6 4c 85 03       	movzx  ecx,BYTE PTR [rbp+rax*4+0x3]
  40183e:	48 ff c0             	inc    rax
  401841:	8d 71 e0             	lea    esi,[rcx-0x20]
  401844:	40 80 fe 5e          	cmp    sil,0x5e
  401848:	76 eb                	jbe    401835 <handle_2+0xed>
  40184a:	48 8b 3d ef 37 00 00 	mov    rdi,QWORD PTR [rip+0x37ef]        # 405040 <stderr@GLIBC_2.2.5>
  401851:	48 8d 15 fd 17 00 00 	lea    rdx,[rip+0x17fd]        # 403055 <_IO_stdin_used+0x55>
  401858:	be 01 00 00 00       	mov    esi,0x1
  40185d:	31 c0                	xor    eax,eax
  40185f:	e8 1c fa ff ff       	call   401280 <__fprintf_chk@plt>
  401864:	83 cf ff             	or     edi,0xffffffff
  401867:	e8 04 fa ff ff       	call   401270 <exit@plt>
  40186c:	45 31 ed             	xor    r13d,r13d
  40186f:	4c 8d 7c 24 0f       	lea    r15,[rsp+0xf]
  401874:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  401879:	44 39 e8             	cmp    eax,r13d
  40187c:	0f 8e a7 00 00 00    	jle    401929 <handle_2+0x1e1>
  401882:	45 31 f6             	xor    r14d,r14d
  401885:	0f b6 4c 24 0b       	movzx  ecx,BYTE PTR [rsp+0xb]
  40188a:	44 39 f1             	cmp    ecx,r14d
  40188d:	0f 8e 8e 00 00 00    	jle    401921 <handle_2+0x1d9>
  401893:	0f b6 44 24 0d       	movzx  eax,BYTE PTR [rsp+0xd]
  401898:	0f b6 5c 24 0e       	movzx  ebx,BYTE PTR [rsp+0xe]
  40189d:	41 0f af cd          	imul   ecx,r13d
  4018a1:	4c 89 ff             	mov    rdi,r15
  4018a4:	41 0f b6 74 24 06    	movzx  esi,BYTE PTR [r12+0x6]
  4018aa:	4c 8d 05 d6 17 00 00 	lea    r8,[rip+0x17d6]        # 403087 <_IO_stdin_used+0x87>
  4018b1:	44 01 f0             	add    eax,r14d
  4018b4:	44 01 eb             	add    ebx,r13d
  4018b7:	99                   	cdq
  4018b8:	0f af de             	imul   ebx,esi
  4018bb:	44 01 f1             	add    ecx,r14d
  4018be:	41 ff c6             	inc    r14d
  4018c1:	f7 fe                	idiv   esi
  4018c3:	48 63 c9             	movsxd rcx,ecx
  4018c6:	be 19 00 00 00       	mov    esi,0x19
  4018cb:	48 8d 44 8d 00       	lea    rax,[rbp+rcx*4+0x0]
  4018d0:	b9 19 00 00 00       	mov    ecx,0x19
  4018d5:	01 d3                	add    ebx,edx
  4018d7:	52                   	push   rdx
  4018d8:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  4018dc:	52                   	push   rdx
  4018dd:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  4018e1:	52                   	push   rdx
  4018e2:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  4018e6:	52                   	push   rdx
  4018e7:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  4018eb:	ba 01 00 00 00       	mov    edx,0x1
  4018f0:	31 c0                	xor    eax,eax
  4018f2:	e8 69 f8 ff ff       	call   401160 <__snprintf_chk@plt>
  4018f7:	89 d8                	mov    eax,ebx
  4018f9:	31 d2                	xor    edx,edx
  4018fb:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  4018ff:	41 f7 74 24 0c       	div    DWORD PTR [r12+0xc]
  401904:	48 83 c4 20          	add    rsp,0x20
  401908:	48 6b d2 18          	imul   rdx,rdx,0x18
  40190c:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
  401911:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401914:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  401918:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  40191c:	e9 64 ff ff ff       	jmp    401885 <handle_2+0x13d>
  401921:	41 ff c5             	inc    r13d
  401924:	e9 4b ff ff ff       	jmp    401874 <handle_2+0x12c>
  401929:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  40192e:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401935:	00 00 
  401937:	74 05                	je     40193e <handle_2+0x1f6>
  401939:	e8 72 f8 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  40193e:	48 83 c4 38          	add    rsp,0x38
  401942:	5b                   	pop    rbx
  401943:	5d                   	pop    rbp
  401944:	41 5c                	pop    r12
  401946:	41 5d                	pop    r13
  401948:	41 5e                	pop    r14
  40194a:	41 5f                	pop    r15
  40194c:	c3                   	ret

000000000040194d <handle_3>:
  40194d:	f3 0f 1e fa          	endbr64
  401951:	41 54                	push   r12
  401953:	41 83 c8 ff          	or     r8d,0xffffffff
  401957:	ba 01 00 00 00       	mov    edx,0x1
  40195c:	48 8d 0d bc 17 00 00 	lea    rcx,[rip+0x17bc]        # 40311f <_IO_stdin_used+0x11f>
  401963:	55                   	push   rbp
  401964:	48 89 fd             	mov    rbp,rdi
  401967:	31 ff                	xor    edi,edi
  401969:	53                   	push   rbx
  40196a:	48 83 ec 10          	sub    rsp,0x10
  40196e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401975:	00 00 
  401977:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40197c:	31 c0                	xor    eax,eax
  40197e:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401983:	e8 ee fb ff ff       	call   401576 <read_exact>
  401988:	48 8d 74 24 06       	lea    rsi,[rsp+0x6]
  40198d:	41 83 c8 ff          	or     r8d,0xffffffff
  401991:	31 ff                	xor    edi,edi
  401993:	48 8d 0d 48 17 00 00 	lea    rcx,[rip+0x1748]        # 4030e2 <_IO_stdin_used+0xe2>
  40199a:	ba 01 00 00 00       	mov    edx,0x1
  40199f:	e8 d2 fb ff ff       	call   401576 <read_exact>
  4019a4:	ba 01 00 00 00       	mov    edx,0x1
  4019a9:	31 ff                	xor    edi,edi
  4019ab:	41 83 c8 ff          	or     r8d,0xffffffff
  4019af:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  4019b4:	48 8d 0d 45 17 00 00 	lea    rcx,[rip+0x1745]        # 403100 <_IO_stdin_used+0x100>
  4019bb:	e8 b6 fb ff ff       	call   401576 <read_exact>
  4019c0:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  4019c5:	8a 54 24 06          	mov    dl,BYTE PTR [rsp+0x6]
  4019c9:	48 c1 e0 04          	shl    rax,0x4
  4019cd:	48 01 e8             	add    rax,rbp
  4019d0:	88 50 19             	mov    BYTE PTR [rax+0x19],dl
  4019d3:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
  4019d7:	8a 54 24 07          	mov    dl,BYTE PTR [rsp+0x7]
  4019db:	88 50 18             	mov    BYTE PTR [rax+0x18],dl
  4019de:	48 85 ff             	test   rdi,rdi
  4019e1:	74 05                	je     4019e8 <handle_3+0x9b>
  4019e3:	e8 88 f7 ff ff       	call   401170 <free@plt>
  4019e8:	44 0f b6 64 24 06    	movzx  r12d,BYTE PTR [rsp+0x6]
  4019ee:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  4019f3:	44 0f af e2          	imul   r12d,edx
  4019f7:	49 63 fc             	movsxd rdi,r12d
  4019fa:	e8 31 f8 ff ff       	call   401230 <malloc@plt>
  4019ff:	48 89 c3             	mov    rbx,rax
  401a02:	48 85 c0             	test   rax,rax
  401a05:	75 0e                	jne    401a15 <handle_3+0xc8>
  401a07:	48 8d 3d f6 15 00 00 	lea    rdi,[rip+0x15f6]        # 403004 <_IO_stdin_used+0x4>
  401a0e:	e8 7d f7 ff ff       	call   401190 <puts@plt>
  401a13:	eb 55                	jmp    401a6a <handle_3+0x11d>
  401a15:	44 89 e2             	mov    edx,r12d
  401a18:	48 89 c6             	mov    rsi,rax
  401a1b:	41 83 c8 ff          	or     r8d,0xffffffff
  401a1f:	31 ff                	xor    edi,edi
  401a21:	48 8d 0d 11 16 00 00 	lea    rcx,[rip+0x1611]        # 403039 <_IO_stdin_used+0x39>
  401a28:	e8 49 fb ff ff       	call   401576 <read_exact>
  401a2d:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401a32:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401a37:	0f af d0             	imul   edx,eax
  401a3a:	31 c0                	xor    eax,eax
  401a3c:	39 c2                	cmp    edx,eax
  401a3e:	7e 32                	jle    401a72 <handle_3+0x125>
  401a40:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401a44:	48 ff c0             	inc    rax
  401a47:	8d 71 e0             	lea    esi,[rcx-0x20]
  401a4a:	40 80 fe 5e          	cmp    sil,0x5e
  401a4e:	76 ec                	jbe    401a3c <handle_3+0xef>
  401a50:	48 8b 3d e9 35 00 00 	mov    rdi,QWORD PTR [rip+0x35e9]        # 405040 <stderr@GLIBC_2.2.5>
  401a57:	48 8d 15 f7 15 00 00 	lea    rdx,[rip+0x15f7]        # 403055 <_IO_stdin_used+0x55>
  401a5e:	be 01 00 00 00       	mov    esi,0x1
  401a63:	31 c0                	xor    eax,eax
  401a65:	e8 16 f8 ff ff       	call   401280 <__fprintf_chk@plt>
  401a6a:	83 cf ff             	or     edi,0xffffffff
  401a6d:	e8 fe f7 ff ff       	call   401270 <exit@plt>
  401a72:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401a77:	48 c1 e0 04          	shl    rax,0x4
  401a7b:	48 89 5c 28 20       	mov    QWORD PTR [rax+rbp*1+0x20],rbx
  401a80:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401a85:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401a8c:	00 00 
  401a8e:	74 05                	je     401a95 <handle_3+0x148>
  401a90:	e8 1b f7 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401a95:	48 83 c4 10          	add    rsp,0x10
  401a99:	5b                   	pop    rbx
  401a9a:	5d                   	pop    rbp
  401a9b:	41 5c                	pop    r12
  401a9d:	c3                   	ret

0000000000401a9e <handle_5>:
  401a9e:	f3 0f 1e fa          	endbr64
  401aa2:	41 55                	push   r13
  401aa4:	b9 03 01 00 00       	mov    ecx,0x103
  401aa9:	41 83 c8 ff          	or     r8d,0xffffffff
  401aad:	ba 02 01 00 00       	mov    edx,0x102
  401ab2:	41 54                	push   r12
  401ab4:	49 89 fc             	mov    r12,rdi
  401ab7:	55                   	push   rbp
  401ab8:	53                   	push   rbx
  401ab9:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  401ac0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401ac7:	00 00 
  401ac9:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  401ad0:	00 
  401ad1:	31 c0                	xor    eax,eax
  401ad3:	48 8d 7c 24 05       	lea    rdi,[rsp+0x5]
  401ad8:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401add:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  401adf:	48 8d 0d 5b 16 00 00 	lea    rcx,[rip+0x165b]        # 403141 <_IO_stdin_used+0x141>
  401ae6:	31 ff                	xor    edi,edi
  401ae8:	e8 89 fa ff ff       	call   401576 <read_exact>
  401aed:	66 8b 54 24 06       	mov    dx,WORD PTR [rsp+0x6]
  401af2:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401af7:	31 f6                	xor    esi,esi
  401af9:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401afe:	86 f2                	xchg   dl,dh
  401b00:	48 c1 e0 04          	shl    rax,0x4
  401b04:	66 41 89 54 04 18    	mov    WORD PTR [r12+rax*1+0x18],dx
  401b0a:	31 c0                	xor    eax,eax
  401b0c:	e8 4f f7 ff ff       	call   401260 <open@plt>
  401b11:	48 8b 35 28 35 00 00 	mov    rsi,QWORD PTR [rip+0x3528]        # 405040 <stderr@GLIBC_2.2.5>
  401b18:	48 8d 3d 4d 16 00 00 	lea    rdi,[rip+0x164d]        # 40316c <_IO_stdin_used+0x16c>
  401b1f:	85 c0                	test   eax,eax
  401b21:	0f 88 ca 00 00 00    	js     401bf1 <handle_5+0x153>
  401b27:	89 c5                	mov    ebp,eax
  401b29:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b2e:	48 c1 e0 04          	shl    rax,0x4
  401b32:	4a 8b 7c 20 20       	mov    rdi,QWORD PTR [rax+r12*1+0x20]
  401b37:	48 85 ff             	test   rdi,rdi
  401b3a:	74 05                	je     401b41 <handle_5+0xa3>
  401b3c:	e8 2f f6 ff ff       	call   401170 <free@plt>
  401b41:	44 0f b6 6c 24 06    	movzx  r13d,BYTE PTR [rsp+0x6]
  401b47:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401b4c:	44 0f af ea          	imul   r13d,edx
  401b50:	49 63 fd             	movsxd rdi,r13d
  401b53:	e8 d8 f6 ff ff       	call   401230 <malloc@plt>
  401b58:	48 89 c3             	mov    rbx,rax
  401b5b:	48 85 c0             	test   rax,rax
  401b5e:	75 14                	jne    401b74 <handle_5+0xd6>
  401b60:	48 8d 3d 9d 14 00 00 	lea    rdi,[rip+0x149d]        # 403004 <_IO_stdin_used+0x4>
  401b67:	e8 24 f6 ff ff       	call   401190 <puts@plt>
  401b6c:	83 cf ff             	or     edi,0xffffffff
  401b6f:	e8 fc f6 ff ff       	call   401270 <exit@plt>
  401b74:	44 89 ea             	mov    edx,r13d
  401b77:	48 89 c6             	mov    rsi,rax
  401b7a:	41 83 c8 ff          	or     r8d,0xffffffff
  401b7e:	89 ef                	mov    edi,ebp
  401b80:	48 8d 0d b2 14 00 00 	lea    rcx,[rip+0x14b2]        # 403039 <_IO_stdin_used+0x39>
  401b87:	e8 ea f9 ff ff       	call   401576 <read_exact>
  401b8c:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401b91:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401b96:	0f af d0             	imul   edx,eax
  401b99:	31 c0                	xor    eax,eax
  401b9b:	39 c2                	cmp    edx,eax
  401b9d:	7e 2c                	jle    401bcb <handle_5+0x12d>
  401b9f:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401ba3:	48 ff c0             	inc    rax
  401ba6:	8d 71 e0             	lea    esi,[rcx-0x20]
  401ba9:	40 80 fe 5e          	cmp    sil,0x5e
  401bad:	76 ec                	jbe    401b9b <handle_5+0xfd>
  401baf:	48 8b 3d 8a 34 00 00 	mov    rdi,QWORD PTR [rip+0x348a]        # 405040 <stderr@GLIBC_2.2.5>
  401bb6:	48 8d 15 98 14 00 00 	lea    rdx,[rip+0x1498]        # 403055 <_IO_stdin_used+0x55>
  401bbd:	be 01 00 00 00       	mov    esi,0x1
  401bc2:	31 c0                	xor    eax,eax
  401bc4:	e8 b7 f6 ff ff       	call   401280 <__fprintf_chk@plt>
  401bc9:	eb a1                	jmp    401b6c <handle_5+0xce>
  401bcb:	ba 0c 00 00 00       	mov    edx,0xc
  401bd0:	48 8d 35 b8 15 00 00 	lea    rsi,[rip+0x15b8]        # 40318f <_IO_stdin_used+0x18f>
  401bd7:	48 89 df             	mov    rdi,rbx
  401bda:	e8 a1 f5 ff ff       	call   401180 <strncmp@plt>
  401bdf:	85 c0                	test   eax,eax
  401be1:	75 18                	jne    401bfb <handle_5+0x15d>
  401be3:	48 8b 35 56 34 00 00 	mov    rsi,QWORD PTR [rip+0x3456]        # 405040 <stderr@GLIBC_2.2.5>
  401bea:	48 8d 3d ab 15 00 00 	lea    rdi,[rip+0x15ab]        # 40319c <_IO_stdin_used+0x19c>
  401bf1:	e8 ea f5 ff ff       	call   4011e0 <fputs@plt>
  401bf6:	e9 71 ff ff ff       	jmp    401b6c <handle_5+0xce>
  401bfb:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401c00:	89 ef                	mov    edi,ebp
  401c02:	48 c1 e0 04          	shl    rax,0x4
  401c06:	4a 89 5c 20 20       	mov    QWORD PTR [rax+r12*1+0x20],rbx
  401c0b:	e8 e0 f5 ff ff       	call   4011f0 <close@plt>
  401c10:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  401c17:	00 
  401c18:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401c1f:	00 00 
  401c21:	74 05                	je     401c28 <handle_5+0x18a>
  401c23:	e8 88 f5 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401c28:	48 81 c4 18 01 00 00 	add    rsp,0x118
  401c2f:	5b                   	pop    rbx
  401c30:	5d                   	pop    rbp
  401c31:	41 5c                	pop    r12
  401c33:	41 5d                	pop    r13
  401c35:	c3                   	ret

0000000000401c36 <handle_4>:
  401c36:	f3 0f 1e fa          	endbr64
  401c3a:	41 57                	push   r15
  401c3c:	41 56                	push   r14
  401c3e:	41 55                	push   r13
  401c40:	41 54                	push   r12
  401c42:	55                   	push   rbp
  401c43:	53                   	push   rbx
  401c44:	4c 8d 9c 24 00 00 fc 	lea    r11,[rsp-0x40000]
  401c4b:	ff 
  401c4c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401c53:	83 0c 24 00          	or     DWORD PTR [rsp],0x0
  401c57:	4c 39 dc             	cmp    rsp,r11
  401c5a:	75 f0                	jne    401c4c <handle_4+0x16>
  401c5c:	48 83 ec 48          	sub    rsp,0x48
  401c60:	48 8d 0d 56 15 00 00 	lea    rcx,[rip+0x1556]        # 4031bd <_IO_stdin_used+0x1bd>
  401c67:	ba 09 00 00 00       	mov    edx,0x9
  401c6c:	41 83 c8 ff          	or     r8d,0xffffffff
  401c70:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401c77:	00 00 
  401c79:	48 89 84 24 38 00 04 	mov    QWORD PTR [rsp+0x40038],rax
  401c80:	00 
  401c81:	31 c0                	xor    eax,eax
  401c83:	48 89 fb             	mov    rbx,rdi
  401c86:	48 8d 74 24 16       	lea    rsi,[rsp+0x16]
  401c8b:	31 ff                	xor    edi,edi
  401c8d:	e8 e4 f8 ff ff       	call   401576 <read_exact>
  401c92:	48 8d 7c 24 1f       	lea    rdi,[rsp+0x1f]
  401c97:	b9 00 00 01 00       	mov    ecx,0x10000
  401c9c:	31 c0                	xor    eax,eax
  401c9e:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401ca3:	44 8a 54 24 17       	mov    r10b,BYTE PTR [rsp+0x17]
  401ca8:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
  401cad:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401caf:	44 8a 5c 24 18       	mov    r11b,BYTE PTR [rsp+0x18]
  401cb4:	40 8a 6c 24 19       	mov    bpl,BYTE PTR [rsp+0x19]
  401cb9:	48 c1 e2 04          	shl    rdx,0x4
  401cbd:	48 01 da             	add    rdx,rbx
  401cc0:	44 0f b6 62 18       	movzx  r12d,BYTE PTR [rdx+0x18]
  401cc5:	41 39 cc             	cmp    r12d,ecx
  401cc8:	7e 58                	jle    401d22 <handle_4+0xec>
  401cca:	44 0f b6 42 19       	movzx  r8d,BYTE PTR [rdx+0x19]
  401ccf:	31 ff                	xor    edi,edi
  401cd1:	44 89 c0             	mov    eax,r8d
  401cd4:	0f af c1             	imul   eax,ecx
  401cd7:	41 39 f8             	cmp    r8d,edi
  401cda:	7e 42                	jle    401d1e <handle_4+0xe8>
  401cdc:	4c 8b 4a 20          	mov    r9,QWORD PTR [rdx+0x20]
  401ce0:	44 88 14 86          	mov    BYTE PTR [rsi+rax*4],r10b
  401ce4:	44 88 5c 86 01       	mov    BYTE PTR [rsi+rax*4+0x1],r11b
  401ce9:	40 88 6c 86 02       	mov    BYTE PTR [rsi+rax*4+0x2],bpl
  401cee:	4d 85 c9             	test   r9,r9
  401cf1:	75 1b                	jne    401d0e <handle_4+0xd8>
  401cf3:	48 8b 35 46 33 00 00 	mov    rsi,QWORD PTR [rip+0x3346]        # 405040 <stderr@GLIBC_2.2.5>
  401cfa:	48 8d 3d e9 14 00 00 	lea    rdi,[rip+0x14e9]        # 4031ea <_IO_stdin_used+0x1ea>
  401d01:	e8 da f4 ff ff       	call   4011e0 <fputs@plt>
  401d06:	83 cf ff             	or     edi,0xffffffff
  401d09:	e8 62 f5 ff ff       	call   401270 <exit@plt>
  401d0e:	45 8a 0c 01          	mov    r9b,BYTE PTR [r9+rax*1]
  401d12:	ff c7                	inc    edi
  401d14:	44 88 4c 86 03       	mov    BYTE PTR [rsi+rax*4+0x3],r9b
  401d19:	48 ff c0             	inc    rax
  401d1c:	eb b9                	jmp    401cd7 <handle_4+0xa1>
  401d1e:	ff c1                	inc    ecx
  401d20:	eb a3                	jmp    401cc5 <handle_4+0x8f>
  401d22:	45 31 ff             	xor    r15d,r15d
  401d25:	48 8d bc 24 1f 00 04 	lea    rdi,[rsp+0x4001f]
  401d2c:	00 
  401d2d:	0f b6 44 24 1d       	movzx  eax,BYTE PTR [rsp+0x1d]
  401d32:	44 39 f8             	cmp    eax,r15d
  401d35:	0f 8e 2c 01 00 00    	jle    401e67 <handle_4+0x231>
  401d3b:	45 31 d2             	xor    r10d,r10d
  401d3e:	0f b6 44 24 1c       	movzx  eax,BYTE PTR [rsp+0x1c]
  401d43:	44 39 d0             	cmp    eax,r10d
  401d46:	0f 8e 13 01 00 00    	jle    401e5f <handle_4+0x229>
  401d4c:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401d51:	45 31 db             	xor    r11d,r11d
  401d54:	48 c1 e2 04          	shl    rdx,0x4
  401d58:	48 01 da             	add    rdx,rbx
  401d5b:	8a 42 19             	mov    al,BYTE PTR [rdx+0x19]
  401d5e:	41 0f af c2          	imul   eax,r10d
  401d62:	02 44 24 1a          	add    al,BYTE PTR [rsp+0x1a]
  401d66:	44 0f b6 e0          	movzx  r12d,al
  401d6a:	8a 42 18             	mov    al,BYTE PTR [rdx+0x18]
  401d6d:	41 0f af c7          	imul   eax,r15d
  401d71:	02 44 24 1b          	add    al,BYTE PTR [rsp+0x1b]
  401d75:	0f b6 e8             	movzx  ebp,al
  401d78:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d7d:	48 c1 e0 04          	shl    rax,0x4
  401d81:	0f b6 44 18 18       	movzx  eax,BYTE PTR [rax+rbx*1+0x18]
  401d86:	44 39 d8             	cmp    eax,r11d
  401d89:	0f 8e c8 00 00 00    	jle    401e57 <handle_4+0x221>
  401d8f:	45 31 ed             	xor    r13d,r13d
  401d92:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401d97:	48 c1 e0 04          	shl    rax,0x4
  401d9b:	0f b6 44 18 19       	movzx  eax,BYTE PTR [rax+rbx*1+0x19]
  401da0:	44 39 e8             	cmp    eax,r13d
  401da3:	0f 8e a4 00 00 00    	jle    401e4d <handle_4+0x217>
  401da9:	41 0f af c3          	imul   eax,r11d
  401dad:	44 01 e8             	add    eax,r13d
  401db0:	48 98                	cdqe
  401db2:	0f b6 54 84 22       	movzx  edx,BYTE PTR [rsp+rax*4+0x22]
  401db7:	3a 54 24 1e          	cmp    dl,BYTE PTR [rsp+0x1e]
  401dbb:	0f 84 84 00 00 00    	je     401e45 <handle_4+0x20f>
  401dc1:	44 89 5c 24 0c       	mov    DWORD PTR [rsp+0xc],r11d
  401dc6:	be 19 00 00 00       	mov    esi,0x19
  401dcb:	44 0f b6 73 06       	movzx  r14d,BYTE PTR [rbx+0x6]
  401dd0:	4c 8d 05 b0 12 00 00 	lea    r8,[rip+0x12b0]        # 403087 <_IO_stdin_used+0x87>
  401dd7:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  401ddc:	51                   	push   rcx
  401ddd:	b9 19 00 00 00       	mov    ecx,0x19
  401de2:	52                   	push   rdx
  401de3:	0f b6 54 84 31       	movzx  edx,BYTE PTR [rsp+rax*4+0x31]
  401de8:	52                   	push   rdx
  401de9:	0f b6 54 84 38       	movzx  edx,BYTE PTR [rsp+rax*4+0x38]
  401dee:	52                   	push   rdx
  401def:	44 0f b6 4c 84 3f    	movzx  r9d,BYTE PTR [rsp+rax*4+0x3f]
  401df5:	ba 01 00 00 00       	mov    edx,0x1
  401dfa:	31 c0                	xor    eax,eax
  401dfc:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  401e01:	e8 5a f3 ff ff       	call   401160 <__snprintf_chk@plt>
  401e06:	43 8d 44 25 00       	lea    eax,[r13+r12*1+0x0]
  401e0b:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401e10:	44 8b 5c 24 2c       	mov    r11d,DWORD PTR [rsp+0x2c]
  401e15:	99                   	cdq
  401e16:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
  401e1b:	48 83 c4 20          	add    rsp,0x20
  401e1f:	41 f7 fe             	idiv   r14d
  401e22:	0f 10 07             	movups xmm0,XMMWORD PTR [rdi]
  401e25:	44 0f af f5          	imul   r14d,ebp
  401e29:	42 8d 04 32          	lea    eax,[rdx+r14*1]
  401e2d:	31 d2                	xor    edx,edx
  401e2f:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401e32:	48 6b d2 18          	imul   rdx,rdx,0x18
  401e36:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  401e3a:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401e3d:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401e41:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401e45:	41 ff c5             	inc    r13d
  401e48:	e9 45 ff ff ff       	jmp    401d92 <handle_4+0x15c>
  401e4d:	41 ff c3             	inc    r11d
  401e50:	ff c5                	inc    ebp
  401e52:	e9 21 ff ff ff       	jmp    401d78 <handle_4+0x142>
  401e57:	41 ff c2             	inc    r10d
  401e5a:	e9 df fe ff ff       	jmp    401d3e <handle_4+0x108>
  401e5f:	41 ff c7             	inc    r15d
  401e62:	e9 c6 fe ff ff       	jmp    401d2d <handle_4+0xf7>
  401e67:	48 8b 84 24 38 00 04 	mov    rax,QWORD PTR [rsp+0x40038]
  401e6e:	00 
  401e6f:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401e76:	00 00 
  401e78:	74 05                	je     401e7f <handle_4+0x249>
  401e7a:	e8 31 f3 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401e7f:	48 81 c4 48 00 04 00 	add    rsp,0x40048
  401e86:	5b                   	pop    rbx
  401e87:	5d                   	pop    rbp
  401e88:	41 5c                	pop    r12
  401e8a:	41 5d                	pop    r13
  401e8c:	41 5e                	pop    r14
  401e8e:	41 5f                	pop    r15
  401e90:	c3                   	ret

0000000000401e91 <handle_7>:
  401e91:	f3 0f 1e fa          	endbr64
  401e95:	48 83 ec 28          	sub    rsp,0x28
  401e99:	41 83 c8 ff          	or     r8d,0xffffffff
  401e9d:	31 ff                	xor    edi,edi
  401e9f:	ba 04 00 00 00       	mov    edx,0x4
  401ea4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401eab:	00 00 
  401ead:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401eb2:	31 c0                	xor    eax,eax
  401eb4:	48 8d 74 24 04       	lea    rsi,[rsp+0x4]
  401eb9:	48 8d 0d 5c 13 00 00 	lea    rcx,[rip+0x135c]        # 40321c <_IO_stdin_used+0x21c>
  401ec0:	e8 b1 f6 ff ff       	call   401576 <read_exact>
  401ec5:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401ec9:	b9 e8 03 00 00       	mov    ecx,0x3e8
  401ece:	31 d2                	xor    edx,edx
  401ed0:	31 f6                	xor    esi,esi
  401ed2:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401ed7:	f7 f1                	div    ecx
  401ed9:	89 c0                	mov    eax,eax
  401edb:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401ee0:	69 c2 40 42 0f 00    	imul   eax,edx,0xf4240
  401ee6:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401eeb:	e8 e0 f2 ff ff       	call   4011d0 <nanosleep@plt>
  401ef0:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401ef5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401efc:	00 00 
  401efe:	74 05                	je     401f05 <handle_7+0x74>
  401f00:	e8 ab f2 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401f05:	48 83 c4 28          	add    rsp,0x28
  401f09:	c3                   	ret

0000000000401f0a <display>:
  401f0a:	f3 0f 1e fa          	endbr64
  401f0e:	41 54                	push   r12
  401f10:	45 31 e4             	xor    r12d,r12d
  401f13:	55                   	push   rbp
  401f14:	48 89 fd             	mov    rbp,rdi
  401f17:	53                   	push   rbx
  401f18:	48 8d 1d 22 13 00 00 	lea    rbx,[rip+0x1322]        # 403241 <_IO_stdin_used+0x241>
  401f1f:	0f b6 45 07          	movzx  eax,BYTE PTR [rbp+0x7]
  401f23:	44 39 e0             	cmp    eax,r12d
  401f26:	7e 3e                	jle    401f66 <display+0x5c>
  401f28:	0f b6 55 06          	movzx  edx,BYTE PTR [rbp+0x6]
  401f2c:	bf 01 00 00 00       	mov    edi,0x1
  401f31:	48 89 d0             	mov    rax,rdx
  401f34:	48 6b d2 18          	imul   rdx,rdx,0x18
  401f38:	0f b6 f0             	movzx  esi,al
  401f3b:	41 0f af f4          	imul   esi,r12d
  401f3f:	41 ff c4             	inc    r12d
  401f42:	48 63 f6             	movsxd rsi,esi
  401f45:	48 6b f6 18          	imul   rsi,rsi,0x18
  401f49:	48 03 75 10          	add    rsi,QWORD PTR [rbp+0x10]
  401f4d:	e8 4e f2 ff ff       	call   4011a0 <write@plt>
  401f52:	ba 18 00 00 00       	mov    edx,0x18
  401f57:	48 89 de             	mov    rsi,rbx
  401f5a:	bf 01 00 00 00       	mov    edi,0x1
  401f5f:	e8 3c f2 ff ff       	call   4011a0 <write@plt>
  401f64:	eb b9                	jmp    401f1f <display+0x15>
  401f66:	5b                   	pop    rbx
  401f67:	5d                   	pop    rbp
  401f68:	41 5c                	pop    r12
  401f6a:	c3                   	ret

0000000000401f6b <handle_6>:
  401f6b:	f3 0f 1e fa          	endbr64
  401f6f:	55                   	push   rbp
  401f70:	41 83 c8 ff          	or     r8d,0xffffffff
  401f74:	48 89 fd             	mov    rbp,rdi
  401f77:	ba 01 00 00 00       	mov    edx,0x1
  401f7c:	31 ff                	xor    edi,edi
  401f7e:	48 8d 0d d5 12 00 00 	lea    rcx,[rip+0x12d5]        # 40325a <_IO_stdin_used+0x25a>
  401f85:	48 83 ec 10          	sub    rsp,0x10
  401f89:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401f90:	00 00 
  401f92:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401f97:	31 c0                	xor    eax,eax
  401f99:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401f9e:	e8 d3 f5 ff ff       	call   401576 <read_exact>
  401fa3:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  401fa8:	74 13                	je     401fbd <handle_6+0x52>
  401faa:	48 8d 35 c7 12 00 00 	lea    rsi,[rip+0x12c7]        # 403278 <_IO_stdin_used+0x278>
  401fb1:	bf 01 00 00 00       	mov    edi,0x1
  401fb6:	31 c0                	xor    eax,eax
  401fb8:	e8 83 f2 ff ff       	call   401240 <__printf_chk@plt>
  401fbd:	31 f6                	xor    esi,esi
  401fbf:	31 c0                	xor    eax,eax
  401fc1:	48 89 ef             	mov    rdi,rbp
  401fc4:	e8 41 ff ff ff       	call   401f0a <display>
  401fc9:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401fce:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401fd5:	00 00 
  401fd7:	74 05                	je     401fde <handle_6+0x73>
  401fd9:	e8 d2 f1 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  401fde:	48 83 c4 10          	add    rsp,0x10
  401fe2:	5d                   	pop    rbp
  401fe3:	c3                   	ret

0000000000401fe4 <initialize_framebuffer>:
  401fe4:	f3 0f 1e fa          	endbr64
  401fe8:	41 54                	push   r12
  401fea:	49 89 fc             	mov    r12,rdi
  401fed:	55                   	push   rbp
  401fee:	53                   	push   rbx
  401fef:	48 83 ec 30          	sub    rsp,0x30
  401ff3:	0f b6 7f 06          	movzx  edi,BYTE PTR [rdi+0x6]
  401ff7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401ffe:	00 00 
  402000:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402005:	31 c0                	xor    eax,eax
  402007:	41 0f b6 44 24 07    	movzx  eax,BYTE PTR [r12+0x7]
  40200d:	0f af f8             	imul   edi,eax
  402010:	41 89 7c 24 0c       	mov    DWORD PTR [r12+0xc],edi
  402015:	48 63 ff             	movsxd rdi,edi
  402018:	48 6b ff 18          	imul   rdi,rdi,0x18
  40201c:	48 ff c7             	inc    rdi
  40201f:	e8 0c f2 ff ff       	call   401230 <malloc@plt>
  402024:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  402029:	48 85 c0             	test   rax,rax
  40202c:	75 14                	jne    402042 <initialize_framebuffer+0x5e>
  40202e:	48 8d 3d 4b 12 00 00 	lea    rdi,[rip+0x124b]        # 403280 <_IO_stdin_used+0x280>
  402035:	e8 56 f1 ff ff       	call   401190 <puts@plt>
  40203a:	83 cf ff             	or     edi,0xffffffff
  40203d:	e8 2e f2 ff ff       	call   401270 <exit@plt>
  402042:	31 db                	xor    ebx,ebx
  402044:	48 8d 6c 24 0f       	lea    rbp,[rsp+0xf]
  402049:	41 39 5c 24 0c       	cmp    DWORD PTR [r12+0xc],ebx
  40204e:	76 54                	jbe    4020a4 <initialize_framebuffer+0xc0>
  402050:	50                   	push   rax
  402051:	ba 01 00 00 00       	mov    edx,0x1
  402056:	41 b9 ff 00 00 00    	mov    r9d,0xff
  40205c:	48 89 ef             	mov    rdi,rbp
  40205f:	6a 20                	push   0x20
  402061:	4c 8d 05 1f 10 00 00 	lea    r8,[rip+0x101f]        # 403087 <_IO_stdin_used+0x87>
  402068:	b9 19 00 00 00       	mov    ecx,0x19
  40206d:	31 c0                	xor    eax,eax
  40206f:	68 ff 00 00 00       	push   0xff
  402074:	be 19 00 00 00       	mov    esi,0x19
  402079:	68 ff 00 00 00       	push   0xff
  40207e:	e8 dd f0 ff ff       	call   401160 <__snprintf_chk@plt>
  402083:	0f 10 45 00          	movups xmm0,XMMWORD PTR [rbp+0x0]
  402087:	48 6b c3 18          	imul   rax,rbx,0x18
  40208b:	48 ff c3             	inc    rbx
  40208e:	49 03 44 24 10       	add    rax,QWORD PTR [r12+0x10]
  402093:	48 83 c4 20          	add    rsp,0x20
  402097:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  40209a:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  40209e:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  4020a2:	eb a5                	jmp    402049 <initialize_framebuffer+0x65>
  4020a4:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  4020a9:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4020b0:	00 00 
  4020b2:	74 05                	je     4020b9 <initialize_framebuffer+0xd5>
  4020b4:	e8 f7 f0 ff ff       	call   4011b0 <__stack_chk_fail@plt>
  4020b9:	48 83 c4 30          	add    rsp,0x30
  4020bd:	4c 89 e0             	mov    rax,r12
  4020c0:	5b                   	pop    rbx
  4020c1:	5d                   	pop    rbp
  4020c2:	41 5c                	pop    r12
  4020c4:	c3                   	ret
  4020c5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4020cc:	00 00 00 
  4020cf:	90                   	nop

00000000004020d0 <__libc_csu_init>:
  4020d0:	f3 0f 1e fa          	endbr64
  4020d4:	41 57                	push   r15
  4020d6:	4c 8d 3d 5b 2c 00 00 	lea    r15,[rip+0x2c5b]        # 404d38 <__frame_dummy_init_array_entry>
  4020dd:	41 56                	push   r14
  4020df:	49 89 d6             	mov    r14,rdx
  4020e2:	41 55                	push   r13
  4020e4:	49 89 f5             	mov    r13,rsi
  4020e7:	41 54                	push   r12
  4020e9:	41 89 fc             	mov    r12d,edi
  4020ec:	55                   	push   rbp
  4020ed:	48 8d 2d 54 2c 00 00 	lea    rbp,[rip+0x2c54]        # 404d48 <__do_global_dtors_aux_fini_array_entry>
  4020f4:	53                   	push   rbx
  4020f5:	4c 29 fd             	sub    rbp,r15
  4020f8:	48 83 ec 08          	sub    rsp,0x8
  4020fc:	e8 ff ee ff ff       	call   401000 <_init>
  402101:	48 c1 fd 03          	sar    rbp,0x3
  402105:	74 1f                	je     402126 <__libc_csu_init+0x56>
  402107:	31 db                	xor    ebx,ebx
  402109:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402110:	4c 89 f2             	mov    rdx,r14
  402113:	4c 89 ee             	mov    rsi,r13
  402116:	44 89 e7             	mov    edi,r12d
  402119:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40211d:	48 83 c3 01          	add    rbx,0x1
  402121:	48 39 dd             	cmp    rbp,rbx
  402124:	75 ea                	jne    402110 <__libc_csu_init+0x40>
  402126:	48 83 c4 08          	add    rsp,0x8
  40212a:	5b                   	pop    rbx
  40212b:	5d                   	pop    rbp
  40212c:	41 5c                	pop    r12
  40212e:	41 5d                	pop    r13
  402130:	41 5e                	pop    r14
  402132:	41 5f                	pop    r15
  402134:	c3                   	ret
  402135:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40213c:	00 00 00 00 

0000000000402140 <__libc_csu_fini>:
  402140:	f3 0f 1e fa          	endbr64
  402144:	c3                   	ret

Disassembly of section .fini:

0000000000402148 <_fini>:
  402148:	f3 0f 1e fa          	endbr64
  40214c:	48 83 ec 08          	sub    rsp,0x8
  402150:	48 83 c4 08          	add    rsp,0x8
  402154:	c3                   	ret
