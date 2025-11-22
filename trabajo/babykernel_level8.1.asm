
babykernel_level8.1:     file format elf64-x86-64


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
  401020:	ff 35 3a 2f 00 00    	push   QWORD PTR [rip+0x2f3a]        # 403f60 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 3b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f3b]        # 403f68 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.sec:

0000000000401130 <seccomp_init@plt>:
  401130:	f3 0f 1e fa          	endbr64
  401134:	f2 ff 25 35 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e35]        # 403f70 <seccomp_init>
  40113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401140 <putchar@plt>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	f2 ff 25 2d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e2d]        # 403f78 <putchar@GLIBC_2.2.5>
  40114b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401150 <seccomp_rule_add@plt>:
  401150:	f3 0f 1e fa          	endbr64
  401154:	f2 ff 25 25 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e25]        # 403f80 <seccomp_rule_add>
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401160 <puts@plt>:
  401160:	f3 0f 1e fa          	endbr64
  401164:	f2 ff 25 1d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e1d]        # 403f88 <puts@GLIBC_2.2.5>
  40116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401170 <seccomp_load@plt>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	f2 ff 25 15 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e15]        # 403f90 <seccomp_load>
  40117b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401180 <cs_free@plt>:
  401180:	f3 0f 1e fa          	endbr64
  401184:	f2 ff 25 0d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e0d]        # 403f98 <cs_free>
  40118b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401190 <__stack_chk_fail@plt>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	f2 ff 25 05 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e05]        # 403fa0 <__stack_chk_fail@GLIBC_2.4>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <mmap@plt>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	f2 ff 25 fd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dfd]        # 403fa8 <mmap@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <printf@plt>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	f2 ff 25 f5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2df5]        # 403fb0 <printf@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <__assert_fail@plt>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	f2 ff 25 ed 2d 00 00 	bnd jmp QWORD PTR [rip+0x2ded]        # 403fb8 <__assert_fail@GLIBC_2.2.5>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <read@plt>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	f2 ff 25 e5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2de5]        # 403fc0 <read@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <cs_disasm@plt>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	f2 ff 25 dd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2ddd]        # 403fc8 <cs_disasm>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <setvbuf@plt>:
  4011f0:	f3 0f 1e fa          	endbr64
  4011f4:	f2 ff 25 d5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dd5]        # 403fd0 <setvbuf@GLIBC_2.2.5>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <cs_open@plt>:
  401200:	f3 0f 1e fa          	endbr64
  401204:	f2 ff 25 cd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dcd]        # 403fd8 <cs_open>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <open@plt>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	f2 ff 25 c5 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dc5]        # 403fe0 <open@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <cs_close@plt>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	f2 ff 25 bd 2d 00 00 	bnd jmp QWORD PTR [rip+0x2dbd]        # 403fe8 <cs_close>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000401230 <_start>:
  401230:	f3 0f 1e fa          	endbr64
  401234:	31 ed                	xor    ebp,ebp
  401236:	49 89 d1             	mov    r9,rdx
  401239:	5e                   	pop    rsi
  40123a:	48 89 e2             	mov    rdx,rsp
  40123d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401241:	50                   	push   rax
  401242:	54                   	push   rsp
  401243:	49 c7 c0 a0 18 40 00 	mov    r8,0x4018a0
  40124a:	48 c7 c1 30 18 40 00 	mov    rcx,0x401830
  401251:	48 c7 c7 97 15 40 00 	mov    rdi,0x401597
  401258:	ff 15 92 2d 00 00    	call   QWORD PTR [rip+0x2d92]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40125e:	f4                   	hlt
  40125f:	90                   	nop

0000000000401260 <_dl_relocate_static_pie>:
  401260:	f3 0f 1e fa          	endbr64
  401264:	c3                   	ret
  401265:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40126c:	00 00 00 
  40126f:	90                   	nop

0000000000401270 <deregister_tm_clones>:
  401270:	b8 10 40 40 00       	mov    eax,0x404010
  401275:	48 3d 10 40 40 00    	cmp    rax,0x404010
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    eax,0x0
  401282:	48 85 c0             	test   rax,rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 10 40 40 00       	mov    edi,0x404010
  40128c:	ff e0                	jmp    rax
  40128e:	66 90                	xchg   ax,ax
  401290:	c3                   	ret
  401291:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004012a0 <register_tm_clones>:
  4012a0:	be 10 40 40 00       	mov    esi,0x404010
  4012a5:	48 81 ee 10 40 40 00 	sub    rsi,0x404010
  4012ac:	48 89 f0             	mov    rax,rsi
  4012af:	48 c1 ee 3f          	shr    rsi,0x3f
  4012b3:	48 c1 f8 03          	sar    rax,0x3
  4012b7:	48 01 c6             	add    rsi,rax
  4012ba:	48 d1 fe             	sar    rsi,1
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    eax,0x0
  4012c4:	48 85 c0             	test   rax,rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 10 40 40 00       	mov    edi,0x404010
  4012ce:	ff e0                	jmp    rax
  4012d0:	c3                   	ret
  4012d1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	f3 0f 1e fa          	endbr64
  4012e4:	80 3d 3d 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d3d],0x0        # 404028 <completed.8061>
  4012eb:	75 13                	jne    401300 <__do_global_dtors_aux+0x20>
  4012ed:	55                   	push   rbp
  4012ee:	48 89 e5             	mov    rbp,rsp
  4012f1:	e8 7a ff ff ff       	call   401270 <deregister_tm_clones>
  4012f6:	c6 05 2b 2d 00 00 01 	mov    BYTE PTR [rip+0x2d2b],0x1        # 404028 <completed.8061>
  4012fd:	5d                   	pop    rbp
  4012fe:	c3                   	ret
  4012ff:	90                   	nop
  401300:	c3                   	ret
  401301:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401310 <frame_dummy>:
  401310:	f3 0f 1e fa          	endbr64
  401314:	eb 8a                	jmp    4012a0 <register_tm_clones>

0000000000401316 <print_disassembly>:
  401316:	f3 0f 1e fa          	endbr64
  40131a:	55                   	push   rbp
  40131b:	48 89 e5             	mov    rbp,rsp
  40131e:	48 83 ec 50          	sub    rsp,0x50
  401322:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  401326:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
  40132a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401331:	00 00 
  401333:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401337:	31 c0                	xor    eax,eax
  401339:	48 8d 45 d8          	lea    rax,[rbp-0x28]
  40133d:	48 89 c2             	mov    rdx,rax
  401340:	be 08 00 00 00       	mov    esi,0x8
  401345:	bf 03 00 00 00       	mov    edi,0x3
  40134a:	e8 b1 fe ff ff       	call   401200 <cs_open@plt>
  40134f:	85 c0                	test   eax,eax
  401351:	74 11                	je     401364 <print_disassembly+0x4e>
  401353:	48 8d 3d ae 0c 00 00 	lea    rdi,[rip+0xcae]        # 402008 <_IO_stdin_used+0x8>
  40135a:	e8 01 fe ff ff       	call   401160 <puts@plt>
  40135f:	e9 1d 02 00 00       	jmp    401581 <print_disassembly+0x26b>
  401364:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
  401368:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40136c:	48 8d 7d e0          	lea    rdi,[rbp-0x20]
  401370:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
  401374:	48 8b 75 b8          	mov    rsi,QWORD PTR [rbp-0x48]
  401378:	49 89 f9             	mov    r9,rdi
  40137b:	41 b8 00 00 00 00    	mov    r8d,0x0
  401381:	48 89 c7             	mov    rdi,rax
  401384:	e8 57 fe ff ff       	call   4011e0 <cs_disasm@plt>
  401389:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  40138d:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  401392:	0f 84 3e 01 00 00    	je     4014d6 <print_disassembly+0x1c0>
  401398:	48 8d 3d 99 0c 00 00 	lea    rdi,[rip+0xc99]        # 402038 <_IO_stdin_used+0x38>
  40139f:	e8 bc fd ff ff       	call   401160 <puts@plt>
  4013a4:	48 8d 3d ed 0c 00 00 	lea    rdi,[rip+0xced]        # 402098 <_IO_stdin_used+0x98>
  4013ab:	e8 b0 fd ff ff       	call   401160 <puts@plt>
  4013b0:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  4013b7:	00 
  4013b8:	e9 f3 00 00 00       	jmp    4014b0 <print_disassembly+0x19a>
  4013bd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4013c1:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4013c5:	48 c1 e2 08          	shl    rdx,0x8
  4013c9:	48 01 d0             	add    rax,rdx
  4013cc:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  4013d0:	48 89 c6             	mov    rsi,rax
  4013d3:	48 8d 3d 19 0d 00 00 	lea    rdi,[rip+0xd19]        # 4020f3 <_IO_stdin_used+0xf3>
  4013da:	b8 00 00 00 00       	mov    eax,0x0
  4013df:	e8 cc fd ff ff       	call   4011b0 <printf@plt>
  4013e4:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
  4013eb:	eb 33                	jmp    401420 <print_disassembly+0x10a>
  4013ed:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4013f1:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4013f5:	48 c1 e2 08          	shl    rdx,0x8
  4013f9:	48 01 c2             	add    rdx,rax
  4013fc:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  4013ff:	48 98                	cdqe
  401401:	0f b6 44 02 1a       	movzx  eax,BYTE PTR [rdx+rax*1+0x1a]
  401406:	0f b6 c0             	movzx  eax,al
  401409:	89 c6                	mov    esi,eax
  40140b:	48 8d 3d ed 0c 00 00 	lea    rdi,[rip+0xced]        # 4020ff <_IO_stdin_used+0xff>
  401412:	b8 00 00 00 00       	mov    eax,0x0
  401417:	e8 94 fd ff ff       	call   4011b0 <printf@plt>
  40141c:	83 45 c8 01          	add    DWORD PTR [rbp-0x38],0x1
  401420:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401424:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401428:	48 c1 e2 08          	shl    rdx,0x8
  40142c:	48 01 d0             	add    rax,rdx
  40142f:	0f b7 40 18          	movzx  eax,WORD PTR [rax+0x18]
  401433:	0f b7 c0             	movzx  eax,ax
  401436:	39 45 c8             	cmp    DWORD PTR [rbp-0x38],eax
  401439:	7c b2                	jl     4013ed <print_disassembly+0xd7>
  40143b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40143f:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401443:	48 c1 e2 08          	shl    rdx,0x8
  401447:	48 01 d0             	add    rax,rdx
  40144a:	0f b7 40 18          	movzx  eax,WORD PTR [rax+0x18]
  40144e:	0f b7 c0             	movzx  eax,ax
  401451:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  401454:	eb 15                	jmp    40146b <print_disassembly+0x155>
  401456:	48 8d 3d aa 0c 00 00 	lea    rdi,[rip+0xcaa]        # 402107 <_IO_stdin_used+0x107>
  40145d:	b8 00 00 00 00       	mov    eax,0x0
  401462:	e8 49 fd ff ff       	call   4011b0 <printf@plt>
  401467:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
  40146b:	83 7d cc 0e          	cmp    DWORD PTR [rbp-0x34],0xe
  40146f:	7e e5                	jle    401456 <print_disassembly+0x140>
  401471:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401475:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401479:	48 c1 e2 08          	shl    rdx,0x8
  40147d:	48 01 d0             	add    rax,rdx
  401480:	48 8d 50 52          	lea    rdx,[rax+0x52]
  401484:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401488:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  40148c:	48 c1 e1 08          	shl    rcx,0x8
  401490:	48 01 c8             	add    rax,rcx
  401493:	48 83 c0 32          	add    rax,0x32
  401497:	48 89 c6             	mov    rsi,rax
  40149a:	48 8d 3d 6a 0c 00 00 	lea    rdi,[rip+0xc6a]        # 40210b <_IO_stdin_used+0x10b>
  4014a1:	b8 00 00 00 00       	mov    eax,0x0
  4014a6:	e8 05 fd ff ff       	call   4011b0 <printf@plt>
  4014ab:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  4014b0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4014b4:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  4014b8:	0f 82 ff fe ff ff    	jb     4013bd <print_disassembly+0xa7>
  4014be:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4014c2:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4014c6:	48 89 d6             	mov    rsi,rdx
  4014c9:	48 89 c7             	mov    rdi,rax
  4014cc:	e8 af fc ff ff       	call   401180 <cs_free@plt>
  4014d1:	e9 9f 00 00 00       	jmp    401575 <print_disassembly+0x25f>
  4014d6:	48 8d 3d 3b 0c 00 00 	lea    rdi,[rip+0xc3b]        # 402118 <_IO_stdin_used+0x118>
  4014dd:	e8 7e fc ff ff       	call   401160 <puts@plt>
  4014e2:	48 8d 3d 67 0c 00 00 	lea    rdi,[rip+0xc67]        # 402150 <_IO_stdin_used+0x150>
  4014e9:	e8 72 fc ff ff       	call   401160 <puts@plt>
  4014ee:	48 8d 3d 8b 0c 00 00 	lea    rdi,[rip+0xc8b]        # 402180 <_IO_stdin_used+0x180>
  4014f5:	e8 66 fc ff ff       	call   401160 <puts@plt>
  4014fa:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
  401501:	eb 69                	jmp    40156c <print_disassembly+0x256>
  401503:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
  401506:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  40150a:	48 01 d0             	add    rax,rdx
  40150d:	48 89 c6             	mov    rsi,rax
  401510:	48 8d 3d dc 0b 00 00 	lea    rdi,[rip+0xbdc]        # 4020f3 <_IO_stdin_used+0xf3>
  401517:	b8 00 00 00 00       	mov    eax,0x0
  40151c:	e8 8f fc ff ff       	call   4011b0 <printf@plt>
  401521:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
  401528:	eb 2e                	jmp    401558 <print_disassembly+0x242>
  40152a:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  40152d:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  401530:	01 d0                	add    eax,edx
  401532:	89 c2                	mov    edx,eax
  401534:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401538:	48 01 d0             	add    rax,rdx
  40153b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40153e:	0f b6 c0             	movzx  eax,al
  401541:	89 c6                	mov    esi,eax
  401543:	48 8d 3d b5 0b 00 00 	lea    rdi,[rip+0xbb5]        # 4020ff <_IO_stdin_used+0xff>
  40154a:	b8 00 00 00 00       	mov    eax,0x0
  40154f:	e8 5c fc ff ff       	call   4011b0 <printf@plt>
  401554:	83 45 d4 01          	add    DWORD PTR [rbp-0x2c],0x1
  401558:	83 7d d4 0f          	cmp    DWORD PTR [rbp-0x2c],0xf
  40155c:	7e cc                	jle    40152a <print_disassembly+0x214>
  40155e:	bf 0a 00 00 00       	mov    edi,0xa
  401563:	e8 d8 fb ff ff       	call   401140 <putchar@plt>
  401568:	83 45 d0 10          	add    DWORD PTR [rbp-0x30],0x10
  40156c:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  40156f:	48 39 45 b0          	cmp    QWORD PTR [rbp-0x50],rax
  401573:	73 8e                	jae    401503 <print_disassembly+0x1ed>
  401575:	48 8d 45 d8          	lea    rax,[rbp-0x28]
  401579:	48 89 c7             	mov    rdi,rax
  40157c:	e8 9f fc ff ff       	call   401220 <cs_close@plt>
  401581:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401585:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  40158c:	00 00 
  40158e:	74 05                	je     401595 <print_disassembly+0x27f>
  401590:	e8 fb fb ff ff       	call   401190 <__stack_chk_fail@plt>
  401595:	c9                   	leave
  401596:	c3                   	ret

0000000000401597 <main>:
  401597:	f3 0f 1e fa          	endbr64
  40159b:	55                   	push   rbp
  40159c:	48 89 e5             	mov    rbp,rsp
  40159f:	48 83 ec 40          	sub    rsp,0x40
  4015a3:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
  4015a6:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  4015aa:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  4015ae:	48 8b 05 6b 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a6b]        # 404020 <stdin@GLIBC_2.2.5>
  4015b5:	b9 00 00 00 00       	mov    ecx,0x0
  4015ba:	ba 02 00 00 00       	mov    edx,0x2
  4015bf:	be 00 00 00 00       	mov    esi,0x0
  4015c4:	48 89 c7             	mov    rdi,rax
  4015c7:	e8 24 fc ff ff       	call   4011f0 <setvbuf@plt>
  4015cc:	48 8b 05 3d 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a3d]        # 404010 <stdout@GLIBC_2.2.5>
  4015d3:	b9 00 00 00 00       	mov    ecx,0x0
  4015d8:	ba 02 00 00 00       	mov    edx,0x2
  4015dd:	be 00 00 00 00       	mov    esi,0x0
  4015e2:	48 89 c7             	mov    rdi,rax
  4015e5:	e8 06 fc ff ff       	call   4011f0 <setvbuf@plt>
  4015ea:	48 8d 3d d4 0b 00 00 	lea    rdi,[rip+0xbd4]        # 4021c5 <_IO_stdin_used+0x1c5>
  4015f1:	e8 6a fb ff ff       	call   401160 <puts@plt>
  4015f6:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4015fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4015fd:	48 89 c6             	mov    rsi,rax
  401600:	48 8d 3d c2 0b 00 00 	lea    rdi,[rip+0xbc2]        # 4021c9 <_IO_stdin_used+0x1c9>
  401607:	b8 00 00 00 00       	mov    eax,0x0
  40160c:	e8 9f fb ff ff       	call   4011b0 <printf@plt>
  401611:	48 8d 3d ad 0b 00 00 	lea    rdi,[rip+0xbad]        # 4021c5 <_IO_stdin_used+0x1c5>
  401618:	e8 43 fb ff ff       	call   401160 <puts@plt>
  40161d:	bf 0a 00 00 00       	mov    edi,0xa
  401622:	e8 19 fb ff ff       	call   401140 <putchar@plt>
  401627:	48 8d 3d b2 0b 00 00 	lea    rdi,[rip+0xbb2]        # 4021e0 <_IO_stdin_used+0x1e0>
  40162e:	e8 2d fb ff ff       	call   401160 <puts@plt>
  401633:	48 8d 3d e6 0b 00 00 	lea    rdi,[rip+0xbe6]        # 402220 <_IO_stdin_used+0x220>
  40163a:	e8 21 fb ff ff       	call   401160 <puts@plt>
  40163f:	be 02 00 00 00       	mov    esi,0x2
  401644:	48 8d 3d 1f 0c 00 00 	lea    rdi,[rip+0xc1f]        # 40226a <_IO_stdin_used+0x26a>
  40164b:	b8 00 00 00 00       	mov    eax,0x0
  401650:	e8 bb fb ff ff       	call   401210 <open@plt>
  401655:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  401658:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  40165b:	89 c6                	mov    esi,eax
  40165d:	48 8d 3d 1c 0c 00 00 	lea    rdi,[rip+0xc1c]        # 402280 <_IO_stdin_used+0x280>
  401664:	b8 00 00 00 00       	mov    eax,0x0
  401669:	e8 42 fb ff ff       	call   4011b0 <printf@plt>
  40166e:	48 8d 3d 30 0c 00 00 	lea    rdi,[rip+0xc30]        # 4022a5 <_IO_stdin_used+0x2a5>
  401675:	e8 e6 fa ff ff       	call   401160 <puts@plt>
  40167a:	41 b9 00 00 00 00    	mov    r9d,0x0
  401680:	41 b8 00 00 00 00    	mov    r8d,0x0
  401686:	b9 22 00 00 00       	mov    ecx,0x22
  40168b:	ba 07 00 00 00       	mov    edx,0x7
  401690:	be 00 10 00 00       	mov    esi,0x1000
  401695:	bf 00 70 33 31       	mov    edi,0x31337000
  40169a:	e8 01 fb ff ff       	call   4011a0 <mmap@plt>
  40169f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4016a3:	48 81 7d f0 00 70 33 	cmp    QWORD PTR [rbp-0x10],0x31337000
  4016aa:	31 
  4016ab:	74 1f                	je     4016cc <main+0x135>
  4016ad:	48 8d 0d 86 0d 00 00 	lea    rcx,[rip+0xd86]        # 40243a <__PRETTY_FUNCTION__.23554>
  4016b4:	ba 63 00 00 00       	mov    edx,0x63
  4016b9:	48 8d 35 e6 0b 00 00 	lea    rsi,[rip+0xbe6]        # 4022a6 <_IO_stdin_used+0x2a6>
  4016c0:	48 8d 3d e9 0b 00 00 	lea    rdi,[rip+0xbe9]        # 4022b0 <_IO_stdin_used+0x2b0>
  4016c7:	e8 f4 fa ff ff       	call   4011c0 <__assert_fail@plt>
  4016cc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4016d0:	48 89 c6             	mov    rsi,rax
  4016d3:	48 8d 3d f6 0b 00 00 	lea    rdi,[rip+0xbf6]        # 4022d0 <_IO_stdin_used+0x2d0>
  4016da:	b8 00 00 00 00       	mov    eax,0x0
  4016df:	e8 cc fa ff ff       	call   4011b0 <printf@plt>
  4016e4:	48 8d 3d 15 0c 00 00 	lea    rdi,[rip+0xc15]        # 402300 <_IO_stdin_used+0x300>
  4016eb:	e8 70 fa ff ff       	call   401160 <puts@plt>
  4016f0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4016f4:	ba 00 10 00 00       	mov    edx,0x1000
  4016f9:	48 89 c6             	mov    rsi,rax
  4016fc:	bf 00 00 00 00       	mov    edi,0x0
  401701:	e8 ca fa ff ff       	call   4011d0 <read@plt>
  401706:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401709:	48 8d 3d 20 0c 00 00 	lea    rdi,[rip+0xc20]        # 402330 <_IO_stdin_used+0x330>
  401710:	e8 4b fa ff ff       	call   401160 <puts@plt>
  401715:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401718:	48 63 d0             	movsxd rdx,eax
  40171b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40171f:	48 89 d6             	mov    rsi,rdx
  401722:	48 89 c7             	mov    rdi,rax
  401725:	e8 ec fb ff ff       	call   401316 <print_disassembly>
  40172a:	48 8d 3d 74 0b 00 00 	lea    rdi,[rip+0xb74]        # 4022a5 <_IO_stdin_used+0x2a5>
  401731:	e8 2a fa ff ff       	call   401160 <puts@plt>
  401736:	48 8d 3d 33 0c 00 00 	lea    rdi,[rip+0xc33]        # 402370 <_IO_stdin_used+0x370>
  40173d:	e8 1e fa ff ff       	call   401160 <puts@plt>
  401742:	bf 00 00 ff 7f       	mov    edi,0x7fff0000
  401747:	e8 e4 f9 ff ff       	call   401130 <seccomp_init@plt>
  40174c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401750:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  401757:	eb 6a                	jmp    4017c3 <main+0x22c>
  401759:	83 7d e4 01          	cmp    DWORD PTR [rbp-0x1c],0x1
  40175d:	75 1f                	jne    40177e <main+0x1e7>
  40175f:	ba 01 00 00 00       	mov    edx,0x1
  401764:	48 8d 35 31 0c 00 00 	lea    rsi,[rip+0xc31]        # 40239c <_IO_stdin_used+0x39c>
  40176b:	48 8d 3d 36 0c 00 00 	lea    rdi,[rip+0xc36]        # 4023a8 <_IO_stdin_used+0x3a8>
  401772:	b8 00 00 00 00       	mov    eax,0x0
  401777:	e8 34 fa ff ff       	call   4011b0 <printf@plt>
  40177c:	eb 41                	jmp    4017bf <main+0x228>
  40177e:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  401781:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401785:	b9 00 00 00 00       	mov    ecx,0x0
  40178a:	be 00 00 00 00       	mov    esi,0x0
  40178f:	48 89 c7             	mov    rdi,rax
  401792:	b8 00 00 00 00       	mov    eax,0x0
  401797:	e8 b4 f9 ff ff       	call   401150 <seccomp_rule_add@plt>
  40179c:	85 c0                	test   eax,eax
  40179e:	74 1f                	je     4017bf <main+0x228>
  4017a0:	48 8d 0d 93 0c 00 00 	lea    rcx,[rip+0xc93]        # 40243a <__PRETTY_FUNCTION__.23554>
  4017a7:	ba 79 00 00 00       	mov    edx,0x79
  4017ac:	48 8d 35 f3 0a 00 00 	lea    rsi,[rip+0xaf3]        # 4022a6 <_IO_stdin_used+0x2a6>
  4017b3:	48 8d 3d 16 0c 00 00 	lea    rdi,[rip+0xc16]        # 4023d0 <_IO_stdin_used+0x3d0>
  4017ba:	e8 01 fa ff ff       	call   4011c0 <__assert_fail@plt>
  4017bf:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
  4017c3:	81 7d e4 ff 01 00 00 	cmp    DWORD PTR [rbp-0x1c],0x1ff
  4017ca:	7e 8d                	jle    401759 <main+0x1c2>
  4017cc:	48 8d 3d 2d 0c 00 00 	lea    rdi,[rip+0xc2d]        # 402400 <_IO_stdin_used+0x400>
  4017d3:	e8 88 f9 ff ff       	call   401160 <puts@plt>
  4017d8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017dc:	48 89 c7             	mov    rdi,rax
  4017df:	e8 8c f9 ff ff       	call   401170 <seccomp_load@plt>
  4017e4:	85 c0                	test   eax,eax
  4017e6:	74 1f                	je     401807 <main+0x270>
  4017e8:	48 8d 0d 4b 0c 00 00 	lea    rcx,[rip+0xc4b]        # 40243a <__PRETTY_FUNCTION__.23554>
  4017ef:	ba 7e 00 00 00       	mov    edx,0x7e
  4017f4:	48 8d 35 ab 0a 00 00 	lea    rsi,[rip+0xaab]        # 4022a6 <_IO_stdin_used+0x2a6>
  4017fb:	48 8d 3d 14 0c 00 00 	lea    rdi,[rip+0xc14]        # 402416 <_IO_stdin_used+0x416>
  401802:	e8 b9 f9 ff ff       	call   4011c0 <__assert_fail@plt>
  401807:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40180b:	b8 00 00 00 00       	mov    eax,0x0
  401810:	ff d2                	call   rdx
  401812:	48 8d 3d 14 0c 00 00 	lea    rdi,[rip+0xc14]        # 40242d <_IO_stdin_used+0x42d>
  401819:	e8 42 f9 ff ff       	call   401160 <puts@plt>
  40181e:	b8 00 00 00 00       	mov    eax,0x0
  401823:	c9                   	leave
  401824:	c3                   	ret
  401825:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40182c:	00 00 00 
  40182f:	90                   	nop

0000000000401830 <__libc_csu_init>:
  401830:	f3 0f 1e fa          	endbr64
  401834:	41 57                	push   r15
  401836:	4c 8d 3d fb 24 00 00 	lea    r15,[rip+0x24fb]        # 403d38 <__frame_dummy_init_array_entry>
  40183d:	41 56                	push   r14
  40183f:	49 89 d6             	mov    r14,rdx
  401842:	41 55                	push   r13
  401844:	49 89 f5             	mov    r13,rsi
  401847:	41 54                	push   r12
  401849:	41 89 fc             	mov    r12d,edi
  40184c:	55                   	push   rbp
  40184d:	48 8d 2d ec 24 00 00 	lea    rbp,[rip+0x24ec]        # 403d40 <__do_global_dtors_aux_fini_array_entry>
  401854:	53                   	push   rbx
  401855:	4c 29 fd             	sub    rbp,r15
  401858:	48 83 ec 08          	sub    rsp,0x8
  40185c:	e8 9f f7 ff ff       	call   401000 <_init>
  401861:	48 c1 fd 03          	sar    rbp,0x3
  401865:	74 1f                	je     401886 <__libc_csu_init+0x56>
  401867:	31 db                	xor    ebx,ebx
  401869:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401870:	4c 89 f2             	mov    rdx,r14
  401873:	4c 89 ee             	mov    rsi,r13
  401876:	44 89 e7             	mov    edi,r12d
  401879:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40187d:	48 83 c3 01          	add    rbx,0x1
  401881:	48 39 dd             	cmp    rbp,rbx
  401884:	75 ea                	jne    401870 <__libc_csu_init+0x40>
  401886:	48 83 c4 08          	add    rsp,0x8
  40188a:	5b                   	pop    rbx
  40188b:	5d                   	pop    rbp
  40188c:	41 5c                	pop    r12
  40188e:	41 5d                	pop    r13
  401890:	41 5e                	pop    r14
  401892:	41 5f                	pop    r15
  401894:	c3                   	ret
  401895:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40189c:	00 00 00 00 

00000000004018a0 <__libc_csu_fini>:
  4018a0:	f3 0f 1e fa          	endbr64
  4018a4:	c3                   	ret

Disassembly of section .fini:

00000000004018a8 <_fini>:
  4018a8:	f3 0f 1e fa          	endbr64
  4018ac:	48 83 ec 08          	sub    rsp,0x8
  4018b0:	48 83 c4 08          	add    rsp,0x8
  4018b4:	c3                   	ret
