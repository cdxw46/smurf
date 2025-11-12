
cimg_path:     file format elf64-x86-64


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
  401020:	ff 35 0a 3f 00 00    	push   QWORD PTR [rip+0x3f0a]        # 404f30 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 0b 3f 00 00 	bnd jmp QWORD PTR [rip+0x3f0b]        # 404f38 <_GLOBAL_OFFSET_TABLE_+0x10>
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
  401170:	f3 0f 1e fa          	endbr64
  401174:	68 14 00 00 00       	push   0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64
  401184:	68 15 00 00 00       	push   0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401190 <__snprintf_chk@plt>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	f2 ff 25 a5 3d 00 00 	bnd jmp QWORD PTR [rip+0x3da5]        # 404f40 <__snprintf_chk@GLIBC_2.3.4>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <free@plt>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	f2 ff 25 9d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d9d]        # 404f48 <free@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <strncmp@plt>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	f2 ff 25 95 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d95]        # 404f50 <strncmp@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <puts@plt>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	f2 ff 25 8d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d8d]        # 404f58 <puts@GLIBC_2.2.5>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <write@plt>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	f2 ff 25 85 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d85]        # 404f60 <write@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <__stack_chk_fail@plt>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	f2 ff 25 7d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d7d]        # 404f68 <__stack_chk_fail@GLIBC_2.4>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <system@plt>:
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	f2 ff 25 75 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d75]        # 404f70 <system@GLIBC_2.2.5>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <dup2@plt>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	f2 ff 25 6d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d6d]        # 404f78 <dup2@GLIBC_2.2.5>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <nanosleep@plt>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	f2 ff 25 65 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d65]        # 404f80 <nanosleep@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <fputs@plt>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	f2 ff 25 5d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d5d]        # 404f88 <fputs@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401230 <geteuid@plt>:
  401230:	f3 0f 1e fa          	endbr64
  401234:	f2 ff 25 55 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d55]        # 404f90 <geteuid@GLIBC_2.2.5>
  40123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401240 <close@plt>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	f2 ff 25 4d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d4d]        # 404f98 <close@GLIBC_2.2.5>
  40124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401250 <fputc@plt>:
  401250:	f3 0f 1e fa          	endbr64
  401254:	f2 ff 25 45 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d45]        # 404fa0 <fputc@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401260 <read@plt>:
  401260:	f3 0f 1e fa          	endbr64
  401264:	f2 ff 25 3d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d3d]        # 404fa8 <read@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401270 <strcmp@plt>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	f2 ff 25 35 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d35]        # 404fb0 <strcmp@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401280 <malloc@plt>:
  401280:	f3 0f 1e fa          	endbr64
  401284:	f2 ff 25 2d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d2d]        # 404fb8 <malloc@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401290 <__printf_chk@plt>:
  401290:	f3 0f 1e fa          	endbr64
  401294:	f2 ff 25 25 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d25]        # 404fc0 <__printf_chk@GLIBC_2.3.4>
  40129b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012a0 <setvbuf@plt>:
  4012a0:	f3 0f 1e fa          	endbr64
  4012a4:	f2 ff 25 1d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d1d]        # 404fc8 <setvbuf@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012b0 <open@plt>:
  4012b0:	f3 0f 1e fa          	endbr64
  4012b4:	f2 ff 25 15 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d15]        # 404fd0 <open@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012c0 <exit@plt>:
  4012c0:	f3 0f 1e fa          	endbr64
  4012c4:	f2 ff 25 0d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d0d]        # 404fd8 <exit@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012d0 <__fprintf_chk@plt>:
  4012d0:	f3 0f 1e fa          	endbr64
  4012d4:	f2 ff 25 05 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d05]        # 404fe0 <__fprintf_chk@GLIBC_2.3.4>
  4012db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004012e0 <setuid@plt>:
  4012e0:	f3 0f 1e fa          	endbr64
  4012e4:	f2 ff 25 fd 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cfd]        # 404fe8 <setuid@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

00000000004012f0 <disable_buffering>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	50                   	push   rax
  4012f5:	48 8b 3d 34 3d 00 00 	mov    rdi,QWORD PTR [rip+0x3d34]        # 405030 <stdin@GLIBC_2.2.5>
  4012fc:	31 c9                	xor    ecx,ecx
  4012fe:	ba 02 00 00 00       	mov    edx,0x2
  401303:	31 f6                	xor    esi,esi
  401305:	e8 96 ff ff ff       	call   4012a0 <setvbuf@plt>
  40130a:	48 8b 3d 0f 3d 00 00 	mov    rdi,QWORD PTR [rip+0x3d0f]        # 405020 <stdout@GLIBC_2.2.5>
  401311:	b9 01 00 00 00       	mov    ecx,0x1
  401316:	31 f6                	xor    esi,esi
  401318:	ba 02 00 00 00       	mov    edx,0x2
  40131d:	41 58                	pop    r8
  40131f:	e9 7c ff ff ff       	jmp    4012a0 <setvbuf@plt>

0000000000401324 <main>:
  401324:	f3 0f 1e fa          	endbr64
  401328:	41 54                	push   r12
  40132a:	55                   	push   rbp
  40132b:	53                   	push   rbx
  40132c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401333:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
  401338:	48 83 ec 30          	sub    rsp,0x30
  40133c:	b9 06 04 00 00       	mov    ecx,0x406
  401341:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401348:	00 00 
  40134a:	48 89 84 24 28 10 00 	mov    QWORD PTR [rsp+0x1028],rax
  401351:	00 
  401352:	31 c0                	xor    eax,eax
  401354:	41 89 f8             	mov    r8d,edi
  401357:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  40135c:	48 8d 6c 24 10       	lea    rbp,[rsp+0x10]
  401361:	41 ff c8             	dec    r8d
  401364:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401366:	7e 4f                	jle    4013b7 <main+0x93>
  401368:	4c 8b 66 08          	mov    r12,QWORD PTR [rsi+0x8]
  40136c:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
  401370:	48 8d 35 3d 1f 00 00 	lea    rsi,[rip+0x1f3d]        # 4032b4 <_IO_stdin_used+0x2b4>
  401377:	4c 89 e7             	mov    rdi,r12
  40137a:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40137c:	48 f7 d1             	not    rcx
  40137f:	49 8d 7c 0c fa       	lea    rdi,[r12+rcx*1-0x6]
  401384:	e8 e7 fe ff ff       	call   401270 <strcmp@plt>
  401389:	85 c0                	test   eax,eax
  40138b:	74 15                	je     4013a2 <main+0x7e>
  40138d:	48 8d 35 26 1f 00 00 	lea    rsi,[rip+0x1f26]        # 4032ba <_IO_stdin_used+0x2ba>
  401394:	bf 01 00 00 00       	mov    edi,0x1
  401399:	31 c0                	xor    eax,eax
  40139b:	e8 f0 fe ff ff       	call   401290 <__printf_chk@plt>
  4013a0:	eb 45                	jmp    4013e7 <main+0xc3>
  4013a2:	31 f6                	xor    esi,esi
  4013a4:	4c 89 e7             	mov    rdi,r12
  4013a7:	31 c0                	xor    eax,eax
  4013a9:	e8 02 ff ff ff       	call   4012b0 <open@plt>
  4013ae:	31 f6                	xor    esi,esi
  4013b0:	89 c7                	mov    edi,eax
  4013b2:	e8 49 fe ff ff       	call   401200 <dup2@plt>
  4013b7:	41 83 c8 ff          	or     r8d,0xffffffff
  4013bb:	31 ff                	xor    edi,edi
  4013bd:	48 8d 0d 15 1f 00 00 	lea    rcx,[rip+0x1f15]        # 4032d9 <_IO_stdin_used+0x2d9>
  4013c4:	48 89 ee             	mov    rsi,rbp
  4013c7:	ba 0c 00 00 00       	mov    edx,0xc
  4013cc:	e8 f5 01 00 00       	call   4015c6 <read_exact>
  4013d1:	81 7c 24 10 63 49 4d 	cmp    DWORD PTR [rsp+0x10],0x474d4963
  4013d8:	47 
  4013d9:	74 14                	je     4013ef <main+0xcb>
  4013db:	48 8d 3d 15 1f 00 00 	lea    rdi,[rip+0x1f15]        # 4032f7 <_IO_stdin_used+0x2f7>
  4013e2:	e8 d9 fd ff ff       	call   4011c0 <puts@plt>
  4013e7:	83 cf ff             	or     edi,0xffffffff
  4013ea:	e8 d1 fe ff ff       	call   4012c0 <exit@plt>
  4013ef:	66 83 7c 24 14 04    	cmp    WORD PTR [rsp+0x14],0x4
  4013f5:	48 8d 3d 18 1f 00 00 	lea    rdi,[rip+0x1f18]        # 403314 <_IO_stdin_used+0x314>
  4013fc:	75 e4                	jne    4013e2 <main+0xbe>
  4013fe:	48 89 ef             	mov    rdi,rbp
  401401:	48 8d 1d 74 1f 00 00 	lea    rbx,[rip+0x1f74]        # 40337c <_IO_stdin_used+0x37c>
  401408:	e8 25 0c 00 00       	call   402032 <initialize_framebuffer>
  40140d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  401411:	8d 50 ff             	lea    edx,[rax-0x1]
  401414:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  401418:	85 c0                	test   eax,eax
  40141a:	0f 84 8a 00 00 00    	je     4014aa <main+0x186>
  401420:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  401425:	41 83 c8 ff          	or     r8d,0xffffffff
  401429:	ba 02 00 00 00       	mov    edx,0x2
  40142e:	31 ff                	xor    edi,edi
  401430:	48 8d 0d f9 1e 00 00 	lea    rcx,[rip+0x1ef9]        # 403330 <_IO_stdin_used+0x330>
  401437:	e8 8a 01 00 00       	call   4015c6 <read_exact>
  40143c:	0f b7 4c 24 0e       	movzx  ecx,WORD PTR [rsp+0xe]
  401441:	8d 41 ff             	lea    eax,[rcx-0x1]
  401444:	66 83 f8 06          	cmp    ax,0x6
  401448:	77 41                	ja     40148b <main+0x167>
  40144a:	0f b7 c0             	movzx  eax,ax
  40144d:	48 89 ef             	mov    rdi,rbp
  401450:	48 63 04 83          	movsxd rax,DWORD PTR [rbx+rax*4]
  401454:	48 01 d8             	add    rax,rbx
  401457:	3e ff e0             	notrack jmp rax
  40145a:	e8 b7 01 00 00       	call   401616 <handle_1>
  40145f:	eb ac                	jmp    40140d <main+0xe9>
  401461:	e8 32 03 00 00       	call   401798 <handle_2>
  401466:	eb a5                	jmp    40140d <main+0xe9>
  401468:	e8 30 05 00 00       	call   40199d <handle_3>
  40146d:	eb 9e                	jmp    40140d <main+0xe9>
  40146f:	e8 12 08 00 00       	call   401c86 <handle_4>
  401474:	eb 97                	jmp    40140d <main+0xe9>
  401476:	e8 73 06 00 00       	call   401aee <handle_5>
  40147b:	eb 90                	jmp    40140d <main+0xe9>
  40147d:	e8 39 0b 00 00       	call   401fbb <handle_6>
  401482:	eb 89                	jmp    40140d <main+0xe9>
  401484:	e8 58 0a 00 00       	call   401ee1 <handle_7>
  401489:	eb 82                	jmp    40140d <main+0xe9>
  40148b:	48 8b 3d ae 3b 00 00 	mov    rdi,QWORD PTR [rip+0x3bae]        # 405040 <stderr@GLIBC_2.2.5>
  401492:	48 8d 15 be 1e 00 00 	lea    rdx,[rip+0x1ebe]        # 403357 <_IO_stdin_used+0x357>
  401499:	be 01 00 00 00       	mov    esi,0x1
  40149e:	31 c0                	xor    eax,eax
  4014a0:	e8 2b fe ff ff       	call   4012d0 <__fprintf_chk@plt>
  4014a5:	e9 3d ff ff ff       	jmp    4013e7 <main+0xc3>
  4014aa:	31 f6                	xor    esi,esi
  4014ac:	48 89 ef             	mov    rdi,rbp
  4014af:	e8 a6 0a 00 00       	call   401f5a <display>
  4014b4:	48 8b 84 24 28 10 00 	mov    rax,QWORD PTR [rsp+0x1028]
  4014bb:	00 
  4014bc:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4014c3:	00 00 
  4014c5:	74 05                	je     4014cc <main+0x1a8>
  4014c7:	e8 14 fd ff ff       	call   4011e0 <__stack_chk_fail@plt>
  4014cc:	48 81 c4 30 10 00 00 	add    rsp,0x1030
  4014d3:	31 c0                	xor    eax,eax
  4014d5:	5b                   	pop    rbx
  4014d6:	5d                   	pop    rbp
  4014d7:	41 5c                	pop    r12
  4014d9:	c3                   	ret
  4014da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004014e0 <_start>:
  4014e0:	f3 0f 1e fa          	endbr64
  4014e4:	31 ed                	xor    ebp,ebp
  4014e6:	49 89 d1             	mov    r9,rdx
  4014e9:	5e                   	pop    rsi
  4014ea:	48 89 e2             	mov    rdx,rsp
  4014ed:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4014f1:	50                   	push   rax
  4014f2:	54                   	push   rsp
  4014f3:	49 c7 c0 90 21 40 00 	mov    r8,0x402190
  4014fa:	48 c7 c1 20 21 40 00 	mov    rcx,0x402120
  401501:	48 c7 c7 24 13 40 00 	mov    rdi,0x401324
  401508:	ff 15 e2 3a 00 00    	call   QWORD PTR [rip+0x3ae2]        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40150e:	f4                   	hlt
  40150f:	90                   	nop

0000000000401510 <_dl_relocate_static_pie>:
  401510:	f3 0f 1e fa          	endbr64
  401514:	c3                   	ret
  401515:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40151c:	00 00 00 
  40151f:	90                   	nop

0000000000401520 <deregister_tm_clones>:
  401520:	b8 10 50 40 00       	mov    eax,0x405010
  401525:	48 3d 10 50 40 00    	cmp    rax,0x405010
  40152b:	74 13                	je     401540 <deregister_tm_clones+0x20>
  40152d:	b8 00 00 00 00       	mov    eax,0x0
  401532:	48 85 c0             	test   rax,rax
  401535:	74 09                	je     401540 <deregister_tm_clones+0x20>
  401537:	bf 10 50 40 00       	mov    edi,0x405010
  40153c:	ff e0                	jmp    rax
  40153e:	66 90                	xchg   ax,ax
  401540:	c3                   	ret
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401550 <register_tm_clones>:
  401550:	be 10 50 40 00       	mov    esi,0x405010
  401555:	48 81 ee 10 50 40 00 	sub    rsi,0x405010
  40155c:	48 89 f0             	mov    rax,rsi
  40155f:	48 c1 ee 3f          	shr    rsi,0x3f
  401563:	48 c1 f8 03          	sar    rax,0x3
  401567:	48 01 c6             	add    rsi,rax
  40156a:	48 d1 fe             	sar    rsi,1
  40156d:	74 11                	je     401580 <register_tm_clones+0x30>
  40156f:	b8 00 00 00 00       	mov    eax,0x0
  401574:	48 85 c0             	test   rax,rax
  401577:	74 07                	je     401580 <register_tm_clones+0x30>
  401579:	bf 10 50 40 00       	mov    edi,0x405010
  40157e:	ff e0                	jmp    rax
  401580:	c3                   	ret
  401581:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401588:	00 00 00 00 
  40158c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401590 <__do_global_dtors_aux>:
  401590:	f3 0f 1e fa          	endbr64
  401594:	80 3d ad 3a 00 00 00 	cmp    BYTE PTR [rip+0x3aad],0x0        # 405048 <completed.8061>
  40159b:	75 13                	jne    4015b0 <__do_global_dtors_aux+0x20>
  40159d:	55                   	push   rbp
  40159e:	48 89 e5             	mov    rbp,rsp
  4015a1:	e8 7a ff ff ff       	call   401520 <deregister_tm_clones>
  4015a6:	c6 05 9b 3a 00 00 01 	mov    BYTE PTR [rip+0x3a9b],0x1        # 405048 <completed.8061>
  4015ad:	5d                   	pop    rbp
  4015ae:	c3                   	ret
  4015af:	90                   	nop
  4015b0:	c3                   	ret
  4015b1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4015b8:	00 00 00 00 
  4015bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004015c0 <frame_dummy>:
  4015c0:	f3 0f 1e fa          	endbr64
  4015c4:	eb 8a                	jmp    401550 <register_tm_clones>

00000000004015c6 <read_exact>:
  4015c6:	f3 0f 1e fa          	endbr64
  4015ca:	41 54                	push   r12
  4015cc:	48 63 d2             	movsxd rdx,edx
  4015cf:	49 89 cc             	mov    r12,rcx
  4015d2:	55                   	push   rbp
  4015d3:	44 89 c5             	mov    ebp,r8d
  4015d6:	53                   	push   rbx
  4015d7:	48 89 d3             	mov    rbx,rdx
  4015da:	e8 81 fc ff ff       	call   401260 <read@plt>
  4015df:	39 c3                	cmp    ebx,eax
  4015e1:	74 2e                	je     401611 <read_exact+0x4b>
  4015e3:	48 8b 3d 56 3a 00 00 	mov    rdi,QWORD PTR [rip+0x3a56]        # 405040 <stderr@GLIBC_2.2.5>
  4015ea:	4c 89 e2             	mov    rdx,r12
  4015ed:	be 01 00 00 00       	mov    esi,0x1
  4015f2:	31 c0                	xor    eax,eax
  4015f4:	e8 d7 fc ff ff       	call   4012d0 <__fprintf_chk@plt>
  4015f9:	48 8b 35 40 3a 00 00 	mov    rsi,QWORD PTR [rip+0x3a40]        # 405040 <stderr@GLIBC_2.2.5>
  401600:	bf 0a 00 00 00       	mov    edi,0xa
  401605:	e8 46 fc ff ff       	call   401250 <fputc@plt>
  40160a:	89 ef                	mov    edi,ebp
  40160c:	e8 af fc ff ff       	call   4012c0 <exit@plt>
  401611:	5b                   	pop    rbx
  401612:	5d                   	pop    rbp
  401613:	41 5c                	pop    r12
  401615:	c3                   	ret

0000000000401616 <handle_1>:
  401616:	f3 0f 1e fa          	endbr64
  40161a:	41 57                	push   r15
  40161c:	41 56                	push   r14
  40161e:	41 55                	push   r13
  401620:	41 54                	push   r12
  401622:	55                   	push   rbp
  401623:	53                   	push   rbx
  401624:	48 89 fb             	mov    rbx,rdi
  401627:	48 83 ec 48          	sub    rsp,0x48
  40162b:	0f b6 6f 06          	movzx  ebp,BYTE PTR [rdi+0x6]
  40162f:	0f b6 57 07          	movzx  edx,BYTE PTR [rdi+0x7]
  401633:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40163a:	00 00 
  40163c:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401641:	31 c0                	xor    eax,eax
  401643:	0f af ea             	imul   ebp,edx
  401646:	48 63 ed             	movsxd rbp,ebp
  401649:	48 c1 e5 02          	shl    rbp,0x2
  40164d:	48 89 ef             	mov    rdi,rbp
  401650:	e8 2b fc ff ff       	call   401280 <malloc@plt>
  401655:	48 85 c0             	test   rax,rax
  401658:	75 0e                	jne    401668 <handle_1+0x52>
  40165a:	48 8d 3d a3 19 00 00 	lea    rdi,[rip+0x19a3]        # 403004 <_IO_stdin_used+0x4>
  401661:	e8 5a fb ff ff       	call   4011c0 <puts@plt>
  401666:	eb 57                	jmp    4016bf <handle_1+0xa9>
  401668:	89 ea                	mov    edx,ebp
  40166a:	48 89 c6             	mov    rsi,rax
  40166d:	41 83 c8 ff          	or     r8d,0xffffffff
  401671:	31 ff                	xor    edi,edi
  401673:	48 8d 0d bf 19 00 00 	lea    rcx,[rip+0x19bf]        # 403039 <_IO_stdin_used+0x39>
  40167a:	49 89 c4             	mov    r12,rax
  40167d:	e8 44 ff ff ff       	call   4015c6 <read_exact>
  401682:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  401686:	0f b6 53 06          	movzx  edx,BYTE PTR [rbx+0x6]
  40168a:	0f af d0             	imul   edx,eax
  40168d:	31 c0                	xor    eax,eax
  40168f:	39 c2                	cmp    edx,eax
  401691:	7e 34                	jle    4016c7 <handle_1+0xb1>
  401693:	41 0f b6 4c 84 03    	movzx  ecx,BYTE PTR [r12+rax*4+0x3]
  401699:	48 ff c0             	inc    rax
  40169c:	8d 71 e0             	lea    esi,[rcx-0x20]
  40169f:	40 80 fe 5e          	cmp    sil,0x5e
  4016a3:	76 ea                	jbe    40168f <handle_1+0x79>
  4016a5:	48 8b 3d 94 39 00 00 	mov    rdi,QWORD PTR [rip+0x3994]        # 405040 <stderr@GLIBC_2.2.5>
  4016ac:	48 8d 15 a2 19 00 00 	lea    rdx,[rip+0x19a2]        # 403055 <_IO_stdin_used+0x55>
  4016b3:	be 01 00 00 00       	mov    esi,0x1
  4016b8:	31 c0                	xor    eax,eax
  4016ba:	e8 11 fc ff ff       	call   4012d0 <__fprintf_chk@plt>
  4016bf:	83 cf ff             	or     edi,0xffffffff
  4016c2:	e8 f9 fb ff ff       	call   4012c0 <exit@plt>
  4016c7:	45 31 ed             	xor    r13d,r13d
  4016ca:	4c 8d 74 24 1f       	lea    r14,[rsp+0x1f]
  4016cf:	0f b6 43 07          	movzx  eax,BYTE PTR [rbx+0x7]
  4016d3:	44 39 e8             	cmp    eax,r13d
  4016d6:	0f 8e 98 00 00 00    	jle    401774 <handle_1+0x15e>
  4016dc:	31 ed                	xor    ebp,ebp
  4016de:	44 0f b6 7b 06       	movzx  r15d,BYTE PTR [rbx+0x6]
  4016e3:	41 39 ef             	cmp    r15d,ebp
  4016e6:	0f 8e 80 00 00 00    	jle    40176c <handle_1+0x156>
  4016ec:	45 89 fa             	mov    r10d,r15d
  4016ef:	b9 19 00 00 00       	mov    ecx,0x19
  4016f4:	be 19 00 00 00       	mov    esi,0x19
  4016f9:	4c 89 f7             	mov    rdi,r14
  4016fc:	45 0f af d5          	imul   r10d,r13d
  401700:	4c 8d 05 80 19 00 00 	lea    r8,[rip+0x1980]        # 403087 <_IO_stdin_used+0x87>
  401707:	41 8d 04 2a          	lea    eax,[r10+rbp*1]
  40170b:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
  401710:	48 98                	cdqe
  401712:	52                   	push   rdx
  401713:	49 8d 04 84          	lea    rax,[r12+rax*4]
  401717:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  40171b:	52                   	push   rdx
  40171c:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401720:	52                   	push   rdx
  401721:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401725:	52                   	push   rdx
  401726:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  40172a:	ba 01 00 00 00       	mov    edx,0x1
  40172f:	31 c0                	xor    eax,eax
  401731:	e8 5a fa ff ff       	call   401190 <__snprintf_chk@plt>
  401736:	89 e8                	mov    eax,ebp
  401738:	44 8b 54 24 2c       	mov    r10d,DWORD PTR [rsp+0x2c]
  40173d:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  401741:	99                   	cdq
  401742:	48 83 c4 20          	add    rsp,0x20
  401746:	ff c5                	inc    ebp
  401748:	41 f7 ff             	idiv   r15d
  40174b:	42 8d 04 12          	lea    eax,[rdx+r10*1]
  40174f:	31 d2                	xor    edx,edx
  401751:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401754:	48 6b d2 18          	imul   rdx,rdx,0x18
  401758:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  40175c:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  40175f:	49 8b 46 10          	mov    rax,QWORD PTR [r14+0x10]
  401763:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401767:	e9 72 ff ff ff       	jmp    4016de <handle_1+0xc8>
  40176c:	41 ff c5             	inc    r13d
  40176f:	e9 5b ff ff ff       	jmp    4016cf <handle_1+0xb9>
  401774:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  401779:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401780:	00 00 
  401782:	74 05                	je     401789 <handle_1+0x173>
  401784:	e8 57 fa ff ff       	call   4011e0 <__stack_chk_fail@plt>
  401789:	48 83 c4 48          	add    rsp,0x48
  40178d:	5b                   	pop    rbx
  40178e:	5d                   	pop    rbp
  40178f:	41 5c                	pop    r12
  401791:	41 5d                	pop    r13
  401793:	41 5e                	pop    r14
  401795:	41 5f                	pop    r15
  401797:	c3                   	ret

0000000000401798 <handle_2>:
  401798:	f3 0f 1e fa          	endbr64
  40179c:	41 57                	push   r15
  40179e:	41 83 c8 ff          	or     r8d,0xffffffff
  4017a2:	ba 01 00 00 00       	mov    edx,0x1
  4017a7:	48 8d 0d f6 18 00 00 	lea    rcx,[rip+0x18f6]        # 4030a4 <_IO_stdin_used+0xa4>
  4017ae:	41 56                	push   r14
  4017b0:	41 55                	push   r13
  4017b2:	41 54                	push   r12
  4017b4:	49 89 fc             	mov    r12,rdi
  4017b7:	31 ff                	xor    edi,edi
  4017b9:	55                   	push   rbp
  4017ba:	53                   	push   rbx
  4017bb:	48 83 ec 38          	sub    rsp,0x38
  4017bf:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4017c6:	00 00 
  4017c8:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  4017cd:	31 c0                	xor    eax,eax
  4017cf:	48 8d 74 24 0d       	lea    rsi,[rsp+0xd]
  4017d4:	e8 ed fd ff ff       	call   4015c6 <read_exact>
  4017d9:	41 83 c8 ff          	or     r8d,0xffffffff
  4017dd:	31 ff                	xor    edi,edi
  4017df:	48 8d 74 24 0e       	lea    rsi,[rsp+0xe]
  4017e4:	48 8d 0d d8 18 00 00 	lea    rcx,[rip+0x18d8]        # 4030c3 <_IO_stdin_used+0xc3>
  4017eb:	ba 01 00 00 00       	mov    edx,0x1
  4017f0:	e8 d1 fd ff ff       	call   4015c6 <read_exact>
  4017f5:	41 83 c8 ff          	or     r8d,0xffffffff
  4017f9:	31 ff                	xor    edi,edi
  4017fb:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
  401800:	48 8d 0d db 18 00 00 	lea    rcx,[rip+0x18db]        # 4030e2 <_IO_stdin_used+0xe2>
  401807:	ba 01 00 00 00       	mov    edx,0x1
  40180c:	e8 b5 fd ff ff       	call   4015c6 <read_exact>
  401811:	31 ff                	xor    edi,edi
  401813:	41 83 c8 ff          	or     r8d,0xffffffff
  401817:	ba 01 00 00 00       	mov    edx,0x1
  40181c:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  401821:	48 8d 0d d8 18 00 00 	lea    rcx,[rip+0x18d8]        # 403100 <_IO_stdin_used+0x100>
  401828:	e8 99 fd ff ff       	call   4015c6 <read_exact>
  40182d:	0f b6 5c 24 0b       	movzx  ebx,BYTE PTR [rsp+0xb]
  401832:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [rsp+0xc]
  401837:	0f af da             	imul   ebx,edx
  40183a:	48 63 db             	movsxd rbx,ebx
  40183d:	48 c1 e3 02          	shl    rbx,0x2
  401841:	48 89 df             	mov    rdi,rbx
  401844:	e8 37 fa ff ff       	call   401280 <malloc@plt>
  401849:	48 85 c0             	test   rax,rax
  40184c:	75 0e                	jne    40185c <handle_2+0xc4>
  40184e:	48 8d 3d af 17 00 00 	lea    rdi,[rip+0x17af]        # 403004 <_IO_stdin_used+0x4>
  401855:	e8 66 f9 ff ff       	call   4011c0 <puts@plt>
  40185a:	eb 58                	jmp    4018b4 <handle_2+0x11c>
  40185c:	89 da                	mov    edx,ebx
  40185e:	48 89 c6             	mov    rsi,rax
  401861:	41 83 c8 ff          	or     r8d,0xffffffff
  401865:	31 ff                	xor    edi,edi
  401867:	48 8d 0d cb 17 00 00 	lea    rcx,[rip+0x17cb]        # 403039 <_IO_stdin_used+0x39>
  40186e:	48 89 c5             	mov    rbp,rax
  401871:	e8 50 fd ff ff       	call   4015c6 <read_exact>
  401876:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  40187b:	0f b6 54 24 0b       	movzx  edx,BYTE PTR [rsp+0xb]
  401880:	0f af d0             	imul   edx,eax
  401883:	31 c0                	xor    eax,eax
  401885:	39 c2                	cmp    edx,eax
  401887:	7e 33                	jle    4018bc <handle_2+0x124>
  401889:	0f b6 4c 85 03       	movzx  ecx,BYTE PTR [rbp+rax*4+0x3]
  40188e:	48 ff c0             	inc    rax
  401891:	8d 71 e0             	lea    esi,[rcx-0x20]
  401894:	40 80 fe 5e          	cmp    sil,0x5e
  401898:	76 eb                	jbe    401885 <handle_2+0xed>
  40189a:	48 8b 3d 9f 37 00 00 	mov    rdi,QWORD PTR [rip+0x379f]        # 405040 <stderr@GLIBC_2.2.5>
  4018a1:	48 8d 15 ad 17 00 00 	lea    rdx,[rip+0x17ad]        # 403055 <_IO_stdin_used+0x55>
  4018a8:	be 01 00 00 00       	mov    esi,0x1
  4018ad:	31 c0                	xor    eax,eax
  4018af:	e8 1c fa ff ff       	call   4012d0 <__fprintf_chk@plt>
  4018b4:	83 cf ff             	or     edi,0xffffffff
  4018b7:	e8 04 fa ff ff       	call   4012c0 <exit@plt>
  4018bc:	45 31 ed             	xor    r13d,r13d
  4018bf:	4c 8d 7c 24 0f       	lea    r15,[rsp+0xf]
  4018c4:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
  4018c9:	44 39 e8             	cmp    eax,r13d
  4018cc:	0f 8e a7 00 00 00    	jle    401979 <handle_2+0x1e1>
  4018d2:	45 31 f6             	xor    r14d,r14d
  4018d5:	0f b6 4c 24 0b       	movzx  ecx,BYTE PTR [rsp+0xb]
  4018da:	44 39 f1             	cmp    ecx,r14d
  4018dd:	0f 8e 8e 00 00 00    	jle    401971 <handle_2+0x1d9>
  4018e3:	0f b6 44 24 0d       	movzx  eax,BYTE PTR [rsp+0xd]
  4018e8:	0f b6 5c 24 0e       	movzx  ebx,BYTE PTR [rsp+0xe]
  4018ed:	41 0f af cd          	imul   ecx,r13d
  4018f1:	4c 89 ff             	mov    rdi,r15
  4018f4:	41 0f b6 74 24 06    	movzx  esi,BYTE PTR [r12+0x6]
  4018fa:	4c 8d 05 86 17 00 00 	lea    r8,[rip+0x1786]        # 403087 <_IO_stdin_used+0x87>
  401901:	44 01 f0             	add    eax,r14d
  401904:	44 01 eb             	add    ebx,r13d
  401907:	99                   	cdq
  401908:	0f af de             	imul   ebx,esi
  40190b:	44 01 f1             	add    ecx,r14d
  40190e:	41 ff c6             	inc    r14d
  401911:	f7 fe                	idiv   esi
  401913:	48 63 c9             	movsxd rcx,ecx
  401916:	be 19 00 00 00       	mov    esi,0x19
  40191b:	48 8d 44 8d 00       	lea    rax,[rbp+rcx*4+0x0]
  401920:	b9 19 00 00 00       	mov    ecx,0x19
  401925:	01 d3                	add    ebx,edx
  401927:	52                   	push   rdx
  401928:	0f b6 50 03          	movzx  edx,BYTE PTR [rax+0x3]
  40192c:	52                   	push   rdx
  40192d:	0f b6 50 02          	movzx  edx,BYTE PTR [rax+0x2]
  401931:	52                   	push   rdx
  401932:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
  401936:	52                   	push   rdx
  401937:	44 0f b6 08          	movzx  r9d,BYTE PTR [rax]
  40193b:	ba 01 00 00 00       	mov    edx,0x1
  401940:	31 c0                	xor    eax,eax
  401942:	e8 49 f8 ff ff       	call   401190 <__snprintf_chk@plt>
  401947:	89 d8                	mov    eax,ebx
  401949:	31 d2                	xor    edx,edx
  40194b:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  40194f:	41 f7 74 24 0c       	div    DWORD PTR [r12+0xc]
  401954:	48 83 c4 20          	add    rsp,0x20
  401958:	48 6b d2 18          	imul   rdx,rdx,0x18
  40195c:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
  401961:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401964:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  401968:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  40196c:	e9 64 ff ff ff       	jmp    4018d5 <handle_2+0x13d>
  401971:	41 ff c5             	inc    r13d
  401974:	e9 4b ff ff ff       	jmp    4018c4 <handle_2+0x12c>
  401979:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  40197e:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401985:	00 00 
  401987:	74 05                	je     40198e <handle_2+0x1f6>
  401989:	e8 52 f8 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  40198e:	48 83 c4 38          	add    rsp,0x38
  401992:	5b                   	pop    rbx
  401993:	5d                   	pop    rbp
  401994:	41 5c                	pop    r12
  401996:	41 5d                	pop    r13
  401998:	41 5e                	pop    r14
  40199a:	41 5f                	pop    r15
  40199c:	c3                   	ret

000000000040199d <handle_3>:
  40199d:	f3 0f 1e fa          	endbr64
  4019a1:	41 54                	push   r12
  4019a3:	41 83 c8 ff          	or     r8d,0xffffffff
  4019a7:	ba 01 00 00 00       	mov    edx,0x1
  4019ac:	48 8d 0d 6c 17 00 00 	lea    rcx,[rip+0x176c]        # 40311f <_IO_stdin_used+0x11f>
  4019b3:	55                   	push   rbp
  4019b4:	48 89 fd             	mov    rbp,rdi
  4019b7:	31 ff                	xor    edi,edi
  4019b9:	53                   	push   rbx
  4019ba:	48 83 ec 10          	sub    rsp,0x10
  4019be:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4019c5:	00 00 
  4019c7:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  4019cc:	31 c0                	xor    eax,eax
  4019ce:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  4019d3:	e8 ee fb ff ff       	call   4015c6 <read_exact>
  4019d8:	48 8d 74 24 06       	lea    rsi,[rsp+0x6]
  4019dd:	41 83 c8 ff          	or     r8d,0xffffffff
  4019e1:	31 ff                	xor    edi,edi
  4019e3:	48 8d 0d f8 16 00 00 	lea    rcx,[rip+0x16f8]        # 4030e2 <_IO_stdin_used+0xe2>
  4019ea:	ba 01 00 00 00       	mov    edx,0x1
  4019ef:	e8 d2 fb ff ff       	call   4015c6 <read_exact>
  4019f4:	ba 01 00 00 00       	mov    edx,0x1
  4019f9:	31 ff                	xor    edi,edi
  4019fb:	41 83 c8 ff          	or     r8d,0xffffffff
  4019ff:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401a04:	48 8d 0d f5 16 00 00 	lea    rcx,[rip+0x16f5]        # 403100 <_IO_stdin_used+0x100>
  401a0b:	e8 b6 fb ff ff       	call   4015c6 <read_exact>
  401a10:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401a15:	8a 54 24 06          	mov    dl,BYTE PTR [rsp+0x6]
  401a19:	48 c1 e0 04          	shl    rax,0x4
  401a1d:	48 01 e8             	add    rax,rbp
  401a20:	88 50 19             	mov    BYTE PTR [rax+0x19],dl
  401a23:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
  401a27:	8a 54 24 07          	mov    dl,BYTE PTR [rsp+0x7]
  401a2b:	88 50 18             	mov    BYTE PTR [rax+0x18],dl
  401a2e:	48 85 ff             	test   rdi,rdi
  401a31:	74 05                	je     401a38 <handle_3+0x9b>
  401a33:	e8 68 f7 ff ff       	call   4011a0 <free@plt>
  401a38:	44 0f b6 64 24 06    	movzx  r12d,BYTE PTR [rsp+0x6]
  401a3e:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401a43:	44 0f af e2          	imul   r12d,edx
  401a47:	49 63 fc             	movsxd rdi,r12d
  401a4a:	e8 31 f8 ff ff       	call   401280 <malloc@plt>
  401a4f:	48 89 c3             	mov    rbx,rax
  401a52:	48 85 c0             	test   rax,rax
  401a55:	75 0e                	jne    401a65 <handle_3+0xc8>
  401a57:	48 8d 3d a6 15 00 00 	lea    rdi,[rip+0x15a6]        # 403004 <_IO_stdin_used+0x4>
  401a5e:	e8 5d f7 ff ff       	call   4011c0 <puts@plt>
  401a63:	eb 55                	jmp    401aba <handle_3+0x11d>
  401a65:	44 89 e2             	mov    edx,r12d
  401a68:	48 89 c6             	mov    rsi,rax
  401a6b:	41 83 c8 ff          	or     r8d,0xffffffff
  401a6f:	31 ff                	xor    edi,edi
  401a71:	48 8d 0d c1 15 00 00 	lea    rcx,[rip+0x15c1]        # 403039 <_IO_stdin_used+0x39>
  401a78:	e8 49 fb ff ff       	call   4015c6 <read_exact>
  401a7d:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401a82:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401a87:	0f af d0             	imul   edx,eax
  401a8a:	31 c0                	xor    eax,eax
  401a8c:	39 c2                	cmp    edx,eax
  401a8e:	7e 32                	jle    401ac2 <handle_3+0x125>
  401a90:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401a94:	48 ff c0             	inc    rax
  401a97:	8d 71 e0             	lea    esi,[rcx-0x20]
  401a9a:	40 80 fe 5e          	cmp    sil,0x5e
  401a9e:	76 ec                	jbe    401a8c <handle_3+0xef>
  401aa0:	48 8b 3d 99 35 00 00 	mov    rdi,QWORD PTR [rip+0x3599]        # 405040 <stderr@GLIBC_2.2.5>
  401aa7:	48 8d 15 a7 15 00 00 	lea    rdx,[rip+0x15a7]        # 403055 <_IO_stdin_used+0x55>
  401aae:	be 01 00 00 00       	mov    esi,0x1
  401ab3:	31 c0                	xor    eax,eax
  401ab5:	e8 16 f8 ff ff       	call   4012d0 <__fprintf_chk@plt>
  401aba:	83 cf ff             	or     edi,0xffffffff
  401abd:	e8 fe f7 ff ff       	call   4012c0 <exit@plt>
  401ac2:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401ac7:	48 c1 e0 04          	shl    rax,0x4
  401acb:	48 89 5c 28 20       	mov    QWORD PTR [rax+rbp*1+0x20],rbx
  401ad0:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  401ad5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401adc:	00 00 
  401ade:	74 05                	je     401ae5 <handle_3+0x148>
  401ae0:	e8 fb f6 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  401ae5:	48 83 c4 10          	add    rsp,0x10
  401ae9:	5b                   	pop    rbx
  401aea:	5d                   	pop    rbp
  401aeb:	41 5c                	pop    r12
  401aed:	c3                   	ret

0000000000401aee <handle_5>:
  401aee:	f3 0f 1e fa          	endbr64
  401af2:	41 55                	push   r13
  401af4:	b9 03 01 00 00       	mov    ecx,0x103
  401af9:	41 83 c8 ff          	or     r8d,0xffffffff
  401afd:	ba 02 01 00 00       	mov    edx,0x102
  401b02:	41 54                	push   r12
  401b04:	49 89 fc             	mov    r12,rdi
  401b07:	55                   	push   rbp
  401b08:	53                   	push   rbx
  401b09:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  401b10:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401b17:	00 00 
  401b19:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  401b20:	00 
  401b21:	31 c0                	xor    eax,eax
  401b23:	48 8d 7c 24 05       	lea    rdi,[rsp+0x5]
  401b28:	48 8d 74 24 05       	lea    rsi,[rsp+0x5]
  401b2d:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  401b2f:	48 8d 0d 0b 16 00 00 	lea    rcx,[rip+0x160b]        # 403141 <_IO_stdin_used+0x141>
  401b36:	31 ff                	xor    edi,edi
  401b38:	e8 89 fa ff ff       	call   4015c6 <read_exact>
  401b3d:	66 8b 54 24 06       	mov    dx,WORD PTR [rsp+0x6]
  401b42:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b47:	31 f6                	xor    esi,esi
  401b49:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401b4e:	86 f2                	xchg   dl,dh
  401b50:	48 c1 e0 04          	shl    rax,0x4
  401b54:	66 41 89 54 04 18    	mov    WORD PTR [r12+rax*1+0x18],dx
  401b5a:	31 c0                	xor    eax,eax
  401b5c:	e8 4f f7 ff ff       	call   4012b0 <open@plt>
  401b61:	48 8b 35 d8 34 00 00 	mov    rsi,QWORD PTR [rip+0x34d8]        # 405040 <stderr@GLIBC_2.2.5>
  401b68:	48 8d 3d fd 15 00 00 	lea    rdi,[rip+0x15fd]        # 40316c <_IO_stdin_used+0x16c>
  401b6f:	85 c0                	test   eax,eax
  401b71:	0f 88 ca 00 00 00    	js     401c41 <handle_5+0x153>
  401b77:	89 c5                	mov    ebp,eax
  401b79:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401b7e:	48 c1 e0 04          	shl    rax,0x4
  401b82:	4a 8b 7c 20 20       	mov    rdi,QWORD PTR [rax+r12*1+0x20]
  401b87:	48 85 ff             	test   rdi,rdi
  401b8a:	74 05                	je     401b91 <handle_5+0xa3>
  401b8c:	e8 0f f6 ff ff       	call   4011a0 <free@plt>
  401b91:	44 0f b6 6c 24 06    	movzx  r13d,BYTE PTR [rsp+0x6]
  401b97:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  401b9c:	44 0f af ea          	imul   r13d,edx
  401ba0:	49 63 fd             	movsxd rdi,r13d
  401ba3:	e8 d8 f6 ff ff       	call   401280 <malloc@plt>
  401ba8:	48 89 c3             	mov    rbx,rax
  401bab:	48 85 c0             	test   rax,rax
  401bae:	75 14                	jne    401bc4 <handle_5+0xd6>
  401bb0:	48 8d 3d 4d 14 00 00 	lea    rdi,[rip+0x144d]        # 403004 <_IO_stdin_used+0x4>
  401bb7:	e8 04 f6 ff ff       	call   4011c0 <puts@plt>
  401bbc:	83 cf ff             	or     edi,0xffffffff
  401bbf:	e8 fc f6 ff ff       	call   4012c0 <exit@plt>
  401bc4:	44 89 ea             	mov    edx,r13d
  401bc7:	48 89 c6             	mov    rsi,rax
  401bca:	41 83 c8 ff          	or     r8d,0xffffffff
  401bce:	89 ef                	mov    edi,ebp
  401bd0:	48 8d 0d 62 14 00 00 	lea    rcx,[rip+0x1462]        # 403039 <_IO_stdin_used+0x39>
  401bd7:	e8 ea f9 ff ff       	call   4015c6 <read_exact>
  401bdc:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  401be1:	0f b6 54 24 06       	movzx  edx,BYTE PTR [rsp+0x6]
  401be6:	0f af d0             	imul   edx,eax
  401be9:	31 c0                	xor    eax,eax
  401beb:	39 c2                	cmp    edx,eax
  401bed:	7e 2c                	jle    401c1b <handle_5+0x12d>
  401bef:	0f b6 0c 03          	movzx  ecx,BYTE PTR [rbx+rax*1]
  401bf3:	48 ff c0             	inc    rax
  401bf6:	8d 71 e0             	lea    esi,[rcx-0x20]
  401bf9:	40 80 fe 5e          	cmp    sil,0x5e
  401bfd:	76 ec                	jbe    401beb <handle_5+0xfd>
  401bff:	48 8b 3d 3a 34 00 00 	mov    rdi,QWORD PTR [rip+0x343a]        # 405040 <stderr@GLIBC_2.2.5>
  401c06:	48 8d 15 48 14 00 00 	lea    rdx,[rip+0x1448]        # 403055 <_IO_stdin_used+0x55>
  401c0d:	be 01 00 00 00       	mov    esi,0x1
  401c12:	31 c0                	xor    eax,eax
  401c14:	e8 b7 f6 ff ff       	call   4012d0 <__fprintf_chk@plt>
  401c19:	eb a1                	jmp    401bbc <handle_5+0xce>
  401c1b:	ba 0c 00 00 00       	mov    edx,0xc
  401c20:	48 8d 35 68 15 00 00 	lea    rsi,[rip+0x1568]        # 40318f <_IO_stdin_used+0x18f>
  401c27:	48 89 df             	mov    rdi,rbx
  401c2a:	e8 81 f5 ff ff       	call   4011b0 <strncmp@plt>
  401c2f:	85 c0                	test   eax,eax
  401c31:	75 18                	jne    401c4b <handle_5+0x15d>
  401c33:	48 8b 35 06 34 00 00 	mov    rsi,QWORD PTR [rip+0x3406]        # 405040 <stderr@GLIBC_2.2.5>
  401c3a:	48 8d 3d 5b 15 00 00 	lea    rdi,[rip+0x155b]        # 40319c <_IO_stdin_used+0x19c>
  401c41:	e8 da f5 ff ff       	call   401220 <fputs@plt>
  401c46:	e9 71 ff ff ff       	jmp    401bbc <handle_5+0xce>
  401c4b:	0f b6 44 24 05       	movzx  eax,BYTE PTR [rsp+0x5]
  401c50:	89 ef                	mov    edi,ebp
  401c52:	48 c1 e0 04          	shl    rax,0x4
  401c56:	4a 89 5c 20 20       	mov    QWORD PTR [rax+r12*1+0x20],rbx
  401c5b:	e8 e0 f5 ff ff       	call   401240 <close@plt>
  401c60:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  401c67:	00 
  401c68:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401c6f:	00 00 
  401c71:	74 05                	je     401c78 <handle_5+0x18a>
  401c73:	e8 68 f5 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  401c78:	48 81 c4 18 01 00 00 	add    rsp,0x118
  401c7f:	5b                   	pop    rbx
  401c80:	5d                   	pop    rbp
  401c81:	41 5c                	pop    r12
  401c83:	41 5d                	pop    r13
  401c85:	c3                   	ret

0000000000401c86 <handle_4>:
  401c86:	f3 0f 1e fa          	endbr64
  401c8a:	41 57                	push   r15
  401c8c:	41 56                	push   r14
  401c8e:	41 55                	push   r13
  401c90:	41 54                	push   r12
  401c92:	55                   	push   rbp
  401c93:	53                   	push   rbx
  401c94:	4c 8d 9c 24 00 00 fc 	lea    r11,[rsp-0x40000]
  401c9b:	ff 
  401c9c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401ca3:	83 0c 24 00          	or     DWORD PTR [rsp],0x0
  401ca7:	4c 39 dc             	cmp    rsp,r11
  401caa:	75 f0                	jne    401c9c <handle_4+0x16>
  401cac:	48 83 ec 48          	sub    rsp,0x48
  401cb0:	48 8d 0d 06 15 00 00 	lea    rcx,[rip+0x1506]        # 4031bd <_IO_stdin_used+0x1bd>
  401cb7:	ba 09 00 00 00       	mov    edx,0x9
  401cbc:	41 83 c8 ff          	or     r8d,0xffffffff
  401cc0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401cc7:	00 00 
  401cc9:	48 89 84 24 38 00 04 	mov    QWORD PTR [rsp+0x40038],rax
  401cd0:	00 
  401cd1:	31 c0                	xor    eax,eax
  401cd3:	48 89 fb             	mov    rbx,rdi
  401cd6:	48 8d 74 24 16       	lea    rsi,[rsp+0x16]
  401cdb:	31 ff                	xor    edi,edi
  401cdd:	e8 e4 f8 ff ff       	call   4015c6 <read_exact>
  401ce2:	48 8d 7c 24 1f       	lea    rdi,[rsp+0x1f]
  401ce7:	b9 00 00 01 00       	mov    ecx,0x10000
  401cec:	31 c0                	xor    eax,eax
  401cee:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401cf3:	44 8a 54 24 17       	mov    r10b,BYTE PTR [rsp+0x17]
  401cf8:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
  401cfd:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401cff:	44 8a 5c 24 18       	mov    r11b,BYTE PTR [rsp+0x18]
  401d04:	40 8a 6c 24 19       	mov    bpl,BYTE PTR [rsp+0x19]
  401d09:	48 c1 e2 04          	shl    rdx,0x4
  401d0d:	48 01 da             	add    rdx,rbx
  401d10:	44 0f b6 62 18       	movzx  r12d,BYTE PTR [rdx+0x18]
  401d15:	41 39 cc             	cmp    r12d,ecx
  401d18:	7e 58                	jle    401d72 <handle_4+0xec>
  401d1a:	44 0f b6 42 19       	movzx  r8d,BYTE PTR [rdx+0x19]
  401d1f:	31 ff                	xor    edi,edi
  401d21:	44 89 c0             	mov    eax,r8d
  401d24:	0f af c1             	imul   eax,ecx
  401d27:	41 39 f8             	cmp    r8d,edi
  401d2a:	7e 42                	jle    401d6e <handle_4+0xe8>
  401d2c:	4c 8b 4a 20          	mov    r9,QWORD PTR [rdx+0x20]
  401d30:	44 88 14 86          	mov    BYTE PTR [rsi+rax*4],r10b
  401d34:	44 88 5c 86 01       	mov    BYTE PTR [rsi+rax*4+0x1],r11b
  401d39:	40 88 6c 86 02       	mov    BYTE PTR [rsi+rax*4+0x2],bpl
  401d3e:	4d 85 c9             	test   r9,r9
  401d41:	75 1b                	jne    401d5e <handle_4+0xd8>
  401d43:	48 8b 35 f6 32 00 00 	mov    rsi,QWORD PTR [rip+0x32f6]        # 405040 <stderr@GLIBC_2.2.5>
  401d4a:	48 8d 3d 99 14 00 00 	lea    rdi,[rip+0x1499]        # 4031ea <_IO_stdin_used+0x1ea>
  401d51:	e8 ca f4 ff ff       	call   401220 <fputs@plt>
  401d56:	83 cf ff             	or     edi,0xffffffff
  401d59:	e8 62 f5 ff ff       	call   4012c0 <exit@plt>
  401d5e:	45 8a 0c 01          	mov    r9b,BYTE PTR [r9+rax*1]
  401d62:	ff c7                	inc    edi
  401d64:	44 88 4c 86 03       	mov    BYTE PTR [rsi+rax*4+0x3],r9b
  401d69:	48 ff c0             	inc    rax
  401d6c:	eb b9                	jmp    401d27 <handle_4+0xa1>
  401d6e:	ff c1                	inc    ecx
  401d70:	eb a3                	jmp    401d15 <handle_4+0x8f>
  401d72:	45 31 ff             	xor    r15d,r15d
  401d75:	48 8d bc 24 1f 00 04 	lea    rdi,[rsp+0x4001f]
  401d7c:	00 
  401d7d:	0f b6 44 24 1d       	movzx  eax,BYTE PTR [rsp+0x1d]
  401d82:	44 39 f8             	cmp    eax,r15d
  401d85:	0f 8e 2c 01 00 00    	jle    401eb7 <handle_4+0x231>
  401d8b:	45 31 d2             	xor    r10d,r10d
  401d8e:	0f b6 44 24 1c       	movzx  eax,BYTE PTR [rsp+0x1c]
  401d93:	44 39 d0             	cmp    eax,r10d
  401d96:	0f 8e 13 01 00 00    	jle    401eaf <handle_4+0x229>
  401d9c:	0f b6 54 24 16       	movzx  edx,BYTE PTR [rsp+0x16]
  401da1:	45 31 db             	xor    r11d,r11d
  401da4:	48 c1 e2 04          	shl    rdx,0x4
  401da8:	48 01 da             	add    rdx,rbx
  401dab:	8a 42 19             	mov    al,BYTE PTR [rdx+0x19]
  401dae:	41 0f af c2          	imul   eax,r10d
  401db2:	02 44 24 1a          	add    al,BYTE PTR [rsp+0x1a]
  401db6:	44 0f b6 e0          	movzx  r12d,al
  401dba:	8a 42 18             	mov    al,BYTE PTR [rdx+0x18]
  401dbd:	41 0f af c7          	imul   eax,r15d
  401dc1:	02 44 24 1b          	add    al,BYTE PTR [rsp+0x1b]
  401dc5:	0f b6 e8             	movzx  ebp,al
  401dc8:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401dcd:	48 c1 e0 04          	shl    rax,0x4
  401dd1:	0f b6 44 18 18       	movzx  eax,BYTE PTR [rax+rbx*1+0x18]
  401dd6:	44 39 d8             	cmp    eax,r11d
  401dd9:	0f 8e c8 00 00 00    	jle    401ea7 <handle_4+0x221>
  401ddf:	45 31 ed             	xor    r13d,r13d
  401de2:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
  401de7:	48 c1 e0 04          	shl    rax,0x4
  401deb:	0f b6 44 18 19       	movzx  eax,BYTE PTR [rax+rbx*1+0x19]
  401df0:	44 39 e8             	cmp    eax,r13d
  401df3:	0f 8e a4 00 00 00    	jle    401e9d <handle_4+0x217>
  401df9:	41 0f af c3          	imul   eax,r11d
  401dfd:	44 01 e8             	add    eax,r13d
  401e00:	48 98                	cdqe
  401e02:	0f b6 54 84 22       	movzx  edx,BYTE PTR [rsp+rax*4+0x22]
  401e07:	3a 54 24 1e          	cmp    dl,BYTE PTR [rsp+0x1e]
  401e0b:	0f 84 84 00 00 00    	je     401e95 <handle_4+0x20f>
  401e11:	44 89 5c 24 0c       	mov    DWORD PTR [rsp+0xc],r11d
  401e16:	be 19 00 00 00       	mov    esi,0x19
  401e1b:	44 0f b6 73 06       	movzx  r14d,BYTE PTR [rbx+0x6]
  401e20:	4c 8d 05 60 12 00 00 	lea    r8,[rip+0x1260]        # 403087 <_IO_stdin_used+0x87>
  401e27:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  401e2c:	51                   	push   rcx
  401e2d:	b9 19 00 00 00       	mov    ecx,0x19
  401e32:	52                   	push   rdx
  401e33:	0f b6 54 84 31       	movzx  edx,BYTE PTR [rsp+rax*4+0x31]
  401e38:	52                   	push   rdx
  401e39:	0f b6 54 84 38       	movzx  edx,BYTE PTR [rsp+rax*4+0x38]
  401e3e:	52                   	push   rdx
  401e3f:	44 0f b6 4c 84 3f    	movzx  r9d,BYTE PTR [rsp+rax*4+0x3f]
  401e45:	ba 01 00 00 00       	mov    edx,0x1
  401e4a:	31 c0                	xor    eax,eax
  401e4c:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  401e51:	e8 3a f3 ff ff       	call   401190 <__snprintf_chk@plt>
  401e56:	43 8d 44 25 00       	lea    eax,[r13+r12*1+0x0]
  401e5b:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401e60:	44 8b 5c 24 2c       	mov    r11d,DWORD PTR [rsp+0x2c]
  401e65:	99                   	cdq
  401e66:	44 8b 54 24 28       	mov    r10d,DWORD PTR [rsp+0x28]
  401e6b:	48 83 c4 20          	add    rsp,0x20
  401e6f:	41 f7 fe             	idiv   r14d
  401e72:	0f 10 07             	movups xmm0,XMMWORD PTR [rdi]
  401e75:	44 0f af f5          	imul   r14d,ebp
  401e79:	42 8d 04 32          	lea    eax,[rdx+r14*1]
  401e7d:	31 d2                	xor    edx,edx
  401e7f:	f7 73 0c             	div    DWORD PTR [rbx+0xc]
  401e82:	48 6b d2 18          	imul   rdx,rdx,0x18
  401e86:	48 03 53 10          	add    rdx,QWORD PTR [rbx+0x10]
  401e8a:	0f 11 02             	movups XMMWORD PTR [rdx],xmm0
  401e8d:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401e91:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  401e95:	41 ff c5             	inc    r13d
  401e98:	e9 45 ff ff ff       	jmp    401de2 <handle_4+0x15c>
  401e9d:	41 ff c3             	inc    r11d
  401ea0:	ff c5                	inc    ebp
  401ea2:	e9 21 ff ff ff       	jmp    401dc8 <handle_4+0x142>
  401ea7:	41 ff c2             	inc    r10d
  401eaa:	e9 df fe ff ff       	jmp    401d8e <handle_4+0x108>
  401eaf:	41 ff c7             	inc    r15d
  401eb2:	e9 c6 fe ff ff       	jmp    401d7d <handle_4+0xf7>
  401eb7:	48 8b 84 24 38 00 04 	mov    rax,QWORD PTR [rsp+0x40038]
  401ebe:	00 
  401ebf:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401ec6:	00 00 
  401ec8:	74 05                	je     401ecf <handle_4+0x249>
  401eca:	e8 11 f3 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  401ecf:	48 81 c4 48 00 04 00 	add    rsp,0x40048
  401ed6:	5b                   	pop    rbx
  401ed7:	5d                   	pop    rbp
  401ed8:	41 5c                	pop    r12
  401eda:	41 5d                	pop    r13
  401edc:	41 5e                	pop    r14
  401ede:	41 5f                	pop    r15
  401ee0:	c3                   	ret

0000000000401ee1 <handle_7>:
  401ee1:	f3 0f 1e fa          	endbr64
  401ee5:	48 83 ec 28          	sub    rsp,0x28
  401ee9:	41 83 c8 ff          	or     r8d,0xffffffff
  401eed:	31 ff                	xor    edi,edi
  401eef:	ba 04 00 00 00       	mov    edx,0x4
  401ef4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401efb:	00 00 
  401efd:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401f02:	31 c0                	xor    eax,eax
  401f04:	48 8d 74 24 04       	lea    rsi,[rsp+0x4]
  401f09:	48 8d 0d 0c 13 00 00 	lea    rcx,[rip+0x130c]        # 40321c <_IO_stdin_used+0x21c>
  401f10:	e8 b1 f6 ff ff       	call   4015c6 <read_exact>
  401f15:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401f19:	b9 e8 03 00 00       	mov    ecx,0x3e8
  401f1e:	31 d2                	xor    edx,edx
  401f20:	31 f6                	xor    esi,esi
  401f22:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  401f27:	f7 f1                	div    ecx
  401f29:	89 c0                	mov    eax,eax
  401f2b:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401f30:	69 c2 40 42 0f 00    	imul   eax,edx,0xf4240
  401f36:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401f3b:	e8 d0 f2 ff ff       	call   401210 <nanosleep@plt>
  401f40:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401f45:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401f4c:	00 00 
  401f4e:	74 05                	je     401f55 <handle_7+0x74>
  401f50:	e8 8b f2 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  401f55:	48 83 c4 28          	add    rsp,0x28
  401f59:	c3                   	ret

0000000000401f5a <display>:
  401f5a:	f3 0f 1e fa          	endbr64
  401f5e:	41 54                	push   r12
  401f60:	45 31 e4             	xor    r12d,r12d
  401f63:	55                   	push   rbp
  401f64:	48 89 fd             	mov    rbp,rdi
  401f67:	53                   	push   rbx
  401f68:	48 8d 1d d2 12 00 00 	lea    rbx,[rip+0x12d2]        # 403241 <_IO_stdin_used+0x241>
  401f6f:	0f b6 45 07          	movzx  eax,BYTE PTR [rbp+0x7]
  401f73:	44 39 e0             	cmp    eax,r12d
  401f76:	7e 3e                	jle    401fb6 <display+0x5c>
  401f78:	0f b6 55 06          	movzx  edx,BYTE PTR [rbp+0x6]
  401f7c:	bf 01 00 00 00       	mov    edi,0x1
  401f81:	48 89 d0             	mov    rax,rdx
  401f84:	48 6b d2 18          	imul   rdx,rdx,0x18
  401f88:	0f b6 f0             	movzx  esi,al
  401f8b:	41 0f af f4          	imul   esi,r12d
  401f8f:	41 ff c4             	inc    r12d
  401f92:	48 63 f6             	movsxd rsi,esi
  401f95:	48 6b f6 18          	imul   rsi,rsi,0x18
  401f99:	48 03 75 10          	add    rsi,QWORD PTR [rbp+0x10]
  401f9d:	e8 2e f2 ff ff       	call   4011d0 <write@plt>
  401fa2:	ba 18 00 00 00       	mov    edx,0x18
  401fa7:	48 89 de             	mov    rsi,rbx
  401faa:	bf 01 00 00 00       	mov    edi,0x1
  401faf:	e8 1c f2 ff ff       	call   4011d0 <write@plt>
  401fb4:	eb b9                	jmp    401f6f <display+0x15>
  401fb6:	5b                   	pop    rbx
  401fb7:	5d                   	pop    rbp
  401fb8:	41 5c                	pop    r12
  401fba:	c3                   	ret

0000000000401fbb <handle_6>:
  401fbb:	f3 0f 1e fa          	endbr64
  401fbf:	55                   	push   rbp
  401fc0:	41 83 c8 ff          	or     r8d,0xffffffff
  401fc4:	ba 01 00 00 00       	mov    edx,0x1
  401fc9:	48 89 fd             	mov    rbp,rdi
  401fcc:	48 8d 0d 87 12 00 00 	lea    rcx,[rip+0x1287]        # 40325a <_IO_stdin_used+0x25a>
  401fd3:	31 ff                	xor    edi,edi
  401fd5:	48 83 ec 10          	sub    rsp,0x10
  401fd9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401fe0:	00 00 
  401fe2:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401fe7:	31 c0                	xor    eax,eax
  401fe9:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  401fee:	e8 d3 f5 ff ff       	call   4015c6 <read_exact>
  401ff3:	e8 38 f2 ff ff       	call   401230 <geteuid@plt>
  401ff8:	89 c7                	mov    edi,eax
  401ffa:	e8 e1 f2 ff ff       	call   4012e0 <setuid@plt>
  401fff:	48 8d 3d 72 12 00 00 	lea    rdi,[rip+0x1272]        # 403278 <_IO_stdin_used+0x278>
  402006:	e8 e5 f1 ff ff       	call   4011f0 <system@plt>
  40200b:	31 f6                	xor    esi,esi
  40200d:	31 c0                	xor    eax,eax
  40200f:	48 89 ef             	mov    rdi,rbp
  402012:	e8 43 ff ff ff       	call   401f5a <display>
  402017:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  40201c:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402023:	00 00 
  402025:	74 05                	je     40202c <handle_6+0x71>
  402027:	e8 b4 f1 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  40202c:	48 83 c4 10          	add    rsp,0x10
  402030:	5d                   	pop    rbp
  402031:	c3                   	ret

0000000000402032 <initialize_framebuffer>:
  402032:	f3 0f 1e fa          	endbr64
  402036:	41 54                	push   r12
  402038:	49 89 fc             	mov    r12,rdi
  40203b:	55                   	push   rbp
  40203c:	53                   	push   rbx
  40203d:	48 83 ec 30          	sub    rsp,0x30
  402041:	0f b6 7f 06          	movzx  edi,BYTE PTR [rdi+0x6]
  402045:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40204c:	00 00 
  40204e:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402053:	31 c0                	xor    eax,eax
  402055:	41 0f b6 44 24 07    	movzx  eax,BYTE PTR [r12+0x7]
  40205b:	0f af f8             	imul   edi,eax
  40205e:	41 89 7c 24 0c       	mov    DWORD PTR [r12+0xc],edi
  402063:	48 63 ff             	movsxd rdi,edi
  402066:	48 6b ff 18          	imul   rdi,rdi,0x18
  40206a:	48 ff c7             	inc    rdi
  40206d:	e8 0e f2 ff ff       	call   401280 <malloc@plt>
  402072:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  402077:	48 85 c0             	test   rax,rax
  40207a:	75 14                	jne    402090 <initialize_framebuffer+0x5e>
  40207c:	48 8d 3d fb 11 00 00 	lea    rdi,[rip+0x11fb]        # 40327e <_IO_stdin_used+0x27e>
  402083:	e8 38 f1 ff ff       	call   4011c0 <puts@plt>
  402088:	83 cf ff             	or     edi,0xffffffff
  40208b:	e8 30 f2 ff ff       	call   4012c0 <exit@plt>
  402090:	31 db                	xor    ebx,ebx
  402092:	48 8d 6c 24 0f       	lea    rbp,[rsp+0xf]
  402097:	41 39 5c 24 0c       	cmp    DWORD PTR [r12+0xc],ebx
  40209c:	76 54                	jbe    4020f2 <initialize_framebuffer+0xc0>
  40209e:	50                   	push   rax
  40209f:	ba 01 00 00 00       	mov    edx,0x1
  4020a4:	41 b9 ff 00 00 00    	mov    r9d,0xff
  4020aa:	48 89 ef             	mov    rdi,rbp
  4020ad:	6a 20                	push   0x20
  4020af:	4c 8d 05 d1 0f 00 00 	lea    r8,[rip+0xfd1]        # 403087 <_IO_stdin_used+0x87>
  4020b6:	b9 19 00 00 00       	mov    ecx,0x19
  4020bb:	31 c0                	xor    eax,eax
  4020bd:	68 ff 00 00 00       	push   0xff
  4020c2:	be 19 00 00 00       	mov    esi,0x19
  4020c7:	68 ff 00 00 00       	push   0xff
  4020cc:	e8 bf f0 ff ff       	call   401190 <__snprintf_chk@plt>
  4020d1:	0f 10 45 00          	movups xmm0,XMMWORD PTR [rbp+0x0]
  4020d5:	48 6b c3 18          	imul   rax,rbx,0x18
  4020d9:	48 ff c3             	inc    rbx
  4020dc:	49 03 44 24 10       	add    rax,QWORD PTR [r12+0x10]
  4020e1:	48 83 c4 20          	add    rsp,0x20
  4020e5:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  4020e8:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  4020ec:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  4020f0:	eb a5                	jmp    402097 <initialize_framebuffer+0x65>
  4020f2:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  4020f7:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4020fe:	00 00 
  402100:	74 05                	je     402107 <initialize_framebuffer+0xd5>
  402102:	e8 d9 f0 ff ff       	call   4011e0 <__stack_chk_fail@plt>
  402107:	48 83 c4 30          	add    rsp,0x30
  40210b:	4c 89 e0             	mov    rax,r12
  40210e:	5b                   	pop    rbx
  40210f:	5d                   	pop    rbp
  402110:	41 5c                	pop    r12
  402112:	c3                   	ret
  402113:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40211a:	00 00 00 
  40211d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000402120 <__libc_csu_init>:
  402120:	f3 0f 1e fa          	endbr64
  402124:	41 57                	push   r15
  402126:	4c 8d 3d f3 2b 00 00 	lea    r15,[rip+0x2bf3]        # 404d20 <__frame_dummy_init_array_entry>
  40212d:	41 56                	push   r14
  40212f:	49 89 d6             	mov    r14,rdx
  402132:	41 55                	push   r13
  402134:	49 89 f5             	mov    r13,rsi
  402137:	41 54                	push   r12
  402139:	41 89 fc             	mov    r12d,edi
  40213c:	55                   	push   rbp
  40213d:	48 8d 2d ec 2b 00 00 	lea    rbp,[rip+0x2bec]        # 404d30 <__do_global_dtors_aux_fini_array_entry>
  402144:	53                   	push   rbx
  402145:	4c 29 fd             	sub    rbp,r15
  402148:	48 83 ec 08          	sub    rsp,0x8
  40214c:	e8 af ee ff ff       	call   401000 <_init>
  402151:	48 c1 fd 03          	sar    rbp,0x3
  402155:	74 1f                	je     402176 <__libc_csu_init+0x56>
  402157:	31 db                	xor    ebx,ebx
  402159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402160:	4c 89 f2             	mov    rdx,r14
  402163:	4c 89 ee             	mov    rsi,r13
  402166:	44 89 e7             	mov    edi,r12d
  402169:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40216d:	48 83 c3 01          	add    rbx,0x1
  402171:	48 39 dd             	cmp    rbp,rbx
  402174:	75 ea                	jne    402160 <__libc_csu_init+0x40>
  402176:	48 83 c4 08          	add    rsp,0x8
  40217a:	5b                   	pop    rbx
  40217b:	5d                   	pop    rbp
  40217c:	41 5c                	pop    r12
  40217e:	41 5d                	pop    r13
  402180:	41 5e                	pop    r14
  402182:	41 5f                	pop    r15
  402184:	c3                   	ret
  402185:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40218c:	00 00 00 00 

0000000000402190 <__libc_csu_fini>:
  402190:	f3 0f 1e fa          	endbr64
  402194:	c3                   	ret

Disassembly of section .fini:

0000000000402198 <_fini>:
  402198:	f3 0f 1e fa          	endbr64
  40219c:	48 83 ec 08          	sub    rsp,0x8
  4021a0:	48 83 c4 08          	add    rsp,0x8
  4021a4:	c3                   	ret
