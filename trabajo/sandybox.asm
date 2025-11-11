
sandybox:     file format elf64-x86-64


Disassembly of section .init:

0000000000000938 <.init>:
 938:	48 83 ec 08          	sub    rsp,0x8
 93c:	48 8b 05 a5 16 20 00 	mov    rax,QWORD PTR [rip+0x2016a5]        # 201fe8 <__cxa_finalize@plt+0x201558>
 943:	48 85 c0             	test   rax,rax
 946:	74 02                	je     94a <__errno_location@plt-0x16>
 948:	ff d0                	call   rax
 94a:	48 83 c4 08          	add    rsp,0x8
 94e:	c3                   	ret

Disassembly of section .plt:

0000000000000950 <__errno_location@plt-0x10>:
 950:	ff 35 da 15 20 00    	push   QWORD PTR [rip+0x2015da]        # 201f30 <__cxa_finalize@plt+0x2014a0>
 956:	ff 25 dc 15 20 00    	jmp    QWORD PTR [rip+0x2015dc]        # 201f38 <__cxa_finalize@plt+0x2014a8>
 95c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000960 <__errno_location@plt>:
 960:	ff 25 da 15 20 00    	jmp    QWORD PTR [rip+0x2015da]        # 201f40 <__cxa_finalize@plt+0x2014b0>
 966:	68 00 00 00 00       	push   0x0
 96b:	e9 e0 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000970 <_exit@plt>:
 970:	ff 25 d2 15 20 00    	jmp    QWORD PTR [rip+0x2015d2]        # 201f48 <__cxa_finalize@plt+0x2014b8>
 976:	68 01 00 00 00       	push   0x1
 97b:	e9 d0 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000980 <getpid@plt>:
 980:	ff 25 ca 15 20 00    	jmp    QWORD PTR [rip+0x2015ca]        # 201f50 <__cxa_finalize@plt+0x2014c0>
 986:	68 02 00 00 00       	push   0x2
 98b:	e9 c0 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000990 <__stack_chk_fail@plt>:
 990:	ff 25 c2 15 20 00    	jmp    QWORD PTR [rip+0x2015c2]        # 201f58 <__cxa_finalize@plt+0x2014c8>
 996:	68 03 00 00 00       	push   0x3
 99b:	e9 b0 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009a0 <mmap@plt>:
 9a0:	ff 25 ba 15 20 00    	jmp    QWORD PTR [rip+0x2015ba]        # 201f60 <__cxa_finalize@plt+0x2014d0>
 9a6:	68 04 00 00 00       	push   0x4
 9ab:	e9 a0 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009b0 <alarm@plt>:
 9b0:	ff 25 b2 15 20 00    	jmp    QWORD PTR [rip+0x2015b2]        # 201f68 <__cxa_finalize@plt+0x2014d8>
 9b6:	68 05 00 00 00       	push   0x5
 9bb:	e9 90 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009c0 <read@plt>:
 9c0:	ff 25 aa 15 20 00    	jmp    QWORD PTR [rip+0x2015aa]        # 201f70 <__cxa_finalize@plt+0x2014e0>
 9c6:	68 06 00 00 00       	push   0x6
 9cb:	e9 80 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009d0 <syscall@plt>:
 9d0:	ff 25 a2 15 20 00    	jmp    QWORD PTR [rip+0x2015a2]        # 201f78 <__cxa_finalize@plt+0x2014e8>
 9d6:	68 07 00 00 00       	push   0x7
 9db:	e9 70 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009e0 <prctl@plt>:
 9e0:	ff 25 9a 15 20 00    	jmp    QWORD PTR [rip+0x20159a]        # 201f80 <__cxa_finalize@plt+0x2014f0>
 9e6:	68 08 00 00 00       	push   0x8
 9eb:	e9 60 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

00000000000009f0 <kill@plt>:
 9f0:	ff 25 92 15 20 00    	jmp    QWORD PTR [rip+0x201592]        # 201f88 <__cxa_finalize@plt+0x2014f8>
 9f6:	68 09 00 00 00       	push   0x9
 9fb:	e9 50 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a00 <ptrace@plt>:
 a00:	ff 25 8a 15 20 00    	jmp    QWORD PTR [rip+0x20158a]        # 201f90 <__cxa_finalize@plt+0x201500>
 a06:	68 0a 00 00 00       	push   0xa
 a0b:	e9 40 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a10 <setrlimit@plt>:
 a10:	ff 25 82 15 20 00    	jmp    QWORD PTR [rip+0x201582]        # 201f98 <__cxa_finalize@plt+0x201508>
 a16:	68 0b 00 00 00       	push   0xb
 a1b:	e9 30 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a20 <waitpid@plt>:
 a20:	ff 25 7a 15 20 00    	jmp    QWORD PTR [rip+0x20157a]        # 201fa0 <__cxa_finalize@plt+0x201510>
 a26:	68 0c 00 00 00       	push   0xc
 a2b:	e9 20 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a30 <access@plt>:
 a30:	ff 25 72 15 20 00    	jmp    QWORD PTR [rip+0x201572]        # 201fa8 <__cxa_finalize@plt+0x201518>
 a36:	68 0d 00 00 00       	push   0xd
 a3b:	e9 10 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a40 <__dprintf_chk@plt>:
 a40:	ff 25 6a 15 20 00    	jmp    QWORD PTR [rip+0x20156a]        # 201fb0 <__cxa_finalize@plt+0x201520>
 a46:	68 0e 00 00 00       	push   0xe
 a4b:	e9 00 ff ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a50 <getppid@plt>:
 a50:	ff 25 62 15 20 00    	jmp    QWORD PTR [rip+0x201562]        # 201fb8 <__cxa_finalize@plt+0x201528>
 a56:	68 0f 00 00 00       	push   0xf
 a5b:	e9 f0 fe ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a60 <strerror@plt>:
 a60:	ff 25 5a 15 20 00    	jmp    QWORD PTR [rip+0x20155a]        # 201fc0 <__cxa_finalize@plt+0x201530>
 a66:	68 10 00 00 00       	push   0x10
 a6b:	e9 e0 fe ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a70 <fork@plt>:
 a70:	ff 25 52 15 20 00    	jmp    QWORD PTR [rip+0x201552]        # 201fc8 <__cxa_finalize@plt+0x201538>
 a76:	68 11 00 00 00       	push   0x11
 a7b:	e9 d0 fe ff ff       	jmp    950 <__errno_location@plt-0x10>

0000000000000a80 <strstr@plt>:
 a80:	ff 25 4a 15 20 00    	jmp    QWORD PTR [rip+0x20154a]        # 201fd0 <__cxa_finalize@plt+0x201540>
 a86:	68 12 00 00 00       	push   0x12
 a8b:	e9 c0 fe ff ff       	jmp    950 <__errno_location@plt-0x10>

Disassembly of section .plt.got:

0000000000000a90 <__cxa_finalize@plt>:
 a90:	ff 25 62 15 20 00    	jmp    QWORD PTR [rip+0x201562]        # 201ff8 <__cxa_finalize@plt+0x201568>
 a96:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000aa0 <.text>:
     aa0:	48 83 ec 08          	sub    rsp,0x8
     aa4:	31 c0                	xor    eax,eax
     aa6:	e8 85 08 00 00       	call   1330 <__cxa_finalize@plt+0x8a0>
     aab:	bf 0a 00 00 00       	mov    edi,0xa
     ab0:	e8 fb fe ff ff       	call   9b0 <alarm@plt>
     ab5:	48 8d 15 a5 0a 00 00 	lea    rdx,[rip+0xaa5]        # 1561 <__cxa_finalize@plt+0xad1>
     abc:	be 01 00 00 00       	mov    esi,0x1
     ac1:	bf 01 00 00 00       	mov    edi,0x1
     ac6:	31 c0                	xor    eax,eax
     ac8:	e8 73 ff ff ff       	call   a40 <__dprintf_chk@plt>
     acd:	48 8d 3d 94 0a 00 00 	lea    rdi,[rip+0xa94]        # 1568 <__cxa_finalize@plt+0xad8>
     ad4:	be 04 00 00 00       	mov    esi,0x4
     ad9:	e8 52 ff ff ff       	call   a30 <access@plt>
     ade:	85 c0                	test   eax,eax
     ae0:	75 77                	jne    b59 <__cxa_finalize@plt+0xc9>
     ae2:	e8 89 ff ff ff       	call   a70 <fork@plt>
     ae7:	85 c0                	test   eax,eax
     ae9:	0f 88 bf 00 00 00    	js     bae <__cxa_finalize@plt+0x11e>
     aef:	0f 85 92 00 00 00    	jne    b87 <__cxa_finalize@plt+0xf7>
     af5:	be 09 00 00 00       	mov    esi,0x9
     afa:	bf 01 00 00 00       	mov    edi,0x1
     aff:	31 c0                	xor    eax,eax
     b01:	e8 da fe ff ff       	call   9e0 <prctl@plt>
     b06:	e8 45 ff ff ff       	call   a50 <getppid@plt>
     b0b:	83 e8 01             	sub    eax,0x1
     b0e:	0f 84 c3 00 00 00    	je     bd7 <__cxa_finalize@plt+0x147>
     b14:	31 c9                	xor    ecx,ecx
     b16:	31 d2                	xor    edx,edx
     b18:	31 f6                	xor    esi,esi
     b1a:	31 ff                	xor    edi,edi
     b1c:	31 c0                	xor    eax,eax
     b1e:	e8 dd fe ff ff       	call   a00 <ptrace@plt>
     b23:	48 85 c0             	test   rax,rax
     b26:	74 67                	je     b8f <__cxa_finalize@plt+0xff>
     b28:	e8 33 fe ff ff       	call   960 <__errno_location@plt>
     b2d:	8b 38                	mov    edi,DWORD PTR [rax]
     b2f:	e8 2c ff ff ff       	call   a60 <strerror@plt>
     b34:	48 8d 15 6a 0a 00 00 	lea    rdx,[rip+0xa6a]        # 15a5 <__cxa_finalize@plt+0xb15>
     b3b:	48 89 c1             	mov    rcx,rax
     b3e:	bf 01 00 00 00       	mov    edi,0x1
     b43:	be 01 00 00 00       	mov    esi,0x1
     b48:	31 c0                	xor    eax,eax
     b4a:	e8 f1 fe ff ff       	call   a40 <__dprintf_chk@plt>
     b4f:	bf 01 00 00 00       	mov    edi,0x1
     b54:	e8 17 fe ff ff       	call   970 <_exit@plt>
     b59:	e8 02 fe ff ff       	call   960 <__errno_location@plt>
     b5e:	8b 38                	mov    edi,DWORD PTR [rax]
     b60:	e8 fb fe ff ff       	call   a60 <strerror@plt>
     b65:	48 8d 15 03 0a 00 00 	lea    rdx,[rip+0xa03]        # 156f <__cxa_finalize@plt+0xadf>
     b6c:	48 89 c1             	mov    rcx,rax
     b6f:	be 01 00 00 00       	mov    esi,0x1
     b74:	bf 01 00 00 00       	mov    edi,0x1
     b79:	31 c0                	xor    eax,eax
     b7b:	e8 c0 fe ff ff       	call   a40 <__dprintf_chk@plt>
     b80:	b8 01 00 00 00       	mov    eax,0x1
     b85:	5a                   	pop    rdx
     b86:	c3                   	ret
     b87:	59                   	pop    rcx
     b88:	89 c7                	mov    edi,eax
     b8a:	e9 e1 03 00 00       	jmp    f70 <__cxa_finalize@plt+0x4e0>
     b8f:	e8 ec fd ff ff       	call   980 <getpid@plt>
     b94:	be 13 00 00 00       	mov    esi,0x13
     b99:	89 c7                	mov    edi,eax
     b9b:	e8 50 fe ff ff       	call   9f0 <kill@plt>
     ba0:	31 c0                	xor    eax,eax
     ba2:	e8 69 01 00 00       	call   d10 <__cxa_finalize@plt+0x280>
     ba7:	31 ff                	xor    edi,edi
     ba9:	e8 c2 fd ff ff       	call   970 <_exit@plt>
     bae:	e8 ad fd ff ff       	call   960 <__errno_location@plt>
     bb3:	8b 38                	mov    edi,DWORD PTR [rax]
     bb5:	e8 a6 fe ff ff       	call   a60 <strerror@plt>
     bba:	48 8d 15 c3 09 00 00 	lea    rdx,[rip+0x9c3]        # 1584 <__cxa_finalize@plt+0xaf4>
     bc1:	48 89 c1             	mov    rcx,rax
     bc4:	be 01 00 00 00       	mov    esi,0x1
     bc9:	bf 01 00 00 00       	mov    edi,0x1
     bce:	31 c0                	xor    eax,eax
     bd0:	e8 6b fe ff ff       	call   a40 <__dprintf_chk@plt>
     bd5:	eb a9                	jmp    b80 <__cxa_finalize@plt+0xf0>
     bd7:	48 8d 15 b4 09 00 00 	lea    rdx,[rip+0x9b4]        # 1592 <__cxa_finalize@plt+0xb02>
     bde:	bf 01 00 00 00       	mov    edi,0x1
     be3:	be 01 00 00 00       	mov    esi,0x1
     be8:	31 c0                	xor    eax,eax
     bea:	e8 51 fe ff ff       	call   a40 <__dprintf_chk@plt>
     bef:	bf 01 00 00 00       	mov    edi,0x1
     bf4:	e8 77 fd ff ff       	call   970 <_exit@plt>
     bf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     c00:	31 ed                	xor    ebp,ebp
     c02:	49 89 d1             	mov    r9,rdx
     c05:	5e                   	pop    rsi
     c06:	48 89 e2             	mov    rdx,rsp
     c09:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     c0d:	50                   	push   rax
     c0e:	54                   	push   rsp
     c0f:	4c 8d 05 5a 08 00 00 	lea    r8,[rip+0x85a]        # 1470 <__cxa_finalize@plt+0x9e0>
     c16:	48 8d 0d e3 07 00 00 	lea    rcx,[rip+0x7e3]        # 1400 <__cxa_finalize@plt+0x970>
     c1d:	48 8d 3d 7c fe ff ff 	lea    rdi,[rip+0xfffffffffffffe7c]        # aa0 <__cxa_finalize@plt+0x10>
     c24:	ff 15 b6 13 20 00    	call   QWORD PTR [rip+0x2013b6]        # 201fe0 <__cxa_finalize@plt+0x201550>
     c2a:	f4                   	hlt
     c2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
     c30:	48 8d 3d d9 13 20 00 	lea    rdi,[rip+0x2013d9]        # 202010 <__cxa_finalize@plt+0x201580>
     c37:	55                   	push   rbp
     c38:	48 8d 05 d1 13 20 00 	lea    rax,[rip+0x2013d1]        # 202010 <__cxa_finalize@plt+0x201580>
     c3f:	48 39 f8             	cmp    rax,rdi
     c42:	48 89 e5             	mov    rbp,rsp
     c45:	74 19                	je     c60 <__cxa_finalize@plt+0x1d0>
     c47:	48 8b 05 8a 13 20 00 	mov    rax,QWORD PTR [rip+0x20138a]        # 201fd8 <__cxa_finalize@plt+0x201548>
     c4e:	48 85 c0             	test   rax,rax
     c51:	74 0d                	je     c60 <__cxa_finalize@plt+0x1d0>
     c53:	5d                   	pop    rbp
     c54:	ff e0                	jmp    rax
     c56:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     c5d:	00 00 00 
     c60:	5d                   	pop    rbp
     c61:	c3                   	ret
     c62:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     c66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     c6d:	00 00 00 
     c70:	48 8d 3d 99 13 20 00 	lea    rdi,[rip+0x201399]        # 202010 <__cxa_finalize@plt+0x201580>
     c77:	48 8d 35 92 13 20 00 	lea    rsi,[rip+0x201392]        # 202010 <__cxa_finalize@plt+0x201580>
     c7e:	55                   	push   rbp
     c7f:	48 29 fe             	sub    rsi,rdi
     c82:	48 89 e5             	mov    rbp,rsp
     c85:	48 c1 fe 03          	sar    rsi,0x3
     c89:	48 89 f0             	mov    rax,rsi
     c8c:	48 c1 e8 3f          	shr    rax,0x3f
     c90:	48 01 c6             	add    rsi,rax
     c93:	48 d1 fe             	sar    rsi,1
     c96:	74 18                	je     cb0 <__cxa_finalize@plt+0x220>
     c98:	48 8b 05 51 13 20 00 	mov    rax,QWORD PTR [rip+0x201351]        # 201ff0 <__cxa_finalize@plt+0x201560>
     c9f:	48 85 c0             	test   rax,rax
     ca2:	74 0c                	je     cb0 <__cxa_finalize@plt+0x220>
     ca4:	5d                   	pop    rbp
     ca5:	ff e0                	jmp    rax
     ca7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     cae:	00 00 
     cb0:	5d                   	pop    rbp
     cb1:	c3                   	ret
     cb2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     cb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     cbd:	00 00 00 
     cc0:	80 3d 49 13 20 00 00 	cmp    BYTE PTR [rip+0x201349],0x0        # 202010 <__cxa_finalize@plt+0x201580>
     cc7:	75 2f                	jne    cf8 <__cxa_finalize@plt+0x268>
     cc9:	48 83 3d 27 13 20 00 	cmp    QWORD PTR [rip+0x201327],0x0        # 201ff8 <__cxa_finalize@plt+0x201568>
     cd0:	00 
     cd1:	55                   	push   rbp
     cd2:	48 89 e5             	mov    rbp,rsp
     cd5:	74 0c                	je     ce3 <__cxa_finalize@plt+0x253>
     cd7:	48 8b 3d 2a 13 20 00 	mov    rdi,QWORD PTR [rip+0x20132a]        # 202008 <__cxa_finalize@plt+0x201578>
     cde:	e8 ad fd ff ff       	call   a90 <__cxa_finalize@plt>
     ce3:	e8 48 ff ff ff       	call   c30 <__cxa_finalize@plt+0x1a0>
     ce8:	c6 05 21 13 20 00 01 	mov    BYTE PTR [rip+0x201321],0x1        # 202010 <__cxa_finalize@plt+0x201580>
     cef:	5d                   	pop    rbp
     cf0:	c3                   	ret
     cf1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     cf8:	f3 c3                	repz ret
     cfa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     d00:	55                   	push   rbp
     d01:	48 89 e5             	mov    rbp,rsp
     d04:	5d                   	pop    rbp
     d05:	e9 66 ff ff ff       	jmp    c70 <__cxa_finalize@plt+0x1e0>
     d0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     d10:	41 54                	push   r12
     d12:	55                   	push   rbp
     d13:	be 14 00 00 00       	mov    esi,0x14
     d18:	53                   	push   rbx
     d19:	bf 25 00 00 00       	mov    edi,0x25
     d1e:	31 c0                	xor    eax,eax
     d20:	e8 ab fc ff ff       	call   9d0 <syscall@plt>
     d25:	45 31 c9             	xor    r9d,r9d
     d28:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
     d2e:	b9 22 00 00 00       	mov    ecx,0x22
     d33:	ba 07 00 00 00       	mov    edx,0x7
     d38:	be 0a 00 00 00       	mov    esi,0xa
     d3d:	31 ff                	xor    edi,edi
     d3f:	e8 5c fc ff ff       	call   9a0 <mmap@plt>
     d44:	49 89 c4             	mov    r12,rax
     d47:	48 8d 15 36 07 00 00 	lea    rdx,[rip+0x736]        # 1484 <__cxa_finalize@plt+0x9f4>
     d4e:	be 01 00 00 00       	mov    esi,0x1
     d53:	49 8d 6c 24 0a       	lea    rbp,[r12+0xa]
     d58:	bf 01 00 00 00       	mov    edi,0x1
     d5d:	31 c0                	xor    eax,eax
     d5f:	4c 89 e3             	mov    rbx,r12
     d62:	e8 d9 fc ff ff       	call   a40 <__dprintf_chk@plt>
     d67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     d6e:	00 00 
     d70:	31 ff                	xor    edi,edi
     d72:	ba 01 00 00 00       	mov    edx,0x1
     d77:	48 89 de             	mov    rsi,rbx
     d7a:	e8 41 fc ff ff       	call   9c0 <read@plt>
     d7f:	48 83 f8 01          	cmp    rax,0x1
     d83:	75 13                	jne    d98 <__cxa_finalize@plt+0x308>
     d85:	48 83 c3 01          	add    rbx,0x1
     d89:	48 39 eb             	cmp    rbx,rbp
     d8c:	75 e2                	jne    d70 <__cxa_finalize@plt+0x2e0>
     d8e:	41 ff d4             	call   r12
     d91:	5b                   	pop    rbx
     d92:	31 c0                	xor    eax,eax
     d94:	5d                   	pop    rbp
     d95:	41 5c                	pop    r12
     d97:	c3                   	ret
     d98:	31 ff                	xor    edi,edi
     d9a:	e8 d1 fb ff ff       	call   970 <_exit@plt>
     d9f:	90                   	nop
     da0:	41 54                	push   r12
     da2:	55                   	push   rbp
     da3:	53                   	push   rbx
     da4:	48 83 ec 20          	sub    rsp,0x20
     da8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     daf:	00 00 
     db1:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
     db6:	31 c0                	xor    eax,eax
     db8:	48 8b 46 78          	mov    rax,QWORD PTR [rsi+0x78]
     dbc:	48 83 f8 08          	cmp    rax,0x8
     dc0:	0f 84 9a 01 00 00    	je     f60 <__cxa_finalize@plt+0x4d0>
     dc6:	48 89 f3             	mov    rbx,rsi
     dc9:	0f 86 81 00 00 00    	jbe    e50 <__cxa_finalize@plt+0x3c0>
     dcf:	48 83 f8 25          	cmp    rax,0x25
     dd3:	74 3b                	je     e10 <__cxa_finalize@plt+0x380>
     dd5:	0f 87 6d 01 00 00    	ja     f48 <__cxa_finalize@plt+0x4b8>
     ddb:	48 83 f8 0b          	cmp    rax,0xb
     ddf:	77 61                	ja     e42 <__cxa_finalize@plt+0x3b2>
     de1:	31 c0                	xor    eax,eax
     de3:	48 81 7e 68 00 10 00 	cmp    QWORD PTR [rsi+0x68],0x1000
     dea:	00 
     deb:	0f 97 c0             	seta   al
     dee:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
     df3:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
     dfa:	00 00 
     dfc:	0f 85 65 01 00 00    	jne    f67 <__cxa_finalize@plt+0x4d7>
     e02:	48 83 c4 20          	add    rsp,0x20
     e06:	5b                   	pop    rbx
     e07:	5d                   	pop    rbp
     e08:	41 5c                	pop    r12
     e0a:	c3                   	ret
     e0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
     e10:	48 8b 46 70          	mov    rax,QWORD PTR [rsi+0x70]
     e14:	48 83 e8 01          	sub    rax,0x1
     e18:	48 83 f8 13          	cmp    rax,0x13
     e1c:	0f 97 c0             	seta   al
     e1f:	0f b6 c0             	movzx  eax,al
     e22:	eb ca                	jmp    dee <__cxa_finalize@plt+0x35e>
     e24:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     e28:	0f 82 32 01 00 00    	jb     f60 <__cxa_finalize@plt+0x4d0>
     e2e:	48 83 f8 03          	cmp    rax,0x3
     e32:	0f 84 28 01 00 00    	je     f60 <__cxa_finalize@plt+0x4d0>
     e38:	48 83 f8 05          	cmp    rax,0x5
     e3c:	0f 84 1e 01 00 00    	je     f60 <__cxa_finalize@plt+0x4d0>
     e42:	b8 01 00 00 00       	mov    eax,0x1
     e47:	eb a5                	jmp    dee <__cxa_finalize@plt+0x35e>
     e49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     e50:	48 83 f8 02          	cmp    rax,0x2
     e54:	75 d2                	jne    e28 <__cxa_finalize@plt+0x398>
     e56:	48 83 7e 68 00       	cmp    QWORD PTR [rsi+0x68],0x0
     e5b:	75 e5                	jne    e42 <__cxa_finalize@plt+0x3b2>
     e5d:	66 0f ef c0          	pxor   xmm0,xmm0
     e61:	48 8b 56 70          	mov    rdx,QWORD PTR [rsi+0x70]
     e65:	31 c9                	xor    ecx,ecx
     e67:	89 fe                	mov    esi,edi
     e69:	89 fd                	mov    ebp,edi
     e6b:	31 c0                	xor    eax,eax
     e6d:	bf 02 00 00 00       	mov    edi,0x2
     e72:	c6 44 24 10 00       	mov    BYTE PTR [rsp+0x10],0x0
     e77:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
     e7b:	e8 80 fb ff ff       	call   a00 <ptrace@plt>
     e80:	31 c9                	xor    ecx,ecx
     e82:	49 89 c4             	mov    r12,rax
     e85:	89 ee                	mov    esi,ebp
     e87:	31 c0                	xor    eax,eax
     e89:	bf 02 00 00 00       	mov    edi,0x2
     e8e:	48 8b 53 70          	mov    rdx,QWORD PTR [rbx+0x70]
     e92:	48 83 c2 08          	add    rdx,0x8
     e96:	e8 65 fb ff ff       	call   a00 <ptrace@plt>
     e9b:	49 83 fc ff          	cmp    r12,0xffffffffffffffff
     e9f:	74 a1                	je     e42 <__cxa_finalize@plt+0x3b2>
     ea1:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
     ea5:	74 9b                	je     e42 <__cxa_finalize@plt+0x3b2>
     ea7:	48 89 e3             	mov    rbx,rsp
     eaa:	4c 89 24 24          	mov    QWORD PTR [rsp],r12
     eae:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
     eb3:	48 89 da             	mov    rdx,rbx
     eb6:	8b 0a                	mov    ecx,DWORD PTR [rdx]
     eb8:	48 83 c2 04          	add    rdx,0x4
     ebc:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
     ec2:	f7 d1                	not    ecx
     ec4:	21 c8                	and    eax,ecx
     ec6:	25 80 80 80 80       	and    eax,0x80808080
     ecb:	74 e9                	je     eb6 <__cxa_finalize@plt+0x426>
     ecd:	89 c1                	mov    ecx,eax
     ecf:	c1 e9 10             	shr    ecx,0x10
     ed2:	a9 80 80 00 00       	test   eax,0x8080
     ed7:	0f 44 c1             	cmove  eax,ecx
     eda:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
     ede:	89 c6                	mov    esi,eax
     ee0:	48 0f 44 d1          	cmove  rdx,rcx
     ee4:	40 00 c6             	add    sil,al
     ee7:	48 83 da 03          	sbb    rdx,0x3
     eeb:	48 29 da             	sub    rdx,rbx
     eee:	48 83 fa 0f          	cmp    rdx,0xf
     ef2:	0f 87 4a ff ff ff    	ja     e42 <__cxa_finalize@plt+0x3b2>
     ef8:	48 8d 35 6b 06 00 00 	lea    rsi,[rip+0x66b]        # 156a <__cxa_finalize@plt+0xada>
     eff:	48 89 df             	mov    rdi,rbx
     f02:	e8 79 fb ff ff       	call   a80 <strstr@plt>
     f07:	48 85 c0             	test   rax,rax
     f0a:	0f 85 32 ff ff ff    	jne    e42 <__cxa_finalize@plt+0x3b2>
     f10:	48 8d 35 70 05 00 00 	lea    rsi,[rip+0x570]        # 1487 <__cxa_finalize@plt+0x9f7>
     f17:	48 89 df             	mov    rdi,rbx
     f1a:	e8 61 fb ff ff       	call   a80 <strstr@plt>
     f1f:	48 85 c0             	test   rax,rax
     f22:	0f 85 1a ff ff ff    	jne    e42 <__cxa_finalize@plt+0x3b2>
     f28:	48 8d 35 5d 05 00 00 	lea    rsi,[rip+0x55d]        # 148c <__cxa_finalize@plt+0x9fc>
     f2f:	48 89 df             	mov    rdi,rbx
     f32:	e8 49 fb ff ff       	call   a80 <strstr@plt>
     f37:	48 85 c0             	test   rax,rax
     f3a:	0f 95 c0             	setne  al
     f3d:	0f b6 c0             	movzx  eax,al
     f40:	e9 a9 fe ff ff       	jmp    dee <__cxa_finalize@plt+0x35e>
     f45:	0f 1f 00             	nop    DWORD PTR [rax]
     f48:	48 83 f8 3c          	cmp    rax,0x3c
     f4c:	74 12                	je     f60 <__cxa_finalize@plt+0x4d0>
     f4e:	48 3d e7 00 00 00    	cmp    rax,0xe7
     f54:	74 0a                	je     f60 <__cxa_finalize@plt+0x4d0>
     f56:	48 83 f8 27          	cmp    rax,0x27
     f5a:	0f 85 e2 fe ff ff    	jne    e42 <__cxa_finalize@plt+0x3b2>
     f60:	31 c0                	xor    eax,eax
     f62:	e9 87 fe ff ff       	jmp    dee <__cxa_finalize@plt+0x35e>
     f67:	e8 24 fa ff ff       	call   990 <__stack_chk_fail@plt>
     f6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     f70:	41 57                	push   r15
     f72:	41 56                	push   r14
     f74:	ba 00 00 00 40       	mov    edx,0x40000000
     f79:	41 55                	push   r13
     f7b:	41 54                	push   r12
     f7d:	55                   	push   rbp
     f7e:	53                   	push   rbx
     f7f:	89 fb                	mov    ebx,edi
     f81:	48 81 ec f8 00 00 00 	sub    rsp,0xf8
     f88:	48 8d 6c 24 0c       	lea    rbp,[rsp+0xc]
     f8d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     f94:	00 00 
     f96:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
     f9d:	00 
     f9e:	31 c0                	xor    eax,eax
     fa0:	48 89 ee             	mov    rsi,rbp
     fa3:	e8 78 fa ff ff       	call   a20 <waitpid@plt>
     fa8:	85 c0                	test   eax,eax
     faa:	78 08                	js     fb4 <__cxa_finalize@plt+0x524>
     fac:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
     fb0:	3c 7f                	cmp    al,0x7f
     fb2:	74 5c                	je     1010 <__cxa_finalize@plt+0x580>
     fb4:	e8 a7 f9 ff ff       	call   960 <__errno_location@plt>
     fb9:	8b 38                	mov    edi,DWORD PTR [rax]
     fbb:	e8 a0 fa ff ff       	call   a60 <strerror@plt>
     fc0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
     fc4:	48 8d 15 c5 04 00 00 	lea    rdx,[rip+0x4c5]        # 1490 <__cxa_finalize@plt+0xa00>
     fcb:	49 89 c0             	mov    r8,rax
     fce:	be 01 00 00 00       	mov    esi,0x1
     fd3:	bf 01 00 00 00       	mov    edi,0x1
     fd8:	31 c0                	xor    eax,eax
     fda:	e8 61 fa ff ff       	call   a40 <__dprintf_chk@plt>
     fdf:	b8 01 00 00 00       	mov    eax,0x1
     fe4:	48 8b 9c 24 e8 00 00 	mov    rbx,QWORD PTR [rsp+0xe8]
     feb:	00 
     fec:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
     ff3:	00 00 
     ff5:	0f 85 2c 03 00 00    	jne    1327 <__cxa_finalize@plt+0x897>
     ffb:	48 81 c4 f8 00 00 00 	add    rsp,0xf8
    1002:	5b                   	pop    rbx
    1003:	5d                   	pop    rbp
    1004:	41 5c                	pop    r12
    1006:	41 5d                	pop    r13
    1008:	41 5e                	pop    r14
    100a:	41 5f                	pop    r15
    100c:	c3                   	ret
    100d:	0f 1f 00             	nop    DWORD PTR [rax]
    1010:	0f b6 c4             	movzx  eax,ah
    1013:	83 f8 13             	cmp    eax,0x13
    1016:	75 9c                	jne    fb4 <__cxa_finalize@plt+0x524>
    1018:	bf 1e 00 00 00       	mov    edi,0x1e
    101d:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    1022:	4c 8d 35 a7 05 00 00 	lea    r14,[rip+0x5a7]        # 15d0 <__cxa_finalize@plt+0xb40>
    1029:	4c 8d 2d 87 05 00 00 	lea    r13,[rip+0x587]        # 15b7 <__cxa_finalize@plt+0xb27>
    1030:	45 31 ff             	xor    r15d,r15d
    1033:	e8 78 f9 ff ff       	call   9b0 <alarm@plt>
    1038:	b9 00 00 10 00       	mov    ecx,0x100000
    103d:	31 d2                	xor    edx,edx
    103f:	89 de                	mov    esi,ebx
    1041:	bf 00 42 00 00       	mov    edi,0x4200
    1046:	31 c0                	xor    eax,eax
    1048:	e8 b3 f9 ff ff       	call   a00 <ptrace@plt>
    104d:	0f 1f 00             	nop    DWORD PTR [rax]
    1050:	31 d2                	xor    edx,edx
    1052:	31 c0                	xor    eax,eax
    1054:	44 89 f9             	mov    ecx,r15d
    1057:	89 de                	mov    esi,ebx
    1059:	bf 18 00 00 00       	mov    edi,0x18
    105e:	e8 9d f9 ff ff       	call   a00 <ptrace@plt>
    1063:	48 85 c0             	test   rax,rax
    1066:	0f 85 f4 01 00 00    	jne    1260 <__cxa_finalize@plt+0x7d0>
    106c:	ba 00 00 00 40       	mov    edx,0x40000000
    1071:	48 89 ee             	mov    rsi,rbp
    1074:	89 df                	mov    edi,ebx
    1076:	e8 a5 f9 ff ff       	call   a20 <waitpid@plt>
    107b:	85 c0                	test   eax,eax
    107d:	0f 88 8d 01 00 00    	js     1210 <__cxa_finalize@plt+0x780>
    1083:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    1087:	80 f9 7f             	cmp    cl,0x7f
    108a:	0f 85 18 02 00 00    	jne    12a8 <__cxa_finalize@plt+0x818>
    1090:	0f b6 c5             	movzx  eax,ch
    1093:	83 f8 05             	cmp    eax,0x5
    1096:	41 89 c7             	mov    r15d,eax
    1099:	74 25                	je     10c0 <__cxa_finalize@plt+0x630>
    109b:	48 8d 15 47 04 00 00 	lea    rdx,[rip+0x447]        # 14e9 <__cxa_finalize@plt+0xa59>
    10a2:	89 c1                	mov    ecx,eax
    10a4:	be 01 00 00 00       	mov    esi,0x1
    10a9:	bf 02 00 00 00       	mov    edi,0x2
    10ae:	31 c0                	xor    eax,eax
    10b0:	e8 8b f9 ff ff       	call   a40 <__dprintf_chk@plt>
    10b5:	eb 99                	jmp    1050 <__cxa_finalize@plt+0x5c0>
    10b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    10be:	00 00 
    10c0:	31 d2                	xor    edx,edx
    10c2:	31 c0                	xor    eax,eax
    10c4:	4c 89 e1             	mov    rcx,r12
    10c7:	89 de                	mov    esi,ebx
    10c9:	bf 0c 00 00 00       	mov    edi,0xc
    10ce:	e8 2d f9 ff ff       	call   a00 <ptrace@plt>
    10d3:	48 85 c0             	test   rax,rax
    10d6:	0f 85 eb 01 00 00    	jne    12c7 <__cxa_finalize@plt+0x837>
    10dc:	4c 89 e6             	mov    rsi,r12
    10df:	89 df                	mov    edi,ebx
    10e1:	e8 ba fc ff ff       	call   da0 <__cxa_finalize@plt+0x310>
    10e6:	85 c0                	test   eax,eax
    10e8:	0f 85 82 00 00 00    	jne    1170 <__cxa_finalize@plt+0x6e0>
    10ee:	ff 74 24 48          	push   QWORD PTR [rsp+0x48]
    10f2:	ff 74 24 78          	push   QWORD PTR [rsp+0x78]
    10f6:	4c 89 f2             	mov    rdx,r14
    10f9:	4c 8b 8c 24 88 00 00 	mov    r9,QWORD PTR [rsp+0x88]
    1100:	00 
    1101:	4c 8b 84 24 90 00 00 	mov    r8,QWORD PTR [rsp+0x90]
    1108:	00 
    1109:	be 01 00 00 00       	mov    esi,0x1
    110e:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
    1115:	00 
    1116:	bf 02 00 00 00       	mov    edi,0x2
    111b:	31 c0                	xor    eax,eax
    111d:	e8 1e f9 ff ff       	call   a40 <__dprintf_chk@plt>
    1122:	58                   	pop    rax
    1123:	5a                   	pop    rdx
    1124:	31 c9                	xor    ecx,ecx
    1126:	31 d2                	xor    edx,edx
    1128:	31 c0                	xor    eax,eax
    112a:	89 de                	mov    esi,ebx
    112c:	bf 18 00 00 00       	mov    edi,0x18
    1131:	e8 ca f8 ff ff       	call   a00 <ptrace@plt>
    1136:	48 85 c0             	test   rax,rax
    1139:	0f 85 a0 01 00 00    	jne    12df <__cxa_finalize@plt+0x84f>
    113f:	ba 00 00 00 40       	mov    edx,0x40000000
    1144:	48 89 ee             	mov    rsi,rbp
    1147:	89 df                	mov    edi,ebx
    1149:	e8 d2 f8 ff ff       	call   a20 <waitpid@plt>
    114e:	85 c0                	test   eax,eax
    1150:	0f 88 ba 00 00 00    	js     1210 <__cxa_finalize@plt+0x780>
    1156:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    115a:	80 f9 7f             	cmp    cl,0x7f
    115d:	0f 85 a0 01 00 00    	jne    1303 <__cxa_finalize@plt+0x873>
    1163:	45 31 ff             	xor    r15d,r15d
    1166:	e9 e5 fe ff ff       	jmp    1050 <__cxa_finalize@plt+0x5c0>
    116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1170:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
    1177:	00 
    1178:	48 8d 15 8e 03 00 00 	lea    rdx,[rip+0x38e]        # 150d <__cxa_finalize@plt+0xa7d>
    117f:	be 01 00 00 00       	mov    esi,0x1
    1184:	bf 02 00 00 00       	mov    edi,0x2
    1189:	31 c0                	xor    eax,eax
    118b:	e8 b0 f8 ff ff       	call   a40 <__dprintf_chk@plt>
    1190:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
    1197:	00 
    1198:	31 d2                	xor    edx,edx
    119a:	4c 89 e1             	mov    rcx,r12
    119d:	89 de                	mov    esi,ebx
    119f:	bf 0d 00 00 00       	mov    edi,0xd
    11a4:	48 c7 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],0x1
    11ab:	00 01 00 00 00 
    11b0:	48 c7 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],0x1
    11b7:	00 01 00 00 00 
    11bc:	48 c7 44 24 70 11 00 	mov    QWORD PTR [rsp+0x70],0x11
    11c3:	00 00 
    11c5:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    11ca:	31 c0                	xor    eax,eax
    11cc:	e8 2f f8 ff ff       	call   a00 <ptrace@plt>
    11d1:	48 85 c0             	test   rax,rax
    11d4:	0f 85 32 01 00 00    	jne    130c <__cxa_finalize@plt+0x87c>
    11da:	45 31 ff             	xor    r15d,r15d
    11dd:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
    11e4:	00 
    11e5:	4b 8b 4c 3d 00       	mov    rcx,QWORD PTR [r13+r15*1+0x0]
    11ea:	31 c0                	xor    eax,eax
    11ec:	89 de                	mov    esi,ebx
    11ee:	bf 05 00 00 00       	mov    edi,0x5
    11f3:	4c 01 fa             	add    rdx,r15
    11f6:	49 83 c7 08          	add    r15,0x8
    11fa:	e8 01 f8 ff ff       	call   a00 <ptrace@plt>
    11ff:	49 83 ff 18          	cmp    r15,0x18
    1203:	75 d8                	jne    11dd <__cxa_finalize@plt+0x74d>
    1205:	e9 1a ff ff ff       	jmp    1124 <__cxa_finalize@plt+0x694>
    120a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1210:	e8 4b f7 ff ff       	call   960 <__errno_location@plt>
    1215:	8b 38                	mov    edi,DWORD PTR [rax]
    1217:	83 ff 0a             	cmp    edi,0xa
    121a:	74 34                	je     1250 <__cxa_finalize@plt+0x7c0>
    121c:	e8 3f f8 ff ff       	call   a60 <strerror@plt>
    1221:	48 8d 15 9a 02 00 00 	lea    rdx,[rip+0x29a]        # 14c2 <__cxa_finalize@plt+0xa32>
    1228:	48 89 c1             	mov    rcx,rax
    122b:	be 01 00 00 00       	mov    esi,0x1
    1230:	bf 01 00 00 00       	mov    edi,0x1
    1235:	31 c0                	xor    eax,eax
    1237:	e8 04 f8 ff ff       	call   a40 <__dprintf_chk@plt>
    123c:	b8 01 00 00 00       	mov    eax,0x1
    1241:	e9 9e fd ff ff       	jmp    fe4 <__cxa_finalize@plt+0x554>
    1246:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    124d:	00 00 00 
    1250:	31 c0                	xor    eax,eax
    1252:	e9 8d fd ff ff       	jmp    fe4 <__cxa_finalize@plt+0x554>
    1257:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    125e:	00 00 
    1260:	e8 fb f6 ff ff       	call   960 <__errno_location@plt>
    1265:	8b 38                	mov    edi,DWORD PTR [rax]
    1267:	83 ff 0a             	cmp    edi,0xa
    126a:	74 e4                	je     1250 <__cxa_finalize@plt+0x7c0>
    126c:	e8 ef f7 ff ff       	call   a60 <strerror@plt>
    1271:	48 8d 15 36 02 00 00 	lea    rdx,[rip+0x236]        # 14ae <__cxa_finalize@plt+0xa1e>
    1278:	48 89 c1             	mov    rcx,rax
    127b:	be 01 00 00 00       	mov    esi,0x1
    1280:	bf 01 00 00 00       	mov    edi,0x1
    1285:	31 c0                	xor    eax,eax
    1287:	e8 b4 f7 ff ff       	call   a40 <__dprintf_chk@plt>
    128c:	be 09 00 00 00       	mov    esi,0x9
    1291:	89 df                	mov    edi,ebx
    1293:	e8 58 f7 ff ff       	call   9f0 <kill@plt>
    1298:	b8 01 00 00 00       	mov    eax,0x1
    129d:	e9 42 fd ff ff       	jmp    fe4 <__cxa_finalize@plt+0x554>
    12a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12a8:	48 8d 15 24 02 00 00 	lea    rdx,[rip+0x224]        # 14d3 <__cxa_finalize@plt+0xa43>
    12af:	be 01 00 00 00       	mov    esi,0x1
    12b4:	bf 01 00 00 00       	mov    edi,0x1
    12b9:	31 c0                	xor    eax,eax
    12bb:	e8 80 f7 ff ff       	call   a40 <__dprintf_chk@plt>
    12c0:	31 c0                	xor    eax,eax
    12c2:	e9 1d fd ff ff       	jmp    fe4 <__cxa_finalize@plt+0x554>
    12c7:	e8 94 f6 ff ff       	call   960 <__errno_location@plt>
    12cc:	8b 38                	mov    edi,DWORD PTR [rax]
    12ce:	e8 8d f7 ff ff       	call   a60 <strerror@plt>
    12d3:	48 8d 15 20 02 00 00 	lea    rdx,[rip+0x220]        # 14fa <__cxa_finalize@plt+0xa6a>
    12da:	48 89 c1             	mov    rcx,rax
    12dd:	eb 9c                	jmp    127b <__cxa_finalize@plt+0x7eb>
    12df:	e8 7c f6 ff ff       	call   960 <__errno_location@plt>
    12e4:	8b 38                	mov    edi,DWORD PTR [rax]
    12e6:	83 ff 0a             	cmp    edi,0xa
    12e9:	0f 84 61 ff ff ff    	je     1250 <__cxa_finalize@plt+0x7c0>
    12ef:	e8 6c f7 ff ff       	call   a60 <strerror@plt>
    12f4:	48 8d 15 3b 02 00 00 	lea    rdx,[rip+0x23b]        # 1536 <__cxa_finalize@plt+0xaa6>
    12fb:	48 89 c1             	mov    rcx,rax
    12fe:	e9 78 ff ff ff       	jmp    127b <__cxa_finalize@plt+0x7eb>
    1303:	48 8d 15 40 02 00 00 	lea    rdx,[rip+0x240]        # 154a <__cxa_finalize@plt+0xaba>
    130a:	eb a3                	jmp    12af <__cxa_finalize@plt+0x81f>
    130c:	e8 4f f6 ff ff       	call   960 <__errno_location@plt>
    1311:	8b 38                	mov    edi,DWORD PTR [rax]
    1313:	e8 48 f7 ff ff       	call   a60 <strerror@plt>
    1318:	48 8d 15 04 02 00 00 	lea    rdx,[rip+0x204]        # 1523 <__cxa_finalize@plt+0xa93>
    131f:	48 89 c1             	mov    rcx,rax
    1322:	e9 54 ff ff ff       	jmp    127b <__cxa_finalize@plt+0x7eb>
    1327:	e8 64 f6 ff ff       	call   990 <__stack_chk_fail@plt>
    132c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1330:	53                   	push   rbx
    1331:	bf 09 00 00 00       	mov    edi,0x9
    1336:	48 83 ec 20          	sub    rsp,0x20
    133a:	48 89 e3             	mov    rbx,rsp
    133d:	48 c7 04 24 00 00 40 	mov    QWORD PTR [rsp],0x6400000
    1344:	06 
    1345:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x6400000
    134c:	40 06 
    134e:	48 89 de             	mov    rsi,rbx
    1351:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1358:	00 00 
    135a:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    135f:	31 c0                	xor    eax,eax
    1361:	e8 aa f6 ff ff       	call   a10 <setrlimit@plt>
    1366:	31 ff                	xor    edi,edi
    1368:	48 89 de             	mov    rsi,rbx
    136b:	48 c7 04 24 0a 00 00 	mov    QWORD PTR [rsp],0xa
    1372:	00 
    1373:	48 c7 44 24 08 0a 00 	mov    QWORD PTR [rsp+0x8],0xa
    137a:	00 00 
    137c:	e8 8f f6 ff ff       	call   a10 <setrlimit@plt>
    1381:	48 89 de             	mov    rsi,rbx
    1384:	bf 01 00 00 00       	mov    edi,0x1
    1389:	48 c7 04 24 e8 03 00 	mov    QWORD PTR [rsp],0x3e8
    1390:	00 
    1391:	48 c7 44 24 08 e8 03 	mov    QWORD PTR [rsp+0x8],0x3e8
    1398:	00 00 
    139a:	e8 71 f6 ff ff       	call   a10 <setrlimit@plt>
    139f:	48 89 de             	mov    rsi,rbx
    13a2:	bf 07 00 00 00       	mov    edi,0x7
    13a7:	48 c7 04 24 64 00 00 	mov    QWORD PTR [rsp],0x64
    13ae:	00 
    13af:	48 c7 44 24 08 64 00 	mov    QWORD PTR [rsp+0x8],0x64
    13b6:	00 00 
    13b8:	e8 53 f6 ff ff       	call   a10 <setrlimit@plt>
    13bd:	48 89 de             	mov    rsi,rbx
    13c0:	bf 06 00 00 00       	mov    edi,0x6
    13c5:	48 c7 04 24 28 00 00 	mov    QWORD PTR [rsp],0x28
    13cc:	00 
    13cd:	48 c7 44 24 08 28 00 	mov    QWORD PTR [rsp+0x8],0x28
    13d4:	00 00 
    13d6:	e8 35 f6 ff ff       	call   a10 <setrlimit@plt>
    13db:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    13e0:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    13e7:	00 00 
    13e9:	75 06                	jne    13f1 <__cxa_finalize@plt+0x961>
    13eb:	48 83 c4 20          	add    rsp,0x20
    13ef:	5b                   	pop    rbx
    13f0:	c3                   	ret
    13f1:	e8 9a f5 ff ff       	call   990 <__stack_chk_fail@plt>
    13f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    13fd:	00 00 00 
    1400:	41 57                	push   r15
    1402:	41 56                	push   r14
    1404:	49 89 d7             	mov    r15,rdx
    1407:	41 55                	push   r13
    1409:	41 54                	push   r12
    140b:	4c 8d 25 16 09 20 00 	lea    r12,[rip+0x200916]        # 201d28 <__cxa_finalize@plt+0x201298>
    1412:	55                   	push   rbp
    1413:	48 8d 2d 16 09 20 00 	lea    rbp,[rip+0x200916]        # 201d30 <__cxa_finalize@plt+0x2012a0>
    141a:	53                   	push   rbx
    141b:	41 89 fd             	mov    r13d,edi
    141e:	49 89 f6             	mov    r14,rsi
    1421:	4c 29 e5             	sub    rbp,r12
    1424:	48 83 ec 08          	sub    rsp,0x8
    1428:	48 c1 fd 03          	sar    rbp,0x3
    142c:	e8 07 f5 ff ff       	call   938 <__errno_location@plt-0x28>
    1431:	48 85 ed             	test   rbp,rbp
    1434:	74 20                	je     1456 <__cxa_finalize@plt+0x9c6>
    1436:	31 db                	xor    ebx,ebx
    1438:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    143f:	00 
    1440:	4c 89 fa             	mov    rdx,r15
    1443:	4c 89 f6             	mov    rsi,r14
    1446:	44 89 ef             	mov    edi,r13d
    1449:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    144d:	48 83 c3 01          	add    rbx,0x1
    1451:	48 39 dd             	cmp    rbp,rbx
    1454:	75 ea                	jne    1440 <__cxa_finalize@plt+0x9b0>
    1456:	48 83 c4 08          	add    rsp,0x8
    145a:	5b                   	pop    rbx
    145b:	5d                   	pop    rbp
    145c:	41 5c                	pop    r12
    145e:	41 5d                	pop    r13
    1460:	41 5e                	pop    r14
    1462:	41 5f                	pop    r15
    1464:	c3                   	ret
    1465:	90                   	nop
    1466:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    146d:	00 00 00 
    1470:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000001474 <.fini>:
    1474:	48 83 ec 08          	sub    rsp,0x8
    1478:	48 83 c4 08          	add    rsp,0x8
    147c:	c3                   	ret
