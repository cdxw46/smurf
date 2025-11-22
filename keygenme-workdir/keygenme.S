
keygenme:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc9]        # 3fd8 <__stack_chk_fail@plt+0x2ec8>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0x8a>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <__stack_chk_fail@plt+0x2e80>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <__stack_chk_fail@plt+0x2e88>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0x80>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f4d]        # 3ff8 <__stack_chk_fail@plt+0x2ee8>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <printf@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <__stack_chk_fail@plt+0x2e90>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <__stack_chk_fail@plt+0x2e98>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <fgets@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <__stack_chk_fail@plt+0x2ea0>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <strlen@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <__stack_chk_fail@plt+0x2ea8>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <MD5@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <__stack_chk_fail@plt+0x2eb0>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <sprintf@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fc8 <__stack_chk_fail@plt+0x2eb8>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <__stack_chk_fail@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fd0 <__stack_chk_fail@plt+0x2ec0>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <.text>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	31 ed                	xor    ebp,ebp
    1126:	49 89 d1             	mov    r9,rdx
    1129:	5e                   	pop    rsi
    112a:	48 89 e2             	mov    rdx,rsp
    112d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1131:	50                   	push   rax
    1132:	54                   	push   rsp
    1133:	4c 8d 05 56 04 00 00 	lea    r8,[rip+0x456]        # 1590 <__stack_chk_fail@plt+0x480>
    113a:	48 8d 0d df 03 00 00 	lea    rcx,[rip+0x3df]        # 1520 <__stack_chk_fail@plt+0x410>
    1141:	48 8d 3d 43 03 00 00 	lea    rdi,[rip+0x343]        # 148b <__stack_chk_fail@plt+0x37b>
    1148:	ff 15 92 2e 00 00    	call   QWORD PTR [rip+0x2e92]        # 3fe0 <__stack_chk_fail@plt+0x2ed0>
    114e:	f4                   	hlt
    114f:	90                   	nop
    1150:	48 8d 3d b9 2e 00 00 	lea    rdi,[rip+0x2eb9]        # 4010 <stdin@GLIBC_2.2.5>
    1157:	48 8d 05 b2 2e 00 00 	lea    rax,[rip+0x2eb2]        # 4010 <stdin@GLIBC_2.2.5>
    115e:	48 39 f8             	cmp    rax,rdi
    1161:	74 15                	je     1178 <__stack_chk_fail@plt+0x68>
    1163:	48 8b 05 7e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e7e]        # 3fe8 <__stack_chk_fail@plt+0x2ed8>
    116a:	48 85 c0             	test   rax,rax
    116d:	74 09                	je     1178 <__stack_chk_fail@plt+0x68>
    116f:	ff e0                	jmp    rax
    1171:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1180:	48 8d 3d 89 2e 00 00 	lea    rdi,[rip+0x2e89]        # 4010 <stdin@GLIBC_2.2.5>
    1187:	48 8d 35 82 2e 00 00 	lea    rsi,[rip+0x2e82]        # 4010 <stdin@GLIBC_2.2.5>
    118e:	48 29 fe             	sub    rsi,rdi
    1191:	48 89 f0             	mov    rax,rsi
    1194:	48 c1 ee 3f          	shr    rsi,0x3f
    1198:	48 c1 f8 03          	sar    rax,0x3
    119c:	48 01 c6             	add    rsi,rax
    119f:	48 d1 fe             	sar    rsi,1
    11a2:	74 14                	je     11b8 <__stack_chk_fail@plt+0xa8>
    11a4:	48 8b 05 45 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e45]        # 3ff0 <__stack_chk_fail@plt+0x2ee0>
    11ab:	48 85 c0             	test   rax,rax
    11ae:	74 08                	je     11b8 <__stack_chk_fail@plt+0xa8>
    11b0:	ff e0                	jmp    rax
    11b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11b8:	c3                   	ret
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	80 3d 4d 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e4d],0x0        # 4018 <stdin@GLIBC_2.2.5+0x8>
    11cb:	75 2b                	jne    11f8 <__stack_chk_fail@plt+0xe8>
    11cd:	55                   	push   rbp
    11ce:	48 83 3d 22 2e 00 00 	cmp    QWORD PTR [rip+0x2e22],0x0        # 3ff8 <__stack_chk_fail@plt+0x2ee8>
    11d5:	00 
    11d6:	48 89 e5             	mov    rbp,rsp
    11d9:	74 0c                	je     11e7 <__stack_chk_fail@plt+0xd7>
    11db:	48 8b 3d 26 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e26]        # 4008 <__stack_chk_fail@plt+0x2ef8>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <__stack_chk_fail@plt+0x40>
    11ec:	c6 05 25 2e 00 00 01 	mov    BYTE PTR [rip+0x2e25],0x1        # 4018 <stdin@GLIBC_2.2.5+0x8>
    11f3:	5d                   	pop    rbp
    11f4:	c3                   	ret
    11f5:	0f 1f 00             	nop    DWORD PTR [rax]
    11f8:	c3                   	ret
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1200:	f3 0f 1e fa          	endbr64
    1204:	e9 77 ff ff ff       	jmp    1180 <__stack_chk_fail@plt+0x70>
    1209:	f3 0f 1e fa          	endbr64
    120d:	55                   	push   rbp
    120e:	48 89 e5             	mov    rbp,rsp
    1211:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
    1218:	48 89 bd 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rdi
    121f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1226:	00 00 
    1228:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    122c:	31 c0                	xor    eax,eax
    122e:	48 b8 70 69 63 6f 43 	movabs rax,0x7b4654436f636970
    1235:	54 46 7b 
    1238:	48 ba 62 72 31 6e 67 	movabs rdx,0x30795f676e317262
    123f:	5f 79 30 
    1242:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
    1249:	48 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rdx
    1250:	48 b8 75 72 5f 30 77 	movabs rax,0x6b5f6e77305f7275
    1257:	6e 5f 6b 
    125a:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
    125e:	c7 45 88 33 79 5f 00 	mov    DWORD PTR [rbp-0x78],0x5f7933
    1265:	66 c7 85 4e ff ff ff 	mov    WORD PTR [rbp-0xb2],0x7d
    126c:	7d 00 
    126e:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
    1275:	48 89 c7             	mov    rdi,rax
    1278:	e8 63 fe ff ff       	call   10e0 <strlen@plt>
    127d:	48 89 c1             	mov    rcx,rax
    1280:	48 8d 95 50 ff ff ff 	lea    rdx,[rbp-0xb0]
    1287:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
    128e:	48 89 ce             	mov    rsi,rcx
    1291:	48 89 c7             	mov    rdi,rax
    1294:	e8 57 fe ff ff       	call   10f0 <MD5@plt>
    1299:	48 8d 85 4e ff ff ff 	lea    rax,[rbp-0xb2]
    12a0:	48 89 c7             	mov    rdi,rax
    12a3:	e8 38 fe ff ff       	call   10e0 <strlen@plt>
    12a8:	48 89 c1             	mov    rcx,rax
    12ab:	48 8d 95 60 ff ff ff 	lea    rdx,[rbp-0xa0]
    12b2:	48 8d 85 4e ff ff ff 	lea    rax,[rbp-0xb2]
    12b9:	48 89 ce             	mov    rsi,rcx
    12bc:	48 89 c7             	mov    rdi,rax
    12bf:	e8 2c fe ff ff       	call   10f0 <MD5@plt>
    12c4:	c7 85 38 ff ff ff 00 	mov    DWORD PTR [rbp-0xc8],0x0
    12cb:	00 00 00 
    12ce:	c7 85 3c ff ff ff 00 	mov    DWORD PTR [rbp-0xc4],0x0
    12d5:	00 00 00 
    12d8:	eb 47                	jmp    1321 <__stack_chk_fail@plt+0x211>
    12da:	8b 85 3c ff ff ff    	mov    eax,DWORD PTR [rbp-0xc4]
    12e0:	48 98                	cdqe
    12e2:	0f b6 84 05 50 ff ff 	movzx  eax,BYTE PTR [rbp+rax*1-0xb0]
    12e9:	ff 
    12ea:	0f b6 c0             	movzx  eax,al
    12ed:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
    12f1:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
    12f7:	48 63 d2             	movsxd rdx,edx
    12fa:	48 01 d1             	add    rcx,rdx
    12fd:	89 c2                	mov    edx,eax
    12ff:	48 8d 35 fe 0c 00 00 	lea    rsi,[rip+0xcfe]        # 2004 <__stack_chk_fail@plt+0xef4>
    1306:	48 89 cf             	mov    rdi,rcx
    1309:	b8 00 00 00 00       	mov    eax,0x0
    130e:	e8 ed fd ff ff       	call   1100 <sprintf@plt>
    1313:	83 85 3c ff ff ff 01 	add    DWORD PTR [rbp-0xc4],0x1
    131a:	83 85 38 ff ff ff 02 	add    DWORD PTR [rbp-0xc8],0x2
    1321:	83 bd 3c ff ff ff 0f 	cmp    DWORD PTR [rbp-0xc4],0xf
    1328:	7e b0                	jle    12da <__stack_chk_fail@plt+0x1ca>
    132a:	c7 85 38 ff ff ff 00 	mov    DWORD PTR [rbp-0xc8],0x0
    1331:	00 00 00 
    1334:	c7 85 40 ff ff ff 00 	mov    DWORD PTR [rbp-0xc0],0x0
    133b:	00 00 00 
    133e:	eb 47                	jmp    1387 <__stack_chk_fail@plt+0x277>
    1340:	8b 85 40 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc0]
    1346:	48 98                	cdqe
    1348:	0f b6 84 05 60 ff ff 	movzx  eax,BYTE PTR [rbp+rax*1-0xa0]
    134f:	ff 
    1350:	0f b6 c0             	movzx  eax,al
    1353:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
    1357:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
    135d:	48 63 d2             	movsxd rdx,edx
    1360:	48 01 d1             	add    rcx,rdx
    1363:	89 c2                	mov    edx,eax
    1365:	48 8d 35 98 0c 00 00 	lea    rsi,[rip+0xc98]        # 2004 <__stack_chk_fail@plt+0xef4>
    136c:	48 89 cf             	mov    rdi,rcx
    136f:	b8 00 00 00 00       	mov    eax,0x0
    1374:	e8 87 fd ff ff       	call   1100 <sprintf@plt>
    1379:	83 85 40 ff ff ff 01 	add    DWORD PTR [rbp-0xc0],0x1
    1380:	83 85 38 ff ff ff 02 	add    DWORD PTR [rbp-0xc8],0x2
    1387:	83 bd 40 ff ff ff 0f 	cmp    DWORD PTR [rbp-0xc0],0xf
    138e:	7e b0                	jle    1340 <__stack_chk_fail@plt+0x230>
    1390:	c7 85 44 ff ff ff 00 	mov    DWORD PTR [rbp-0xbc],0x0
    1397:	00 00 00 
    139a:	eb 23                	jmp    13bf <__stack_chk_fail@plt+0x2af>
    139c:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
    13a2:	48 98                	cdqe
    13a4:	0f b6 94 05 70 ff ff 	movzx  edx,BYTE PTR [rbp+rax*1-0x90]
    13ab:	ff 
    13ac:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
    13b2:	48 98                	cdqe
    13b4:	88 54 05 d0          	mov    BYTE PTR [rbp+rax*1-0x30],dl
    13b8:	83 85 44 ff ff ff 01 	add    DWORD PTR [rbp-0xbc],0x1
    13bf:	83 bd 44 ff ff ff 1a 	cmp    DWORD PTR [rbp-0xbc],0x1a
    13c6:	7e d4                	jle    139c <__stack_chk_fail@plt+0x28c>
    13c8:	0f b6 45 a2          	movzx  eax,BYTE PTR [rbp-0x5e]
    13cc:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
    13cf:	0f b6 45 aa          	movzx  eax,BYTE PTR [rbp-0x56]
    13d3:	88 45 ec             	mov    BYTE PTR [rbp-0x14],al
    13d6:	0f b6 45 a9          	movzx  eax,BYTE PTR [rbp-0x57]
    13da:	88 45 ed             	mov    BYTE PTR [rbp-0x13],al
    13dd:	0f b6 45 90          	movzx  eax,BYTE PTR [rbp-0x70]
    13e1:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
    13e4:	0f b6 45 aa          	movzx  eax,BYTE PTR [rbp-0x56]
    13e8:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
    13eb:	0f b6 45 a2          	movzx  eax,BYTE PTR [rbp-0x5e]
    13ef:	88 45 f0             	mov    BYTE PTR [rbp-0x10],al
    13f2:	0f b6 45 9c          	movzx  eax,BYTE PTR [rbp-0x64]
    13f6:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
    13f9:	0f b6 45 aa          	movzx  eax,BYTE PTR [rbp-0x56]
    13fd:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
    1400:	0f b6 85 4e ff ff ff 	movzx  eax,BYTE PTR [rbp-0xb2]
    1407:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
    140a:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
    1411:	48 89 c7             	mov    rdi,rax
    1414:	e8 c7 fc ff ff       	call   10e0 <strlen@plt>
    1419:	48 83 f8 24          	cmp    rax,0x24
    141d:	74 07                	je     1426 <__stack_chk_fail@plt+0x316>
    141f:	b8 00 00 00 00       	mov    eax,0x0
    1424:	eb 4f                	jmp    1475 <__stack_chk_fail@plt+0x365>
    1426:	c7 85 48 ff ff ff 00 	mov    DWORD PTR [rbp-0xb8],0x0
    142d:	00 00 00 
    1430:	eb 35                	jmp    1467 <__stack_chk_fail@plt+0x357>
    1432:	8b 85 48 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb8]
    1438:	48 63 d0             	movsxd rdx,eax
    143b:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
    1442:	48 01 d0             	add    rax,rdx
    1445:	0f b6 10             	movzx  edx,BYTE PTR [rax]
    1448:	8b 85 48 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb8]
    144e:	48 98                	cdqe
    1450:	0f b6 44 05 d0       	movzx  eax,BYTE PTR [rbp+rax*1-0x30]
    1455:	38 c2                	cmp    dl,al
    1457:	74 07                	je     1460 <__stack_chk_fail@plt+0x350>
    1459:	b8 00 00 00 00       	mov    eax,0x0
    145e:	eb 15                	jmp    1475 <__stack_chk_fail@plt+0x365>
    1460:	83 85 48 ff ff ff 01 	add    DWORD PTR [rbp-0xb8],0x1
    1467:	83 bd 48 ff ff ff 23 	cmp    DWORD PTR [rbp-0xb8],0x23
    146e:	7e c2                	jle    1432 <__stack_chk_fail@plt+0x322>
    1470:	b8 01 00 00 00       	mov    eax,0x1
    1475:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
    1479:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    1480:	00 00 
    1482:	74 05                	je     1489 <__stack_chk_fail@plt+0x379>
    1484:	e8 87 fc ff ff       	call   1110 <__stack_chk_fail@plt>
    1489:	c9                   	leave
    148a:	c3                   	ret
    148b:	f3 0f 1e fa          	endbr64
    148f:	55                   	push   rbp
    1490:	48 89 e5             	mov    rbp,rsp
    1493:	48 83 ec 40          	sub    rsp,0x40
    1497:	89 7d cc             	mov    DWORD PTR [rbp-0x34],edi
    149a:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
    149e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    14a5:	00 00 
    14a7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    14ab:	31 c0                	xor    eax,eax
    14ad:	48 8d 3d 55 0b 00 00 	lea    rdi,[rip+0xb55]        # 2009 <__stack_chk_fail@plt+0xef9>
    14b4:	b8 00 00 00 00       	mov    eax,0x0
    14b9:	e8 f2 fb ff ff       	call   10b0 <printf@plt>
    14be:	48 8b 15 4b 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b4b]        # 4010 <stdin@GLIBC_2.2.5>
    14c5:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    14c9:	be 25 00 00 00       	mov    esi,0x25
    14ce:	48 89 c7             	mov    rdi,rax
    14d1:	e8 fa fb ff ff       	call   10d0 <fgets@plt>
    14d6:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    14da:	48 89 c7             	mov    rdi,rax
    14dd:	e8 27 fd ff ff       	call   1209 <__stack_chk_fail@plt+0xf9>
    14e2:	84 c0                	test   al,al
    14e4:	74 0e                	je     14f4 <__stack_chk_fail@plt+0x3e4>
    14e6:	48 8d 3d 35 0b 00 00 	lea    rdi,[rip+0xb35]        # 2022 <__stack_chk_fail@plt+0xf12>
    14ed:	e8 ce fb ff ff       	call   10c0 <puts@plt>
    14f2:	eb 0c                	jmp    1500 <__stack_chk_fail@plt+0x3f0>
    14f4:	48 8d 3d 3a 0b 00 00 	lea    rdi,[rip+0xb3a]        # 2035 <__stack_chk_fail@plt+0xf25>
    14fb:	e8 c0 fb ff ff       	call   10c0 <puts@plt>
    1500:	b8 00 00 00 00       	mov    eax,0x0
    1505:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    1509:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    1510:	00 00 
    1512:	74 05                	je     1519 <__stack_chk_fail@plt+0x409>
    1514:	e8 f7 fb ff ff       	call   1110 <__stack_chk_fail@plt>
    1519:	c9                   	leave
    151a:	c3                   	ret
    151b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1520:	f3 0f 1e fa          	endbr64
    1524:	41 57                	push   r15
    1526:	4c 8d 3d 4b 28 00 00 	lea    r15,[rip+0x284b]        # 3d78 <__stack_chk_fail@plt+0x2c68>
    152d:	41 56                	push   r14
    152f:	49 89 d6             	mov    r14,rdx
    1532:	41 55                	push   r13
    1534:	49 89 f5             	mov    r13,rsi
    1537:	41 54                	push   r12
    1539:	41 89 fc             	mov    r12d,edi
    153c:	55                   	push   rbp
    153d:	48 8d 2d 3c 28 00 00 	lea    rbp,[rip+0x283c]        # 3d80 <__stack_chk_fail@plt+0x2c70>
    1544:	53                   	push   rbx
    1545:	4c 29 fd             	sub    rbp,r15
    1548:	48 83 ec 08          	sub    rsp,0x8
    154c:	e8 af fa ff ff       	call   1000 <__cxa_finalize@plt-0xa0>
    1551:	48 c1 fd 03          	sar    rbp,0x3
    1555:	74 1f                	je     1576 <__stack_chk_fail@plt+0x466>
    1557:	31 db                	xor    ebx,ebx
    1559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1560:	4c 89 f2             	mov    rdx,r14
    1563:	4c 89 ee             	mov    rsi,r13
    1566:	44 89 e7             	mov    edi,r12d
    1569:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    156d:	48 83 c3 01          	add    rbx,0x1
    1571:	48 39 dd             	cmp    rbp,rbx
    1574:	75 ea                	jne    1560 <__stack_chk_fail@plt+0x450>
    1576:	48 83 c4 08          	add    rsp,0x8
    157a:	5b                   	pop    rbx
    157b:	5d                   	pop    rbp
    157c:	41 5c                	pop    r12
    157e:	41 5d                	pop    r13
    1580:	41 5e                	pop    r14
    1582:	41 5f                	pop    r15
    1584:	c3                   	ret
    1585:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    158c:	00 00 00 00 
    1590:	f3 0f 1e fa          	endbr64
    1594:	c3                   	ret

Disassembly of section .fini:

0000000000001598 <.fini>:
    1598:	f3 0f 1e fa          	endbr64
    159c:	48 83 ec 08          	sub    rsp,0x8
    15a0:	48 83 c4 08          	add    rsp,0x8
    15a4:	c3                   	ret
