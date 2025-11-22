
not-crypto:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <memcmp@plt+0x2f88>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <puts@plt-0x1a>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <memcmp@plt+0x2fa8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <memcmp@plt+0x2fb0>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <memcmp@plt+0x2fb8>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001040 <fread@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <memcmp@plt+0x2fc0>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <memcmp@plt+0x2fc8>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001060 <memcmp@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <memcmp@plt+0x2fd0>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <puts@plt-0x10>

Disassembly of section .text:

0000000000001070 <.text>:
    1070:	41 57                	push   r15
    1072:	48 8d 3d 8f 0f 00 00 	lea    rdi,[rip+0xf8f]        # 2008 <memcmp@plt+0xfa8>
    1079:	41 56                	push   r14
    107b:	41 55                	push   r13
    107d:	41 54                	push   r12
    107f:	55                   	push   rbp
    1080:	53                   	push   rbx
    1081:	48 81 ec d8 01 00 00 	sub    rsp,0x1d8
    1088:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    108f:	00 00 
    1091:	48 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rax
    1098:	00 
    1099:	31 c0                	xor    eax,eax
    109b:	48 8d 9c 24 b0 00 00 	lea    rbx,[rsp+0xb0]
    10a2:	00 
    10a3:	e8 88 ff ff ff       	call   1030 <puts@plt>
    10a8:	c5 f9 6f 05 f0 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x10f0]        # 21a0 <memcmp@plt+0x1140>
    10af:	00 
    10b0:	48 89 d8             	mov    rax,rbx
    10b3:	bf 98 ff ff ff       	mov    edi,0xffffff98
    10b8:	be 32 00 00 00       	mov    esi,0x32
    10bd:	b9 6c 00 00 00       	mov    ecx,0x6c
    10c2:	ba 1c 00 00 00       	mov    edx,0x1c
    10c7:	c5 f9 7f 84 24 b0 00 	vmovdqa XMMWORD PTR [rsp+0xb0],xmm0
    10ce:	00 00 
    10d0:	41 b8 04 00 00 00    	mov    r8d,0x4
    10d6:	4c 8d 0d c3 0f 00 00 	lea    r9,[rip+0xfc3]        # 20a0 <memcmp@plt+0x1040>
    10dd:	4c 8d 15 9c 0f 00 00 	lea    r10,[rip+0xf9c]        # 2080 <memcmp@plt+0x1020>
    10e4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    10e8:	41 f6 c0 03          	test   r8b,0x3
    10ec:	75 2f                	jne    111d <memcmp@plt+0xbd>
    10ee:	40 0f b6 f6          	movzx  esi,sil
    10f2:	0f b6 c9             	movzx  ecx,cl
    10f5:	0f b6 d2             	movzx  edx,dl
    10f8:	40 0f b6 ff          	movzx  edi,dil
    10fc:	45 0f b6 1c 31       	movzx  r11d,BYTE PTR [r9+rsi*1]
    1101:	41 0f b6 34 09       	movzx  esi,BYTE PTR [r9+rcx*1]
    1106:	41 0f b6 0c 11       	movzx  ecx,BYTE PTR [r9+rdx*1]
    110b:	41 0f b6 14 39       	movzx  edx,BYTE PTR [r9+rdi*1]
    1110:	44 89 c7             	mov    edi,r8d
    1113:	c1 ef 02             	shr    edi,0x2
    1116:	45 32 1c 3a          	xor    r11b,BYTE PTR [r10+rdi*1]
    111a:	44 89 df             	mov    edi,r11d
    111d:	40 32 38             	xor    dil,BYTE PTR [rax]
    1120:	41 83 c0 01          	add    r8d,0x1
    1124:	48 83 c0 04          	add    rax,0x4
    1128:	40 32 70 fd          	xor    sil,BYTE PTR [rax-0x3]
    112c:	32 48 fe             	xor    cl,BYTE PTR [rax-0x2]
    112f:	32 50 ff             	xor    dl,BYTE PTR [rax-0x1]
    1132:	40 88 78 0c          	mov    BYTE PTR [rax+0xc],dil
    1136:	40 88 70 0d          	mov    BYTE PTR [rax+0xd],sil
    113a:	88 48 0e             	mov    BYTE PTR [rax+0xe],cl
    113d:	88 50 0f             	mov    BYTE PTR [rax+0xf],dl
    1140:	41 83 f8 2c          	cmp    r8d,0x2c
    1144:	75 a2                	jne    10e8 <memcmp@plt+0x88>
    1146:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    114b:	ba 40 00 00 00       	mov    edx,0x40
    1150:	be 01 00 00 00       	mov    esi,0x1
    1155:	48 8b 05 7c 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e7c]        # 3fd8 <memcmp@plt+0x2f78>
    115c:	c5 f9 6f 05 4c 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x104c]        # 21b0 <memcmp@plt+0x1150>
    1163:	00 
    1164:	48 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],rdi
    1169:	48 81 c3 a0 00 00 00 	add    rbx,0xa0
    1170:	c5 f9 7f 84 24 60 01 	vmovdqa XMMWORD PTR [rsp+0x160],xmm0
    1177:	00 00 
    1179:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    117c:	e8 bf fe ff ff       	call   1040 <fread@plt>
    1181:	0f b6 84 24 b0 00 00 	movzx  eax,BYTE PTR [rsp+0xb0]
    1188:	00 
    1189:	48 8d 3d 10 0f 00 00 	lea    rdi,[rip+0xf10]        # 20a0 <memcmp@plt+0x1040>
    1190:	c5 f9 6f 05 28 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x1028]        # 21c0 <memcmp@plt+0x1160>
    1197:	00 
    1198:	c5 f9 7f 84 24 80 01 	vmovdqa XMMWORD PTR [rsp+0x180],xmm0
    119f:	00 00 
    11a1:	c5 f9 6f 05 27 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x1027]        # 21d0 <memcmp@plt+0x1170>
    11a8:	00 
    11a9:	88 44 24 60          	mov    BYTE PTR [rsp+0x60],al
    11ad:	0f b6 84 24 b1 00 00 	movzx  eax,BYTE PTR [rsp+0xb1]
    11b4:	00 
    11b5:	c5 f9 7f 84 24 90 01 	vmovdqa XMMWORD PTR [rsp+0x190],xmm0
    11bc:	00 00 
    11be:	c5 f9 6f 05 1a 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x101a]        # 21e0 <memcmp@plt+0x1180>
    11c5:	00 
    11c6:	c5 f9 7f 84 24 a0 01 	vmovdqa XMMWORD PTR [rsp+0x1a0],xmm0
    11cd:	00 00 
    11cf:	c5 f9 6f 05 19 10 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x1019]        # 21f0 <memcmp@plt+0x1190>
    11d6:	00 
    11d7:	88 44 24 61          	mov    BYTE PTR [rsp+0x61],al
    11db:	0f b6 84 24 b2 00 00 	movzx  eax,BYTE PTR [rsp+0xb2]
    11e2:	00 
    11e3:	c5 f9 7f 84 24 b0 01 	vmovdqa XMMWORD PTR [rsp+0x1b0],xmm0
    11ea:	00 00 
    11ec:	88 44 24 62          	mov    BYTE PTR [rsp+0x62],al
    11f0:	0f b6 84 24 b3 00 00 	movzx  eax,BYTE PTR [rsp+0xb3]
    11f7:	00 
    11f8:	88 44 24 63          	mov    BYTE PTR [rsp+0x63],al
    11fc:	0f b6 84 24 b4 00 00 	movzx  eax,BYTE PTR [rsp+0xb4]
    1203:	00 
    1204:	88 44 24 64          	mov    BYTE PTR [rsp+0x64],al
    1208:	0f b6 84 24 b5 00 00 	movzx  eax,BYTE PTR [rsp+0xb5]
    120f:	00 
    1210:	88 44 24 65          	mov    BYTE PTR [rsp+0x65],al
    1214:	0f b6 84 24 b6 00 00 	movzx  eax,BYTE PTR [rsp+0xb6]
    121b:	00 
    121c:	88 44 24 66          	mov    BYTE PTR [rsp+0x66],al
    1220:	0f b6 84 24 b7 00 00 	movzx  eax,BYTE PTR [rsp+0xb7]
    1227:	00 
    1228:	88 44 24 67          	mov    BYTE PTR [rsp+0x67],al
    122c:	0f b6 84 24 b8 00 00 	movzx  eax,BYTE PTR [rsp+0xb8]
    1233:	00 
    1234:	88 44 24 68          	mov    BYTE PTR [rsp+0x68],al
    1238:	0f b6 84 24 b9 00 00 	movzx  eax,BYTE PTR [rsp+0xb9]
    123f:	00 
    1240:	88 44 24 69          	mov    BYTE PTR [rsp+0x69],al
    1244:	0f b6 84 24 ba 00 00 	movzx  eax,BYTE PTR [rsp+0xba]
    124b:	00 
    124c:	88 44 24 6a          	mov    BYTE PTR [rsp+0x6a],al
    1250:	0f b6 84 24 bb 00 00 	movzx  eax,BYTE PTR [rsp+0xbb]
    1257:	00 
    1258:	88 44 24 6b          	mov    BYTE PTR [rsp+0x6b],al
    125c:	0f b6 84 24 bc 00 00 	movzx  eax,BYTE PTR [rsp+0xbc]
    1263:	00 
    1264:	88 44 24 6c          	mov    BYTE PTR [rsp+0x6c],al
    1268:	0f b6 84 24 bd 00 00 	movzx  eax,BYTE PTR [rsp+0xbd]
    126f:	00 
    1270:	88 44 24 6d          	mov    BYTE PTR [rsp+0x6d],al
    1274:	0f b6 84 24 be 00 00 	movzx  eax,BYTE PTR [rsp+0xbe]
    127b:	00 
    127c:	88 44 24 6e          	mov    BYTE PTR [rsp+0x6e],al
    1280:	0f b6 84 24 bf 00 00 	movzx  eax,BYTE PTR [rsp+0xbf]
    1287:	00 
    1288:	88 44 24 6f          	mov    BYTE PTR [rsp+0x6f],al
    128c:	0f b6 84 24 50 01 00 	movzx  eax,BYTE PTR [rsp+0x150]
    1293:	00 
    1294:	88 44 24 50          	mov    BYTE PTR [rsp+0x50],al
    1298:	0f b6 84 24 51 01 00 	movzx  eax,BYTE PTR [rsp+0x151]
    129f:	00 
    12a0:	88 44 24 51          	mov    BYTE PTR [rsp+0x51],al
    12a4:	0f b6 84 24 52 01 00 	movzx  eax,BYTE PTR [rsp+0x152]
    12ab:	00 
    12ac:	88 44 24 52          	mov    BYTE PTR [rsp+0x52],al
    12b0:	0f b6 84 24 53 01 00 	movzx  eax,BYTE PTR [rsp+0x153]
    12b7:	00 
    12b8:	88 44 24 53          	mov    BYTE PTR [rsp+0x53],al
    12bc:	0f b6 84 24 54 01 00 	movzx  eax,BYTE PTR [rsp+0x154]
    12c3:	00 
    12c4:	88 44 24 54          	mov    BYTE PTR [rsp+0x54],al
    12c8:	0f b6 84 24 55 01 00 	movzx  eax,BYTE PTR [rsp+0x155]
    12cf:	00 
    12d0:	88 44 24 55          	mov    BYTE PTR [rsp+0x55],al
    12d4:	0f b6 84 24 56 01 00 	movzx  eax,BYTE PTR [rsp+0x156]
    12db:	00 
    12dc:	88 44 24 56          	mov    BYTE PTR [rsp+0x56],al
    12e0:	0f b6 84 24 57 01 00 	movzx  eax,BYTE PTR [rsp+0x157]
    12e7:	00 
    12e8:	88 44 24 57          	mov    BYTE PTR [rsp+0x57],al
    12ec:	0f b6 84 24 58 01 00 	movzx  eax,BYTE PTR [rsp+0x158]
    12f3:	00 
    12f4:	88 44 24 58          	mov    BYTE PTR [rsp+0x58],al
    12f8:	0f b6 84 24 59 01 00 	movzx  eax,BYTE PTR [rsp+0x159]
    12ff:	00 
    1300:	88 44 24 59          	mov    BYTE PTR [rsp+0x59],al
    1304:	0f b6 84 24 5a 01 00 	movzx  eax,BYTE PTR [rsp+0x15a]
    130b:	00 
    130c:	88 44 24 5a          	mov    BYTE PTR [rsp+0x5a],al
    1310:	0f b6 84 24 5b 01 00 	movzx  eax,BYTE PTR [rsp+0x15b]
    1317:	00 
    1318:	88 44 24 5b          	mov    BYTE PTR [rsp+0x5b],al
    131c:	0f b6 84 24 5c 01 00 	movzx  eax,BYTE PTR [rsp+0x15c]
    1323:	00 
    1324:	48 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],rbx
    1329:	88 44 24 5c          	mov    BYTE PTR [rsp+0x5c],al
    132d:	0f b6 84 24 5d 01 00 	movzx  eax,BYTE PTR [rsp+0x15d]
    1334:	00 
    1335:	88 44 24 5d          	mov    BYTE PTR [rsp+0x5d],al
    1339:	0f b6 84 24 5e 01 00 	movzx  eax,BYTE PTR [rsp+0x15e]
    1340:	00 
    1341:	88 44 24 5e          	mov    BYTE PTR [rsp+0x5e],al
    1345:	0f b6 84 24 5f 01 00 	movzx  eax,BYTE PTR [rsp+0x15f]
    134c:	00 
    134d:	88 44 24 5f          	mov    BYTE PTR [rsp+0x5f],al
    1351:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
    1358:	00 
    1359:	49 89 c4             	mov    r12,rax
    135c:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    1361:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
    1368:	00 
    1369:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
    136e:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    1373:	b8 10 00 00 00       	mov    eax,0x10
    1378:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    137f:	00 
    1380:	83 f8 10             	cmp    eax,0x10
    1383:	74 7c                	je     1401 <memcmp@plt+0x3a1>
    1385:	48 8b 5c 24 20       	mov    rbx,QWORD PTR [rsp+0x20]
    138a:	48 63 d0             	movsxd rdx,eax
    138d:	83 c0 01             	add    eax,0x1
    1390:	0f b6 94 14 70 01 00 	movzx  edx,BYTE PTR [rsp+rdx*1+0x170]
    1397:	00 
    1398:	30 13                	xor    BYTE PTR [rbx],dl
    139a:	48 83 c3 01          	add    rbx,0x1
    139e:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
    13a3:	48 39 5c 24 30       	cmp    QWORD PTR [rsp+0x30],rbx
    13a8:	75 d6                	jne    1380 <memcmp@plt+0x320>
    13aa:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
    13af:	ba 40 00 00 00       	mov    edx,0x40
    13b4:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
    13b9:	e8 a2 fc ff ff       	call   1060 <memcmp@plt>
    13be:	41 89 c4             	mov    r12d,eax
    13c1:	85 c0                	test   eax,eax
    13c3:	0f 85 d6 06 00 00    	jne    1a9f <memcmp@plt+0xa3f>
    13c9:	48 8d 3d 87 0c 00 00 	lea    rdi,[rip+0xc87]        # 2057 <memcmp@plt+0xff7>
    13d0:	e8 5b fc ff ff       	call   1030 <puts@plt>
    13d5:	48 8b 84 24 c8 01 00 	mov    rax,QWORD PTR [rsp+0x1c8]
    13dc:	00 
    13dd:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    13e4:	00 00 
    13e6:	0f 85 7d 08 00 00    	jne    1c69 <memcmp@plt+0xc09>
    13ec:	48 81 c4 d8 01 00 00 	add    rsp,0x1d8
    13f3:	44 89 e0             	mov    eax,r12d
    13f6:	5b                   	pop    rbx
    13f7:	5d                   	pop    rbp
    13f8:	41 5c                	pop    r12
    13fa:	41 5d                	pop    r13
    13fc:	41 5e                	pop    r14
    13fe:	41 5f                	pop    r15
    1400:	c3                   	ret
    1401:	0f b6 44 24 60       	movzx  eax,BYTE PTR [rsp+0x60]
    1406:	4c 8d bc 24 c0 00 00 	lea    r15,[rsp+0xc0]
    140d:	00 
    140e:	32 84 24 60 01 00 00 	xor    al,BYTE PTR [rsp+0x160]
    1415:	c5 f9 6f a4 24 60 01 	vmovdqa xmm4,XMMWORD PTR [rsp+0x160]
    141c:	00 00 
    141e:	0f b6 c0             	movzx  eax,al
    1421:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    1425:	88 44 24 10          	mov    BYTE PTR [rsp+0x10],al
    1429:	c4 e3 79 14 e0 04    	vpextrb eax,xmm4,0x4
    142f:	32 44 24 64          	xor    al,BYTE PTR [rsp+0x64]
    1433:	0f b6 c0             	movzx  eax,al
    1436:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    143a:	88 44 24 0c          	mov    BYTE PTR [rsp+0xc],al
    143e:	0f b6 44 24 68       	movzx  eax,BYTE PTR [rsp+0x68]
    1443:	32 84 24 68 01 00 00 	xor    al,BYTE PTR [rsp+0x168]
    144a:	0f b6 c0             	movzx  eax,al
    144d:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    1451:	88 44 24 1a          	mov    BYTE PTR [rsp+0x1a],al
    1455:	c4 e3 79 14 e0 0c    	vpextrb eax,xmm4,0xc
    145b:	32 44 24 6c          	xor    al,BYTE PTR [rsp+0x6c]
    145f:	0f b6 c0             	movzx  eax,al
    1462:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    1466:	88 44 24 19          	mov    BYTE PTR [rsp+0x19],al
    146a:	c4 e3 79 14 e0 01    	vpextrb eax,xmm4,0x1
    1470:	32 44 24 61          	xor    al,BYTE PTR [rsp+0x61]
    1474:	0f b6 c0             	movzx  eax,al
    1477:	44 0f b6 04 07       	movzx  r8d,BYTE PTR [rdi+rax*1]
    147c:	c4 e3 79 14 e0 05    	vpextrb eax,xmm4,0x5
    1482:	32 44 24 65          	xor    al,BYTE PTR [rsp+0x65]
    1486:	0f b6 c0             	movzx  eax,al
    1489:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    148d:	88 44 24 0b          	mov    BYTE PTR [rsp+0xb],al
    1491:	c4 e3 79 14 e0 09    	vpextrb eax,xmm4,0x9
    1497:	32 44 24 69          	xor    al,BYTE PTR [rsp+0x69]
    149b:	0f b6 c0             	movzx  eax,al
    149e:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    14a2:	88 44 24 0a          	mov    BYTE PTR [rsp+0xa],al
    14a6:	c4 e3 79 14 e0 0d    	vpextrb eax,xmm4,0xd
    14ac:	32 44 24 6d          	xor    al,BYTE PTR [rsp+0x6d]
    14b0:	0f b6 c0             	movzx  eax,al
    14b3:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    14b7:	88 44 24 18          	mov    BYTE PTR [rsp+0x18],al
    14bb:	c4 e3 79 14 e0 02    	vpextrb eax,xmm4,0x2
    14c1:	32 44 24 62          	xor    al,BYTE PTR [rsp+0x62]
    14c5:	0f b6 c0             	movzx  eax,al
    14c8:	0f b6 34 07          	movzx  esi,BYTE PTR [rdi+rax*1]
    14cc:	c4 e3 79 14 e0 06    	vpextrb eax,xmm4,0x6
    14d2:	32 44 24 66          	xor    al,BYTE PTR [rsp+0x66]
    14d6:	0f b6 c0             	movzx  eax,al
    14d9:	44 0f b6 24 07       	movzx  r12d,BYTE PTR [rdi+rax*1]
    14de:	c4 e3 79 14 e0 0a    	vpextrb eax,xmm4,0xa
    14e4:	32 44 24 6a          	xor    al,BYTE PTR [rsp+0x6a]
    14e8:	0f b6 c0             	movzx  eax,al
    14eb:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    14ef:	88 44 24 17          	mov    BYTE PTR [rsp+0x17],al
    14f3:	c4 e3 79 14 e0 0e    	vpextrb eax,xmm4,0xe
    14f9:	32 44 24 6e          	xor    al,BYTE PTR [rsp+0x6e]
    14fd:	44 88 64 24 1c       	mov    BYTE PTR [rsp+0x1c],r12b
    1502:	44 88 44 24 14       	mov    BYTE PTR [rsp+0x14],r8b
    1507:	0f b6 c0             	movzx  eax,al
    150a:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    150e:	88 44 24 16          	mov    BYTE PTR [rsp+0x16],al
    1512:	c4 e3 79 14 e0 03    	vpextrb eax,xmm4,0x3
    1518:	32 44 24 63          	xor    al,BYTE PTR [rsp+0x63]
    151c:	0f b6 c0             	movzx  eax,al
    151f:	44 0f b6 34 07       	movzx  r14d,BYTE PTR [rdi+rax*1]
    1524:	c4 e3 79 14 e0 07    	vpextrb eax,xmm4,0x7
    152a:	32 44 24 67          	xor    al,BYTE PTR [rsp+0x67]
    152e:	44 88 74 24 1b       	mov    BYTE PTR [rsp+0x1b],r14b
    1533:	0f b6 c0             	movzx  eax,al
    1536:	0f b6 14 07          	movzx  edx,BYTE PTR [rdi+rax*1]
    153a:	c4 e3 79 14 e0 0b    	vpextrb eax,xmm4,0xb
    1540:	32 44 24 6b          	xor    al,BYTE PTR [rsp+0x6b]
    1544:	0f b6 c0             	movzx  eax,al
    1547:	0f b6 0c 07          	movzx  ecx,BYTE PTR [rdi+rax*1]
    154b:	c4 e3 79 14 e0 0f    	vpextrb eax,xmm4,0xf
    1551:	32 44 24 6f          	xor    al,BYTE PTR [rsp+0x6f]
    1555:	0f b6 c0             	movzx  eax,al
    1558:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    155c:	88 44 24 15          	mov    BYTE PTR [rsp+0x15],al
    1560:	44 0f b6 74 24 0b    	movzx  r14d,BYTE PTR [rsp+0xb]
    1566:	0f b6 44 24 15       	movzx  eax,BYTE PTR [rsp+0x15]
    156b:	44 0f b6 4c 24 10    	movzx  r9d,BYTE PTR [rsp+0x10]
    1571:	44 0f b6 54 24 17    	movzx  r10d,BYTE PTR [rsp+0x17]
    1577:	45 89 f3             	mov    r11d,r14d
    157a:	0f b6 6c 24 1b       	movzx  ebp,BYTE PTR [rsp+0x1b]
    157f:	89 c3                	mov    ebx,eax
    1581:	45 31 cb             	xor    r11d,r9d
    1584:	44 31 d3             	xor    ebx,r10d
    1587:	45 89 d0             	mov    r8d,r10d
    158a:	44 0f b6 54 24 0a    	movzx  r10d,BYTE PTR [rsp+0xa]
    1590:	45 89 dc             	mov    r12d,r11d
    1593:	45 31 f0             	xor    r8d,r14d
    1596:	44 88 5c 24 28       	mov    BYTE PTR [rsp+0x28],r11b
    159b:	41 89 c6             	mov    r14d,eax
    159e:	41 31 dc             	xor    r12d,ebx
    15a1:	44 0f b6 5c 24 0c    	movzx  r11d,BYTE PTR [rsp+0xc]
    15a7:	45 31 ce             	xor    r14d,r9d
    15aa:	41 89 e9             	mov    r9d,ebp
    15ad:	88 5c 24 1f          	mov    BYTE PTR [rsp+0x1f],bl
    15b1:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
    15b6:	44 88 44 24 29       	mov    BYTE PTR [rsp+0x29],r8b
    15bb:	45 89 d0             	mov    r8d,r10d
    15be:	44 88 74 24 2a       	mov    BYTE PTR [rsp+0x2a],r14b
    15c3:	45 31 d8             	xor    r8d,r11d
    15c6:	41 31 c1             	xor    r9d,eax
    15c9:	44 88 44 24 2b       	mov    BYTE PTR [rsp+0x2b],r8b
    15ce:	45 89 cd             	mov    r13d,r9d
    15d1:	45 89 c1             	mov    r9d,r8d
    15d4:	45 31 e9             	xor    r9d,r13d
    15d7:	44 88 6c 24 1e       	mov    BYTE PTR [rsp+0x1e],r13b
    15dc:	41 89 ed             	mov    r13d,ebp
    15df:	0f b6 6c 24 1a       	movzx  ebp,BYTE PTR [rsp+0x1a]
    15e4:	45 89 ce             	mov    r14d,r9d
    15e7:	41 89 c1             	mov    r9d,eax
    15ea:	0f b6 44 24 18       	movzx  eax,BYTE PTR [rsp+0x18]
    15ef:	45 31 dd             	xor    r13d,r11d
    15f2:	45 31 d1             	xor    r9d,r10d
    15f5:	41 89 d2             	mov    r10d,edx
    15f8:	44 88 4c 24 2c       	mov    BYTE PTR [rsp+0x2c],r9b
    15fd:	41 31 f2             	xor    r10d,esi
    1600:	41 89 c1             	mov    r9d,eax
    1603:	41 31 e9             	xor    r9d,ebp
    1606:	31 d5                	xor    ebp,edx
    1608:	44 89 cb             	mov    ebx,r9d
    160b:	45 89 d1             	mov    r9d,r10d
    160e:	41 89 c2             	mov    r10d,eax
    1611:	41 89 db             	mov    r11d,ebx
    1614:	41 31 f2             	xor    r10d,esi
    1617:	88 5c 24 2d          	mov    BYTE PTR [rsp+0x2d],bl
    161b:	0f b6 5c 24 1c       	movzx  ebx,BYTE PTR [rsp+0x1c]
    1620:	45 31 cb             	xor    r11d,r9d
    1623:	44 88 54 24 2e       	mov    BYTE PTR [rsp+0x2e],r10b
    1628:	44 0f b6 54 24 19    	movzx  r10d,BYTE PTR [rsp+0x19]
    162e:	44 88 5c 24 1d       	mov    BYTE PTR [rsp+0x1d],r11b
    1633:	44 0f b6 5c 24 14    	movzx  r11d,BYTE PTR [rsp+0x14]
    1639:	41 89 d8             	mov    r8d,ebx
    163c:	41 31 c8             	xor    r8d,ecx
    163f:	44 89 d8             	mov    eax,r11d
    1642:	44 31 db             	xor    ebx,r11d
    1645:	45 89 d3             	mov    r11d,r10d
    1648:	44 31 d0             	xor    eax,r10d
    164b:	45 89 ea             	mov    r10d,r13d
    164e:	45 01 ed             	add    r13d,r13d
    1651:	41 c0 ea 07          	shr    r10b,0x7
    1655:	41 31 cb             	xor    r11d,ecx
    1658:	88 44 24 2f          	mov    BYTE PTR [rsp+0x2f],al
    165c:	44 31 c0             	xor    eax,r8d
    165f:	47 8d 14 52          	lea    r10d,[r10+r10*2]
    1663:	47 8d 14 d2          	lea    r10d,[r10+r10*8]
    1667:	45 31 ea             	xor    r10d,r13d
    166a:	45 0f b6 6f 07       	movzx  r13d,BYTE PTR [r15+0x7]
    166f:	45 31 f5             	xor    r13d,r14d
    1672:	44 32 6c 24 1b       	xor    r13b,BYTE PTR [rsp+0x1b]
    1677:	45 31 d5             	xor    r13d,r10d
    167a:	45 89 ca             	mov    r10d,r9d
    167d:	45 01 c9             	add    r9d,r9d
    1680:	41 c0 ea 07          	shr    r10b,0x7
    1684:	45 0f b6 ed          	movzx  r13d,r13b
    1688:	47 8d 14 52          	lea    r10d,[r10+r10*2]
    168c:	47 8d 14 d2          	lea    r10d,[r10+r10*8]
    1690:	45 31 d1             	xor    r9d,r10d
    1693:	44 0f b6 54 24 1d    	movzx  r10d,BYTE PTR [rsp+0x1d]
    1699:	45 32 57 0a          	xor    r10b,BYTE PTR [r15+0xa]
    169d:	44 31 d6             	xor    esi,r10d
    16a0:	45 89 ca             	mov    r10d,r9d
    16a3:	41 31 f2             	xor    r10d,esi
    16a6:	89 ee                	mov    esi,ebp
    16a8:	40 c0 ee 07          	shr    sil,0x7
    16ac:	01 ed                	add    ebp,ebp
    16ae:	8d 34 76             	lea    esi,[rsi+rsi*2]
    16b1:	8d 34 f6             	lea    esi,[rsi+rsi*8]
    16b4:	31 ee                	xor    esi,ebp
    16b6:	0f b6 6c 24 1d       	movzx  ebp,BYTE PTR [rsp+0x1d]
    16bb:	41 32 6f 0b          	xor    bpl,BYTE PTR [r15+0xb]
    16bf:	41 89 e9             	mov    r9d,ebp
    16c2:	44 31 ca             	xor    edx,r9d
    16c5:	31 d6                	xor    esi,edx
    16c7:	89 da                	mov    edx,ebx
    16c9:	01 db                	add    ebx,ebx
    16cb:	89 f5                	mov    ebp,esi
    16cd:	41 0f b6 77 0d       	movzx  esi,BYTE PTR [r15+0xd]
    16d2:	c0 ea 07             	shr    dl,0x7
    16d5:	8d 14 52             	lea    edx,[rdx+rdx*2]
    16d8:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    16db:	31 da                	xor    edx,ebx
    16dd:	31 c6                	xor    esi,eax
    16df:	40 32 74 24 14       	xor    sil,BYTE PTR [rsp+0x14]
    16e4:	31 f2                	xor    edx,esi
    16e6:	89 d3                	mov    ebx,edx
    16e8:	44 89 c2             	mov    edx,r8d
    16eb:	45 01 c0             	add    r8d,r8d
    16ee:	c0 ea 07             	shr    dl,0x7
    16f1:	8d 14 52             	lea    edx,[rdx+rdx*2]
    16f4:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    16f7:	41 31 d0             	xor    r8d,edx
    16fa:	41 0f b6 57 0e       	movzx  edx,BYTE PTR [r15+0xe]
    16ff:	41 0f b6 77 0f       	movzx  esi,BYTE PTR [r15+0xf]
    1704:	44 0f b6 4c 24 2d    	movzx  r9d,BYTE PTR [rsp+0x2d]
    170a:	31 c2                	xor    edx,eax
    170c:	32 54 24 1c          	xor    dl,BYTE PTR [rsp+0x1c]
    1710:	31 c6                	xor    esi,eax
    1712:	31 f1                	xor    ecx,esi
    1714:	41 0f b6 37          	movzx  esi,BYTE PTR [r15]
    1718:	41 31 d0             	xor    r8d,edx
    171b:	44 89 da             	mov    edx,r11d
    171e:	45 01 db             	add    r11d,r11d
    1721:	c0 ea 07             	shr    dl,0x7
    1724:	8d 14 52             	lea    edx,[rdx+rdx*2]
    1727:	44 31 e6             	xor    esi,r12d
    172a:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    172d:	44 31 da             	xor    edx,r11d
    1730:	31 ca                	xor    edx,ecx
    1732:	0f b6 4c 24 28       	movzx  ecx,BYTE PTR [rsp+0x28]
    1737:	41 89 d3             	mov    r11d,edx
    173a:	89 ca                	mov    edx,ecx
    173c:	01 c9                	add    ecx,ecx
    173e:	c0 ea 07             	shr    dl,0x7
    1741:	8d 14 52             	lea    edx,[rdx+rdx*2]
    1744:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    1747:	31 ca                	xor    edx,ecx
    1749:	0f b6 4c 24 10       	movzx  ecx,BYTE PTR [rsp+0x10]
    174e:	31 f1                	xor    ecx,esi
    1750:	0f b6 74 24 1d       	movzx  esi,BYTE PTR [rsp+0x1d]
    1755:	31 d1                	xor    ecx,edx
    1757:	0f b6 c9             	movzx  ecx,cl
    175a:	0f b6 14 0f          	movzx  edx,BYTE PTR [rdi+rcx*1]
    175e:	0f b6 4c 24 2b       	movzx  ecx,BYTE PTR [rsp+0x2b]
    1763:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
    1767:	89 ca                	mov    edx,ecx
    1769:	01 c9                	add    ecx,ecx
    176b:	c0 ea 07             	shr    dl,0x7
    176e:	8d 14 52             	lea    edx,[rdx+rdx*2]
    1771:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    1774:	31 ca                	xor    edx,ecx
    1776:	41 0f b6 4f 04       	movzx  ecx,BYTE PTR [r15+0x4]
    177b:	41 32 47 0c          	xor    al,BYTE PTR [r15+0xc]
    177f:	32 44 24 19          	xor    al,BYTE PTR [rsp+0x19]
    1783:	44 31 f1             	xor    ecx,r14d
    1786:	32 4c 24 0c          	xor    cl,BYTE PTR [rsp+0xc]
    178a:	31 d1                	xor    ecx,edx
    178c:	0f b6 c9             	movzx  ecx,cl
    178f:	0f b6 14 0f          	movzx  edx,BYTE PTR [rdi+rcx*1]
    1793:	43 8d 0c 09          	lea    ecx,[r9+r9*1]
    1797:	88 54 24 0c          	mov    BYTE PTR [rsp+0xc],dl
    179b:	44 89 ca             	mov    edx,r9d
    179e:	44 0f b6 4c 24 2f    	movzx  r9d,BYTE PTR [rsp+0x2f]
    17a4:	c0 ea 07             	shr    dl,0x7
    17a7:	8d 14 52             	lea    edx,[rdx+rdx*2]
    17aa:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    17ad:	31 ca                	xor    edx,ecx
    17af:	41 0f b6 4f 08       	movzx  ecx,BYTE PTR [r15+0x8]
    17b4:	31 f1                	xor    ecx,esi
    17b6:	32 4c 24 1a          	xor    cl,BYTE PTR [rsp+0x1a]
    17ba:	31 d1                	xor    ecx,edx
    17bc:	0f b6 c9             	movzx  ecx,cl
    17bf:	0f b6 14 0f          	movzx  edx,BYTE PTR [rdi+rcx*1]
    17c3:	43 8d 0c 09          	lea    ecx,[r9+r9*1]
    17c7:	88 54 24 1a          	mov    BYTE PTR [rsp+0x1a],dl
    17cb:	44 89 ca             	mov    edx,r9d
    17ce:	c0 ea 07             	shr    dl,0x7
    17d1:	8d 14 52             	lea    edx,[rdx+rdx*2]
    17d4:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    17d7:	31 d1                	xor    ecx,edx
    17d9:	31 c8                	xor    eax,ecx
    17db:	0f b6 c8             	movzx  ecx,al
    17de:	0f b6 14 0f          	movzx  edx,BYTE PTR [rdi+rcx*1]
    17e2:	88 54 24 19          	mov    BYTE PTR [rsp+0x19],dl
    17e6:	0f b6 54 24 29       	movzx  edx,BYTE PTR [rsp+0x29]
    17eb:	41 89 d1             	mov    r9d,edx
    17ee:	01 d2                	add    edx,edx
    17f0:	41 c0 e9 07          	shr    r9b,0x7
    17f4:	44 89 c8             	mov    eax,r9d
    17f7:	44 0f b6 4c 24 2c    	movzx  r9d,BYTE PTR [rsp+0x2c]
    17fd:	8d 04 40             	lea    eax,[rax+rax*2]
    1800:	8d 04 c0             	lea    eax,[rax+rax*8]
    1803:	31 d0                	xor    eax,edx
    1805:	41 0f b6 57 01       	movzx  edx,BYTE PTR [r15+0x1]
    180a:	44 31 e2             	xor    edx,r12d
    180d:	32 54 24 0b          	xor    dl,BYTE PTR [rsp+0xb]
    1811:	31 c2                	xor    edx,eax
    1813:	0f b6 d2             	movzx  edx,dl
    1816:	0f b6 14 17          	movzx  edx,BYTE PTR [rdi+rdx*1]
    181a:	88 54 24 14          	mov    BYTE PTR [rsp+0x14],dl
    181e:	44 89 ca             	mov    edx,r9d
    1821:	c0 ea 07             	shr    dl,0x7
    1824:	89 d0                	mov    eax,edx
    1826:	8d 04 40             	lea    eax,[rax+rax*2]
    1829:	8d 14 c0             	lea    edx,[rax+rax*8]
    182c:	43 8d 04 09          	lea    eax,[r9+r9*1]
    1830:	45 0f b6 ca          	movzx  r9d,r10b
    1834:	31 d0                	xor    eax,edx
    1836:	41 0f b6 57 05       	movzx  edx,BYTE PTR [r15+0x5]
    183b:	44 31 f2             	xor    edx,r14d
    183e:	32 54 24 0a          	xor    dl,BYTE PTR [rsp+0xa]
    1842:	31 c2                	xor    edx,eax
    1844:	0f b6 d2             	movzx  edx,dl
    1847:	0f b6 14 17          	movzx  edx,BYTE PTR [rdi+rdx*1]
    184b:	0f b6 4c 24 2e       	movzx  ecx,BYTE PTR [rsp+0x2e]
    1850:	41 32 77 09          	xor    sil,BYTE PTR [r15+0x9]
    1854:	88 54 24 0b          	mov    BYTE PTR [rsp+0xb],dl
    1858:	8d 04 09             	lea    eax,[rcx+rcx*1]
    185b:	89 ca                	mov    edx,ecx
    185d:	0f b6 4c 24 1e       	movzx  ecx,BYTE PTR [rsp+0x1e]
    1862:	c0 ea 07             	shr    dl,0x7
    1865:	8d 14 52             	lea    edx,[rdx+rdx*2]
    1868:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    186b:	31 d0                	xor    eax,edx
    186d:	0f b6 54 24 18       	movzx  edx,BYTE PTR [rsp+0x18]
    1872:	31 f2                	xor    edx,esi
    1874:	0f b6 74 24 1f       	movzx  esi,BYTE PTR [rsp+0x1f]
    1879:	31 c2                	xor    edx,eax
    187b:	0f b6 d2             	movzx  edx,dl
    187e:	0f b6 14 17          	movzx  edx,BYTE PTR [rdi+rdx*1]
    1882:	89 f0                	mov    eax,esi
    1884:	c0 e8 07             	shr    al,0x7
    1887:	8d 04 40             	lea    eax,[rax+rax*2]
    188a:	88 54 24 0a          	mov    BYTE PTR [rsp+0xa],dl
    188e:	8d 04 c0             	lea    eax,[rax+rax*8]
    1891:	0f b6 d3             	movzx  edx,bl
    1894:	0f b6 5c 24 2a       	movzx  ebx,BYTE PTR [rsp+0x2a]
    1899:	0f b6 14 17          	movzx  edx,BYTE PTR [rdi+rdx*1]
    189d:	88 54 24 18          	mov    BYTE PTR [rsp+0x18],dl
    18a1:	8d 14 36             	lea    edx,[rsi+rsi*1]
    18a4:	31 d0                	xor    eax,edx
    18a6:	41 0f b6 57 02       	movzx  edx,BYTE PTR [r15+0x2]
    18ab:	44 31 e2             	xor    edx,r12d
    18ae:	32 54 24 17          	xor    dl,BYTE PTR [rsp+0x17]
    18b2:	49 83 c7 10          	add    r15,0x10
    18b6:	31 c2                	xor    edx,eax
    18b8:	89 c8                	mov    eax,ecx
    18ba:	c0 e8 07             	shr    al,0x7
    18bd:	0f b6 d2             	movzx  edx,dl
    18c0:	8d 04 40             	lea    eax,[rax+rax*2]
    18c3:	0f b6 34 17          	movzx  esi,BYTE PTR [rdi+rdx*1]
    18c7:	8d 04 c0             	lea    eax,[rax+rax*8]
    18ca:	8d 14 09             	lea    edx,[rcx+rcx*1]
    18cd:	41 0f b6 4f f6       	movzx  ecx,BYTE PTR [r15-0xa]
    18d2:	31 c2                	xor    edx,eax
    18d4:	0f b6 44 24 16       	movzx  eax,BYTE PTR [rsp+0x16]
    18d9:	44 31 f1             	xor    ecx,r14d
    18dc:	31 c8                	xor    eax,ecx
    18de:	31 d0                	xor    eax,edx
    18e0:	41 0f b6 d0          	movzx  edx,r8b
    18e4:	0f b6 c0             	movzx  eax,al
    18e7:	0f b6 0c 07          	movzx  ecx,BYTE PTR [rdi+rax*1]
    18eb:	8d 04 1b             	lea    eax,[rbx+rbx*1]
    18ee:	88 4c 24 1c          	mov    BYTE PTR [rsp+0x1c],cl
    18f2:	42 0f b6 0c 0f       	movzx  ecx,BYTE PTR [rdi+r9*1]
    18f7:	44 0f b6 cd          	movzx  r9d,bpl
    18fb:	88 4c 24 17          	mov    BYTE PTR [rsp+0x17],cl
    18ff:	0f b6 0c 17          	movzx  ecx,BYTE PTR [rdi+rdx*1]
    1903:	89 da                	mov    edx,ebx
    1905:	c0 ea 07             	shr    dl,0x7
    1908:	8d 14 52             	lea    edx,[rdx+rdx*2]
    190b:	8d 14 d2             	lea    edx,[rdx+rdx*8]
    190e:	31 d0                	xor    eax,edx
    1910:	41 0f b6 57 f3       	movzx  edx,BYTE PTR [r15-0xd]
    1915:	88 4c 24 16          	mov    BYTE PTR [rsp+0x16],cl
    1919:	42 0f b6 0c 0f       	movzx  ecx,BYTE PTR [rdi+r9*1]
    191e:	44 31 e2             	xor    edx,r12d
    1921:	32 54 24 15          	xor    dl,BYTE PTR [rsp+0x15]
    1925:	31 c2                	xor    edx,eax
    1927:	0f b6 d2             	movzx  edx,dl
    192a:	0f b6 04 17          	movzx  eax,BYTE PTR [rdi+rdx*1]
    192e:	42 0f b6 14 2f       	movzx  edx,BYTE PTR [rdi+r13*1]
    1933:	88 44 24 1b          	mov    BYTE PTR [rsp+0x1b],al
    1937:	41 0f b6 c3          	movzx  eax,r11b
    193b:	0f b6 04 07          	movzx  eax,BYTE PTR [rdi+rax*1]
    193f:	88 44 24 15          	mov    BYTE PTR [rsp+0x15],al
    1943:	4c 39 7c 24 38       	cmp    QWORD PTR [rsp+0x38],r15
    1948:	0f 85 12 fc ff ff    	jne    1560 <memcmp@plt+0x500>
    194e:	89 c3                	mov    ebx,eax
    1950:	0f b6 44 24 10       	movzx  eax,BYTE PTR [rsp+0x10]
    1955:	32 5c 24 53          	xor    bl,BYTE PTR [rsp+0x53]
    1959:	32 44 24 50          	xor    al,BYTE PTR [rsp+0x50]
    195d:	40 32 74 24 5a       	xor    sil,BYTE PTR [rsp+0x5a]
    1962:	44 0f b6 74 24 1b    	movzx  r14d,BYTE PTR [rsp+0x1b]
    1968:	44 32 74 24 57       	xor    r14b,BYTE PTR [rsp+0x57]
    196d:	88 44 24 10          	mov    BYTE PTR [rsp+0x10],al
    1971:	0f b6 44 24 0b       	movzx  eax,BYTE PTR [rsp+0xb]
    1976:	88 5c 24 0b          	mov    BYTE PTR [rsp+0xb],bl
    197a:	0f b6 5c 24 0a       	movzx  ebx,BYTE PTR [rsp+0xa]
    197f:	41 89 f7             	mov    r15d,esi
    1982:	32 5c 24 55          	xor    bl,BYTE PTR [rsp+0x55]
    1986:	c4 c1 79 6e ef       	vmovd  xmm5,r15d
    198b:	32 44 24 51          	xor    al,BYTE PTR [rsp+0x51]
    198f:	44 0f b6 54 24 0c    	movzx  r10d,BYTE PTR [rsp+0xc]
    1995:	44 0f b6 64 24 1c    	movzx  r12d,BYTE PTR [rsp+0x1c]
    199b:	88 5c 24 0a          	mov    BYTE PTR [rsp+0xa],bl
    199f:	0f b6 5c 24 16       	movzx  ebx,BYTE PTR [rsp+0x16]
    19a4:	32 5c 24 56          	xor    bl,BYTE PTR [rsp+0x56]
    19a8:	44 32 64 24 5e       	xor    r12b,BYTE PTR [rsp+0x5e]
    19ad:	44 0f b6 44 24 14    	movzx  r8d,BYTE PTR [rsp+0x14]
    19b3:	44 88 74 24 14       	mov    BYTE PTR [rsp+0x14],r14b
    19b8:	44 0f b6 4c 24 17    	movzx  r9d,BYTE PTR [rsp+0x17]
    19be:	88 5c 24 0c          	mov    BYTE PTR [rsp+0xc],bl
    19c2:	0f b6 5c 24 5b       	movzx  ebx,BYTE PTR [rsp+0x5b]
    19c7:	44 32 4c 24 52       	xor    r9b,BYTE PTR [rsp+0x52]
    19cc:	44 32 54 24 54       	xor    r10b,BYTE PTR [rsp+0x54]
    19d1:	44 0f b6 6c 24 1a    	movzx  r13d,BYTE PTR [rsp+0x1a]
    19d7:	44 0f b6 5c 24 18    	movzx  r11d,BYTE PTR [rsp+0x18]
    19dd:	31 d3                	xor    ebx,edx
    19df:	44 89 e2             	mov    edx,r12d
    19e2:	44 32 6c 24 58       	xor    r13b,BYTE PTR [rsp+0x58]
    19e7:	c5 f9 6e e2          	vmovd  xmm4,edx
    19eb:	c4 c1 79 6e f9       	vmovd  xmm7,r9d
    19f0:	c4 e3 51 20 eb 01    	vpinsrb xmm5,xmm5,ebx,0x1
    19f6:	44 32 5c 24 59       	xor    r11b,BYTE PTR [rsp+0x59]
    19fb:	c4 c1 79 6e da       	vmovd  xmm3,r10d
    1a00:	ba 0f 00 00 00       	mov    edx,0xf
    1a05:	0f b6 74 24 19       	movzx  esi,BYTE PTR [rsp+0x19]
    1a0a:	44 32 44 24 5d       	xor    r8b,BYTE PTR [rsp+0x5d]
    1a0f:	40 32 74 24 5c       	xor    sil,BYTE PTR [rsp+0x5c]
    1a14:	c4 c1 79 6e cd       	vmovd  xmm1,r13d
    1a19:	32 4c 24 5f          	xor    cl,BYTE PTR [rsp+0x5f]
    1a1d:	c5 f9 6e 44 24 10    	vmovd  xmm0,DWORD PTR [rsp+0x10]
    1a23:	c5 f9 6e 74 24 0c    	vmovd  xmm6,DWORD PTR [rsp+0xc]
    1a29:	c4 e3 41 20 7c 24 0b 	vpinsrb xmm7,xmm7,BYTE PTR [rsp+0xb],0x1
    1a30:	01 
    1a31:	c4 e3 79 20 c0 01    	vpinsrb xmm0,xmm0,eax,0x1
    1a37:	c4 c3 71 20 cb 01    	vpinsrb xmm1,xmm1,r11d,0x1
    1a3d:	c5 f9 61 c7          	vpunpcklwd xmm0,xmm0,xmm7
    1a41:	0f b6 84 24 6f 01 00 	movzx  eax,BYTE PTR [rsp+0x16f]
    1a48:	00 
    1a49:	c4 e3 61 20 5c 24 0a 	vpinsrb xmm3,xmm3,BYTE PTR [rsp+0xa],0x1
    1a50:	01 
    1a51:	c4 e3 49 20 74 24 14 	vpinsrb xmm6,xmm6,BYTE PTR [rsp+0x14],0x1
    1a58:	01 
    1a59:	c5 f1 61 cd          	vpunpcklwd xmm1,xmm1,xmm5
    1a5d:	c5 e1 61 de          	vpunpcklwd xmm3,xmm3,xmm6
    1a61:	c5 f9 6e d6          	vmovd  xmm2,esi
    1a65:	c5 f9 62 c3          	vpunpckldq xmm0,xmm0,xmm3
    1a69:	c4 c3 69 20 d0 01    	vpinsrb xmm2,xmm2,r8d,0x1
    1a6f:	c4 e3 59 20 e1 01    	vpinsrb xmm4,xmm4,ecx,0x1
    1a75:	c5 e9 61 d4          	vpunpcklwd xmm2,xmm2,xmm4
    1a79:	c5 f1 62 ca          	vpunpckldq xmm1,xmm1,xmm2
    1a7d:	c5 f9 6c c1          	vpunpcklqdq xmm0,xmm0,xmm1
    1a81:	c5 f9 7f 84 24 70 01 	vmovdqa XMMWORD PTR [rsp+0x170],xmm0
    1a88:	00 00 
    1a8a:	3c ff                	cmp    al,0xff
    1a8c:	74 28                	je     1ab6 <memcmp@plt+0xa56>
    1a8e:	83 c0 01             	add    eax,0x1
    1a91:	88 84 14 60 01 00 00 	mov    BYTE PTR [rsp+rdx*1+0x160],al
    1a98:	31 c0                	xor    eax,eax
    1a9a:	e9 e6 f8 ff ff       	jmp    1385 <memcmp@plt+0x325>
    1a9f:	48 8d 3d 9b 05 00 00 	lea    rdi,[rip+0x59b]        # 2041 <memcmp@plt+0xfe1>
    1aa6:	41 bc 01 00 00 00    	mov    r12d,0x1
    1aac:	e8 7f f5 ff ff       	call   1030 <puts@plt>
    1ab1:	e9 1f f9 ff ff       	jmp    13d5 <memcmp@plt+0x375>
    1ab6:	0f b6 84 24 6e 01 00 	movzx  eax,BYTE PTR [rsp+0x16e]
    1abd:	00 
    1abe:	c6 84 24 6f 01 00 00 	mov    BYTE PTR [rsp+0x16f],0x0
    1ac5:	00 
    1ac6:	ba 0e 00 00 00       	mov    edx,0xe
    1acb:	3c ff                	cmp    al,0xff
    1acd:	75 bf                	jne    1a8e <memcmp@plt+0xa2e>
    1acf:	0f b6 84 24 6d 01 00 	movzx  eax,BYTE PTR [rsp+0x16d]
    1ad6:	00 
    1ad7:	c6 84 24 6e 01 00 00 	mov    BYTE PTR [rsp+0x16e],0x0
    1ade:	00 
    1adf:	ba 0d 00 00 00       	mov    edx,0xd
    1ae4:	3c ff                	cmp    al,0xff
    1ae6:	75 a6                	jne    1a8e <memcmp@plt+0xa2e>
    1ae8:	0f b6 84 24 6c 01 00 	movzx  eax,BYTE PTR [rsp+0x16c]
    1aef:	00 
    1af0:	c6 84 24 6d 01 00 00 	mov    BYTE PTR [rsp+0x16d],0x0
    1af7:	00 
    1af8:	ba 0c 00 00 00       	mov    edx,0xc
    1afd:	3c ff                	cmp    al,0xff
    1aff:	75 8d                	jne    1a8e <memcmp@plt+0xa2e>
    1b01:	0f b6 84 24 6b 01 00 	movzx  eax,BYTE PTR [rsp+0x16b]
    1b08:	00 
    1b09:	c6 84 24 6c 01 00 00 	mov    BYTE PTR [rsp+0x16c],0x0
    1b10:	00 
    1b11:	ba 0b 00 00 00       	mov    edx,0xb
    1b16:	3c ff                	cmp    al,0xff
    1b18:	0f 85 70 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b1e:	0f b6 84 24 6a 01 00 	movzx  eax,BYTE PTR [rsp+0x16a]
    1b25:	00 
    1b26:	c6 84 24 6b 01 00 00 	mov    BYTE PTR [rsp+0x16b],0x0
    1b2d:	00 
    1b2e:	ba 0a 00 00 00       	mov    edx,0xa
    1b33:	3c ff                	cmp    al,0xff
    1b35:	0f 85 53 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b3b:	0f b6 84 24 69 01 00 	movzx  eax,BYTE PTR [rsp+0x169]
    1b42:	00 
    1b43:	c6 84 24 6a 01 00 00 	mov    BYTE PTR [rsp+0x16a],0x0
    1b4a:	00 
    1b4b:	ba 09 00 00 00       	mov    edx,0x9
    1b50:	3c ff                	cmp    al,0xff
    1b52:	0f 85 36 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b58:	0f b6 84 24 68 01 00 	movzx  eax,BYTE PTR [rsp+0x168]
    1b5f:	00 
    1b60:	c6 84 24 69 01 00 00 	mov    BYTE PTR [rsp+0x169],0x0
    1b67:	00 
    1b68:	ba 08 00 00 00       	mov    edx,0x8
    1b6d:	3c ff                	cmp    al,0xff
    1b6f:	0f 85 19 ff ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b75:	0f b6 84 24 67 01 00 	movzx  eax,BYTE PTR [rsp+0x167]
    1b7c:	00 
    1b7d:	c6 84 24 68 01 00 00 	mov    BYTE PTR [rsp+0x168],0x0
    1b84:	00 
    1b85:	ba 07 00 00 00       	mov    edx,0x7
    1b8a:	3c ff                	cmp    al,0xff
    1b8c:	0f 85 fc fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1b92:	0f b6 84 24 66 01 00 	movzx  eax,BYTE PTR [rsp+0x166]
    1b99:	00 
    1b9a:	c6 84 24 67 01 00 00 	mov    BYTE PTR [rsp+0x167],0x0
    1ba1:	00 
    1ba2:	ba 06 00 00 00       	mov    edx,0x6
    1ba7:	3c ff                	cmp    al,0xff
    1ba9:	0f 85 df fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1baf:	0f b6 84 24 65 01 00 	movzx  eax,BYTE PTR [rsp+0x165]
    1bb6:	00 
    1bb7:	c6 84 24 66 01 00 00 	mov    BYTE PTR [rsp+0x166],0x0
    1bbe:	00 
    1bbf:	ba 05 00 00 00       	mov    edx,0x5
    1bc4:	3c ff                	cmp    al,0xff
    1bc6:	0f 85 c2 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1bcc:	0f b6 84 24 64 01 00 	movzx  eax,BYTE PTR [rsp+0x164]
    1bd3:	00 
    1bd4:	c6 84 24 65 01 00 00 	mov    BYTE PTR [rsp+0x165],0x0
    1bdb:	00 
    1bdc:	ba 04 00 00 00       	mov    edx,0x4
    1be1:	3c ff                	cmp    al,0xff
    1be3:	0f 85 a5 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1be9:	0f b6 84 24 63 01 00 	movzx  eax,BYTE PTR [rsp+0x163]
    1bf0:	00 
    1bf1:	c6 84 24 64 01 00 00 	mov    BYTE PTR [rsp+0x164],0x0
    1bf8:	00 
    1bf9:	ba 03 00 00 00       	mov    edx,0x3
    1bfe:	3c ff                	cmp    al,0xff
    1c00:	0f 85 88 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c06:	0f b6 84 24 62 01 00 	movzx  eax,BYTE PTR [rsp+0x162]
    1c0d:	00 
    1c0e:	c6 84 24 63 01 00 00 	mov    BYTE PTR [rsp+0x163],0x0
    1c15:	00 
    1c16:	ba 02 00 00 00       	mov    edx,0x2
    1c1b:	3c ff                	cmp    al,0xff
    1c1d:	0f 85 6b fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c23:	0f b6 84 24 61 01 00 	movzx  eax,BYTE PTR [rsp+0x161]
    1c2a:	00 
    1c2b:	c6 84 24 62 01 00 00 	mov    BYTE PTR [rsp+0x162],0x0
    1c32:	00 
    1c33:	ba 01 00 00 00       	mov    edx,0x1
    1c38:	3c ff                	cmp    al,0xff
    1c3a:	0f 85 4e fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c40:	0f b6 84 24 60 01 00 	movzx  eax,BYTE PTR [rsp+0x160]
    1c47:	00 
    1c48:	c6 84 24 61 01 00 00 	mov    BYTE PTR [rsp+0x161],0x0
    1c4f:	00 
    1c50:	31 d2                	xor    edx,edx
    1c52:	3c ff                	cmp    al,0xff
    1c54:	0f 85 34 fe ff ff    	jne    1a8e <memcmp@plt+0xa2e>
    1c5a:	c6 84 24 60 01 00 00 	mov    BYTE PTR [rsp+0x160],0x0
    1c61:	00 
    1c62:	31 c0                	xor    eax,eax
    1c64:	e9 1c f7 ff ff       	jmp    1385 <memcmp@plt+0x325>
    1c69:	e8 e2 f3 ff ff       	call   1050 <__stack_chk_fail@plt>
    1c6e:	66 90                	xchg   ax,ax
    1c70:	f3 0f 1e fa          	endbr64
    1c74:	31 ed                	xor    ebp,ebp
    1c76:	49 89 d1             	mov    r9,rdx
    1c79:	5e                   	pop    rsi
    1c7a:	48 89 e2             	mov    rdx,rsp
    1c7d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1c81:	50                   	push   rax
    1c82:	54                   	push   rsp
    1c83:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1de0 <memcmp@plt+0xd80>
    1c8a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1d70 <memcmp@plt+0xd10>
    1c91:	48 8d 3d d8 f3 ff ff 	lea    rdi,[rip+0xfffffffffffff3d8]        # 1070 <memcmp@plt+0x10>
    1c98:	ff 15 42 23 00 00    	call   QWORD PTR [rip+0x2342]        # 3fe0 <memcmp@plt+0x2f80>
    1c9e:	f4                   	hlt
    1c9f:	90                   	nop
    1ca0:	48 8d 3d a1 23 00 00 	lea    rdi,[rip+0x23a1]        # 4048 <memcmp@plt+0x2fe8>
    1ca7:	48 8d 05 9a 23 00 00 	lea    rax,[rip+0x239a]        # 4048 <memcmp@plt+0x2fe8>
    1cae:	48 39 f8             	cmp    rax,rdi
    1cb1:	74 15                	je     1cc8 <memcmp@plt+0xc68>
    1cb3:	48 8b 05 16 23 00 00 	mov    rax,QWORD PTR [rip+0x2316]        # 3fd0 <memcmp@plt+0x2f70>
    1cba:	48 85 c0             	test   rax,rax
    1cbd:	74 09                	je     1cc8 <memcmp@plt+0xc68>
    1cbf:	ff e0                	jmp    rax
    1cc1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1cc8:	c3                   	ret
    1cc9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1cd0:	48 8d 3d 71 23 00 00 	lea    rdi,[rip+0x2371]        # 4048 <memcmp@plt+0x2fe8>
    1cd7:	48 8d 35 6a 23 00 00 	lea    rsi,[rip+0x236a]        # 4048 <memcmp@plt+0x2fe8>
    1cde:	48 29 fe             	sub    rsi,rdi
    1ce1:	48 89 f0             	mov    rax,rsi
    1ce4:	48 c1 ee 3f          	shr    rsi,0x3f
    1ce8:	48 c1 f8 03          	sar    rax,0x3
    1cec:	48 01 c6             	add    rsi,rax
    1cef:	48 d1 fe             	sar    rsi,1
    1cf2:	74 14                	je     1d08 <memcmp@plt+0xca8>
    1cf4:	48 8b 05 f5 22 00 00 	mov    rax,QWORD PTR [rip+0x22f5]        # 3ff0 <memcmp@plt+0x2f90>
    1cfb:	48 85 c0             	test   rax,rax
    1cfe:	74 08                	je     1d08 <memcmp@plt+0xca8>
    1d00:	ff e0                	jmp    rax
    1d02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1d08:	c3                   	ret
    1d09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1d10:	f3 0f 1e fa          	endbr64
    1d14:	80 3d 2d 23 00 00 00 	cmp    BYTE PTR [rip+0x232d],0x0        # 4048 <memcmp@plt+0x2fe8>
    1d1b:	75 33                	jne    1d50 <memcmp@plt+0xcf0>
    1d1d:	55                   	push   rbp
    1d1e:	48 83 3d d2 22 00 00 	cmp    QWORD PTR [rip+0x22d2],0x0        # 3ff8 <memcmp@plt+0x2f98>
    1d25:	00 
    1d26:	48 89 e5             	mov    rbp,rsp
    1d29:	74 0d                	je     1d38 <memcmp@plt+0xcd8>
    1d2b:	48 8b 3d 0e 23 00 00 	mov    rdi,QWORD PTR [rip+0x230e]        # 4040 <memcmp@plt+0x2fe0>
    1d32:	ff 15 c0 22 00 00    	call   QWORD PTR [rip+0x22c0]        # 3ff8 <memcmp@plt+0x2f98>
    1d38:	e8 63 ff ff ff       	call   1ca0 <memcmp@plt+0xc40>
    1d3d:	c6 05 04 23 00 00 01 	mov    BYTE PTR [rip+0x2304],0x1        # 4048 <memcmp@plt+0x2fe8>
    1d44:	5d                   	pop    rbp
    1d45:	c3                   	ret
    1d46:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1d4d:	00 00 00 
    1d50:	c3                   	ret
    1d51:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d58:	00 00 00 00 
    1d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1d60:	f3 0f 1e fa          	endbr64
    1d64:	e9 67 ff ff ff       	jmp    1cd0 <memcmp@plt+0xc70>
    1d69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1d70:	f3 0f 1e fa          	endbr64
    1d74:	41 57                	push   r15
    1d76:	4c 8d 3d 63 20 00 00 	lea    r15,[rip+0x2063]        # 3de0 <memcmp@plt+0x2d80>
    1d7d:	41 56                	push   r14
    1d7f:	49 89 d6             	mov    r14,rdx
    1d82:	41 55                	push   r13
    1d84:	49 89 f5             	mov    r13,rsi
    1d87:	41 54                	push   r12
    1d89:	41 89 fc             	mov    r12d,edi
    1d8c:	55                   	push   rbp
    1d8d:	48 8d 2d 54 20 00 00 	lea    rbp,[rip+0x2054]        # 3de8 <memcmp@plt+0x2d88>
    1d94:	53                   	push   rbx
    1d95:	4c 29 fd             	sub    rbp,r15
    1d98:	48 83 ec 08          	sub    rsp,0x8
    1d9c:	e8 5f f2 ff ff       	call   1000 <puts@plt-0x30>
    1da1:	48 c1 fd 03          	sar    rbp,0x3
    1da5:	74 1f                	je     1dc6 <memcmp@plt+0xd66>
    1da7:	31 db                	xor    ebx,ebx
    1da9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1db0:	4c 89 f2             	mov    rdx,r14
    1db3:	4c 89 ee             	mov    rsi,r13
    1db6:	44 89 e7             	mov    edi,r12d
    1db9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    1dbd:	48 83 c3 01          	add    rbx,0x1
    1dc1:	48 39 dd             	cmp    rbp,rbx
    1dc4:	75 ea                	jne    1db0 <memcmp@plt+0xd50>
    1dc6:	48 83 c4 08          	add    rsp,0x8
    1dca:	5b                   	pop    rbx
    1dcb:	5d                   	pop    rbp
    1dcc:	41 5c                	pop    r12
    1dce:	41 5d                	pop    r13
    1dd0:	41 5e                	pop    r14
    1dd2:	41 5f                	pop    r15
    1dd4:	c3                   	ret
    1dd5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1ddc:	00 00 00 00 
    1de0:	f3 0f 1e fa          	endbr64
    1de4:	c3                   	ret

Disassembly of section .fini:

0000000000001de8 <.fini>:
    1de8:	f3 0f 1e fa          	endbr64
    1dec:	48 83 ec 08          	sub    rsp,0x8
    1df0:	48 83 c4 08          	add    rsp,0x8
    1df4:	c3                   	ret
