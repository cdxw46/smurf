
horse:     file format elf64-x86-64


Disassembly of section .init:

00000000004006e8 <_init>:
  4006e8:	48 83 ec 08          	sub    rsp,0x8
  4006ec:	48 8b 05 05 19 20 00 	mov    rax,QWORD PTR [rip+0x201905]        # 601ff8 <__gmon_start__>
  4006f3:	48 85 c0             	test   rax,rax
  4006f6:	74 02                	je     4006fa <_init+0x12>
  4006f8:	ff d0                	call   rax
  4006fa:	48 83 c4 08          	add    rsp,0x8
  4006fe:	c3                   	ret

Disassembly of section .plt:

0000000000400700 <.plt>:
  400700:	ff 35 82 18 20 00    	push   QWORD PTR [rip+0x201882]        # 601f88 <_GLOBAL_OFFSET_TABLE_+0x8>
  400706:	ff 25 84 18 20 00    	jmp    QWORD PTR [rip+0x201884]        # 601f90 <_GLOBAL_OFFSET_TABLE_+0x10>
  40070c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400710 <free@plt>:
  400710:	ff 25 82 18 20 00    	jmp    QWORD PTR [rip+0x201882]        # 601f98 <free@GLIBC_2.2.5>
  400716:	68 00 00 00 00       	push   0x0
  40071b:	e9 e0 ff ff ff       	jmp    400700 <.plt>

0000000000400720 <seccomp_init@plt>:
  400720:	ff 25 7a 18 20 00    	jmp    QWORD PTR [rip+0x20187a]        # 601fa0 <seccomp_init>
  400726:	68 01 00 00 00       	push   0x1
  40072b:	e9 d0 ff ff ff       	jmp    400700 <.plt>

0000000000400730 <seccomp_rule_add@plt>:
  400730:	ff 25 72 18 20 00    	jmp    QWORD PTR [rip+0x201872]        # 601fa8 <seccomp_rule_add>
  400736:	68 02 00 00 00       	push   0x2
  40073b:	e9 c0 ff ff ff       	jmp    400700 <.plt>

0000000000400740 <write@plt>:
  400740:	ff 25 6a 18 20 00    	jmp    QWORD PTR [rip+0x20186a]        # 601fb0 <write@GLIBC_2.2.5>
  400746:	68 03 00 00 00       	push   0x3
  40074b:	e9 b0 ff ff ff       	jmp    400700 <.plt>

0000000000400750 <seccomp_load@plt>:
  400750:	ff 25 62 18 20 00    	jmp    QWORD PTR [rip+0x201862]        # 601fb8 <seccomp_load>
  400756:	68 04 00 00 00       	push   0x4
  40075b:	e9 a0 ff ff ff       	jmp    400700 <.plt>

0000000000400760 <strlen@plt>:
  400760:	ff 25 5a 18 20 00    	jmp    QWORD PTR [rip+0x20185a]        # 601fc0 <strlen@GLIBC_2.2.5>
  400766:	68 05 00 00 00       	push   0x5
  40076b:	e9 90 ff ff ff       	jmp    400700 <.plt>

0000000000400770 <seccomp_release@plt>:
  400770:	ff 25 52 18 20 00    	jmp    QWORD PTR [rip+0x201852]        # 601fc8 <seccomp_release>
  400776:	68 06 00 00 00       	push   0x6
  40077b:	e9 80 ff ff ff       	jmp    400700 <.plt>

0000000000400780 <strcspn@plt>:
  400780:	ff 25 4a 18 20 00    	jmp    QWORD PTR [rip+0x20184a]        # 601fd0 <strcspn@GLIBC_2.2.5>
  400786:	68 07 00 00 00       	push   0x7
  40078b:	e9 70 ff ff ff       	jmp    400700 <.plt>

0000000000400790 <read@plt>:
  400790:	ff 25 42 18 20 00    	jmp    QWORD PTR [rip+0x201842]        # 601fd8 <read@GLIBC_2.2.5>
  400796:	68 08 00 00 00       	push   0x8
  40079b:	e9 60 ff ff ff       	jmp    400700 <.plt>

00000000004007a0 <asprintf@plt>:
  4007a0:	ff 25 3a 18 20 00    	jmp    QWORD PTR [rip+0x20183a]        # 601fe0 <asprintf@GLIBC_2.2.5>
  4007a6:	68 09 00 00 00       	push   0x9
  4007ab:	e9 50 ff ff ff       	jmp    400700 <.plt>

00000000004007b0 <error@plt>:
  4007b0:	ff 25 32 18 20 00    	jmp    QWORD PTR [rip+0x201832]        # 601fe8 <error@GLIBC_2.2.5>
  4007b6:	68 0a 00 00 00       	push   0xa
  4007bb:	e9 40 ff ff ff       	jmp    400700 <.plt>

Disassembly of section .text:

00000000004007c0 <_start>:
  4007c0:	31 ed                	xor    ebp,ebp
  4007c2:	49 89 d1             	mov    r9,rdx
  4007c5:	5e                   	pop    rsi
  4007c6:	48 89 e2             	mov    rdx,rsp
  4007c9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4007cd:	50                   	push   rax
  4007ce:	54                   	push   rsp
  4007cf:	49 c7 c0 10 0c 40 00 	mov    r8,0x400c10
  4007d6:	48 c7 c1 a0 0b 40 00 	mov    rcx,0x400ba0
  4007dd:	48 c7 c7 5d 0b 40 00 	mov    rdi,0x400b5d
  4007e4:	ff 15 06 18 20 00    	call   QWORD PTR [rip+0x201806]        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4007ea:	f4                   	hlt
  4007eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004007f0 <_dl_relocate_static_pie>:
  4007f0:	f3 c3                	repz ret
  4007f2:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4007f9:	00 00 00 
  4007fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400800 <deregister_tm_clones>:
  400800:	55                   	push   rbp
  400801:	b8 20 20 60 00       	mov    eax,0x602020
  400806:	48 3d 20 20 60 00    	cmp    rax,0x602020
  40080c:	48 89 e5             	mov    rbp,rsp
  40080f:	74 17                	je     400828 <deregister_tm_clones+0x28>
  400811:	b8 00 00 00 00       	mov    eax,0x0
  400816:	48 85 c0             	test   rax,rax
  400819:	74 0d                	je     400828 <deregister_tm_clones+0x28>
  40081b:	5d                   	pop    rbp
  40081c:	bf 20 20 60 00       	mov    edi,0x602020
  400821:	ff e0                	jmp    rax
  400823:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400828:	5d                   	pop    rbp
  400829:	c3                   	ret
  40082a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400830 <register_tm_clones>:
  400830:	be 20 20 60 00       	mov    esi,0x602020
  400835:	55                   	push   rbp
  400836:	48 81 ee 20 20 60 00 	sub    rsi,0x602020
  40083d:	48 89 e5             	mov    rbp,rsp
  400840:	48 c1 fe 03          	sar    rsi,0x3
  400844:	48 89 f0             	mov    rax,rsi
  400847:	48 c1 e8 3f          	shr    rax,0x3f
  40084b:	48 01 c6             	add    rsi,rax
  40084e:	48 d1 fe             	sar    rsi,1
  400851:	74 15                	je     400868 <register_tm_clones+0x38>
  400853:	b8 00 00 00 00       	mov    eax,0x0
  400858:	48 85 c0             	test   rax,rax
  40085b:	74 0b                	je     400868 <register_tm_clones+0x38>
  40085d:	5d                   	pop    rbp
  40085e:	bf 20 20 60 00       	mov    edi,0x602020
  400863:	ff e0                	jmp    rax
  400865:	0f 1f 00             	nop    DWORD PTR [rax]
  400868:	5d                   	pop    rbp
  400869:	c3                   	ret
  40086a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400870 <__do_global_dtors_aux>:
  400870:	80 3d a9 17 20 00 00 	cmp    BYTE PTR [rip+0x2017a9],0x0        # 602020 <__TMC_END__>
  400877:	75 17                	jne    400890 <__do_global_dtors_aux+0x20>
  400879:	55                   	push   rbp
  40087a:	48 89 e5             	mov    rbp,rsp
  40087d:	e8 7e ff ff ff       	call   400800 <deregister_tm_clones>
  400882:	c6 05 97 17 20 00 01 	mov    BYTE PTR [rip+0x201797],0x1        # 602020 <__TMC_END__>
  400889:	5d                   	pop    rbp
  40088a:	c3                   	ret
  40088b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400890:	f3 c3                	repz ret
  400892:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400896:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40089d:	00 00 00 

00000000004008a0 <frame_dummy>:
  4008a0:	55                   	push   rbp
  4008a1:	48 89 e5             	mov    rbp,rsp
  4008a4:	5d                   	pop    rbp
  4008a5:	eb 89                	jmp    400830 <register_tm_clones>

00000000004008a7 <setup>:
  4008a7:	55                   	push   rbp
  4008a8:	48 89 e5             	mov    rbp,rsp
  4008ab:	48 83 ec 60          	sub    rsp,0x60
  4008af:	bf 00 00 00 00       	mov    edi,0x0
  4008b4:	e8 67 fe ff ff       	call   400720 <seccomp_init@plt>
  4008b9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4008bd:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4008c4:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  4008c9:	0f 84 6c 01 00 00    	je     400a3b <setup+0x194>
  4008cf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4008d3:	b9 00 00 00 00       	mov    ecx,0x0
  4008d8:	ba 02 00 00 00       	mov    edx,0x2
  4008dd:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  4008e2:	48 89 c7             	mov    rdi,rax
  4008e5:	b8 00 00 00 00       	mov    eax,0x0
  4008ea:	e8 41 fe ff ff       	call   400730 <seccomp_rule_add@plt>
  4008ef:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  4008f2:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
  4008f9:	00 
  4008fa:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
  400901:	00 
  400902:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
  400909:	00 
  40090a:	c7 45 a4 04 00 00 00 	mov    DWORD PTR [rbp-0x5c],0x4
  400911:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400915:	48 83 ec 08          	sub    rsp,0x8
  400919:	ff 75 b0             	push   QWORD PTR [rbp-0x50]
  40091c:	ff 75 a8             	push   QWORD PTR [rbp-0x58]
  40091f:	ff 75 a0             	push   QWORD PTR [rbp-0x60]
  400922:	b9 01 00 00 00       	mov    ecx,0x1
  400927:	ba 00 00 00 00       	mov    edx,0x0
  40092c:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  400931:	48 89 c7             	mov    rdi,rax
  400934:	b8 00 00 00 00       	mov    eax,0x0
  400939:	e8 f2 fd ff ff       	call   400730 <seccomp_rule_add@plt>
  40093e:	48 83 c4 20          	add    rsp,0x20
  400942:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  400945:	48 c7 45 c0 00 00 00 	mov    QWORD PTR [rbp-0x40],0x0
  40094c:	00 
  40094d:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
  400954:	00 
  400955:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  40095c:	00 
  40095d:	c7 45 c4 04 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x4
  400964:	48 c7 45 c8 01 00 00 	mov    QWORD PTR [rbp-0x38],0x1
  40096b:	00 
  40096c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400970:	48 83 ec 08          	sub    rsp,0x8
  400974:	ff 75 d0             	push   QWORD PTR [rbp-0x30]
  400977:	ff 75 c8             	push   QWORD PTR [rbp-0x38]
  40097a:	ff 75 c0             	push   QWORD PTR [rbp-0x40]
  40097d:	b9 01 00 00 00       	mov    ecx,0x1
  400982:	ba 01 00 00 00       	mov    edx,0x1
  400987:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  40098c:	48 89 c7             	mov    rdi,rax
  40098f:	b8 00 00 00 00       	mov    eax,0x0
  400994:	e8 97 fd ff ff       	call   400730 <seccomp_rule_add@plt>
  400999:	48 83 c4 20          	add    rsp,0x20
  40099d:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  4009a0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009a4:	b9 00 00 00 00       	mov    ecx,0x0
  4009a9:	ba 09 00 00 00       	mov    edx,0x9
  4009ae:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  4009b3:	48 89 c7             	mov    rdi,rax
  4009b6:	b8 00 00 00 00       	mov    eax,0x0
  4009bb:	e8 70 fd ff ff       	call   400730 <seccomp_rule_add@plt>
  4009c0:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  4009c3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009c7:	b9 00 00 00 00       	mov    ecx,0x0
  4009cc:	ba d9 00 00 00       	mov    edx,0xd9
  4009d1:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  4009d6:	48 89 c7             	mov    rdi,rax
  4009d9:	b8 00 00 00 00       	mov    eax,0x0
  4009de:	e8 4d fd ff ff       	call   400730 <seccomp_rule_add@plt>
  4009e3:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  4009e6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009ea:	b9 00 00 00 00       	mov    ecx,0x0
  4009ef:	ba 3c 00 00 00       	mov    edx,0x3c
  4009f4:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  4009f9:	48 89 c7             	mov    rdi,rax
  4009fc:	b8 00 00 00 00       	mov    eax,0x0
  400a01:	e8 2a fd ff ff       	call   400730 <seccomp_rule_add@plt>
  400a06:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  400a09:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a0d:	b9 00 00 00 00       	mov    ecx,0x0
  400a12:	ba e7 00 00 00       	mov    edx,0xe7
  400a17:	be 00 00 ff 7f       	mov    esi,0x7fff0000
  400a1c:	48 89 c7             	mov    rdi,rax
  400a1f:	b8 00 00 00 00       	mov    eax,0x0
  400a24:	e8 07 fd ff ff       	call   400730 <seccomp_rule_add@plt>
  400a29:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  400a2c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a30:	48 89 c7             	mov    rdi,rax
  400a33:	e8 18 fd ff ff       	call   400750 <seccomp_load@plt>
  400a38:	09 45 fc             	or     DWORD PTR [rbp-0x4],eax
  400a3b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a3f:	48 89 c7             	mov    rdi,rax
  400a42:	e8 29 fd ff ff       	call   400770 <seccomp_release@plt>
  400a47:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  400a4c:	74 06                	je     400a54 <setup+0x1ad>
  400a4e:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
  400a52:	74 31                	je     400a85 <setup+0x1de>
  400a54:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
  400a5b:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  400a62:	48 8d 05 68 02 00 00 	lea    rax,[rip+0x268]        # 400cd1 <_IO_stdin_used+0xb1>
  400a69:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  400a6d:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  400a71:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  400a74:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400a77:	89 ce                	mov    esi,ecx
  400a79:	89 c7                	mov    edi,eax
  400a7b:	b8 00 00 00 00       	mov    eax,0x0
  400a80:	e8 2b fd ff ff       	call   4007b0 <error@plt>
  400a85:	90                   	nop
  400a86:	c9                   	leave
  400a87:	c3                   	ret

0000000000400a88 <horse>:
  400a88:	55                   	push   rbp
  400a89:	48 89 e5             	mov    rbp,rsp
  400a8c:	48 83 ec 30          	sub    rsp,0x30
  400a90:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  400a94:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400a98:	48 8d 35 3a 02 00 00 	lea    rsi,[rip+0x23a]        # 400cd9 <_IO_stdin_used+0xb9>
  400a9f:	48 89 c7             	mov    rdi,rax
  400aa2:	e8 d9 fc ff ff       	call   400780 <strcspn@plt>
  400aa7:	48 89 c2             	mov    rdx,rax
  400aaa:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400aae:	48 01 d0             	add    rax,rdx
  400ab1:	c6 00 00             	mov    BYTE PTR [rax],0x0
  400ab4:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400ab8:	48 89 c7             	mov    rdi,rax
  400abb:	e8 a0 fc ff ff       	call   400760 <strlen@plt>
  400ac0:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400ac3:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  400aca:	00 
  400acb:	48 8b 15 46 15 20 00 	mov    rdx,QWORD PTR [rip+0x201546]        # 602018 <PAD>
  400ad2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400ad5:	8d 70 02             	lea    esi,[rax+0x2]
  400ad8:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  400adc:	48 89 d1             	mov    rcx,rdx
  400adf:	89 f2                	mov    edx,esi
  400ae1:	48 8d 35 f3 01 00 00 	lea    rsi,[rip+0x1f3]        # 400cdb <_IO_stdin_used+0xbb>
  400ae8:	48 89 c7             	mov    rdi,rax
  400aeb:	b8 00 00 00 00       	mov    eax,0x0
  400af0:	e8 ab fc ff ff       	call   4007a0 <asprintf@plt>
  400af5:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  400afc:	00 
  400afd:	48 8b 3d 0c 15 20 00 	mov    rdi,QWORD PTR [rip+0x20150c]        # 602010 <HORSE>
  400b04:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  400b08:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  400b0c:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  400b10:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  400b14:	49 89 f9             	mov    r9,rdi
  400b17:	49 89 f0             	mov    r8,rsi
  400b1a:	48 8d 35 bf 01 00 00 	lea    rsi,[rip+0x1bf]        # 400ce0 <_IO_stdin_used+0xc0>
  400b21:	48 89 c7             	mov    rdi,rax
  400b24:	b8 00 00 00 00       	mov    eax,0x0
  400b29:	e8 72 fc ff ff       	call   4007a0 <asprintf@plt>
  400b2e:	48 63 d0             	movsxd rdx,eax
  400b31:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b35:	48 89 c6             	mov    rsi,rax
  400b38:	bf 01 00 00 00       	mov    edi,0x1
  400b3d:	e8 fe fb ff ff       	call   400740 <write@plt>
  400b42:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b46:	48 89 c7             	mov    rdi,rax
  400b49:	e8 c2 fb ff ff       	call   400710 <free@plt>
  400b4e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b52:	48 89 c7             	mov    rdi,rax
  400b55:	e8 b6 fb ff ff       	call   400710 <free@plt>
  400b5a:	90                   	nop
  400b5b:	c9                   	leave
  400b5c:	c3                   	ret

0000000000400b5d <main>:
  400b5d:	55                   	push   rbp
  400b5e:	48 89 e5             	mov    rbp,rsp
  400b61:	48 83 ec 20          	sub    rsp,0x20
  400b65:	b8 00 00 00 00       	mov    eax,0x0
  400b6a:	e8 38 fd ff ff       	call   4008a7 <setup>
  400b6f:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400b73:	ba 80 00 00 00       	mov    edx,0x80
  400b78:	48 89 c6             	mov    rsi,rax
  400b7b:	bf 00 00 00 00       	mov    edi,0x0
  400b80:	e8 0b fc ff ff       	call   400790 <read@plt>
  400b85:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400b89:	48 89 c7             	mov    rdi,rax
  400b8c:	e8 f7 fe ff ff       	call   400a88 <horse>
  400b91:	b8 00 00 00 00       	mov    eax,0x0
  400b96:	c9                   	leave
  400b97:	c3                   	ret
  400b98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400b9f:	00 

0000000000400ba0 <__libc_csu_init>:
  400ba0:	41 57                	push   r15
  400ba2:	41 56                	push   r14
  400ba4:	49 89 d7             	mov    r15,rdx
  400ba7:	41 55                	push   r13
  400ba9:	41 54                	push   r12
  400bab:	4c 8d 25 be 11 20 00 	lea    r12,[rip+0x2011be]        # 601d70 <__frame_dummy_init_array_entry>
  400bb2:	55                   	push   rbp
  400bb3:	48 8d 2d be 11 20 00 	lea    rbp,[rip+0x2011be]        # 601d78 <__do_global_dtors_aux_fini_array_entry>
  400bba:	53                   	push   rbx
  400bbb:	41 89 fd             	mov    r13d,edi
  400bbe:	49 89 f6             	mov    r14,rsi
  400bc1:	4c 29 e5             	sub    rbp,r12
  400bc4:	48 83 ec 08          	sub    rsp,0x8
  400bc8:	48 c1 fd 03          	sar    rbp,0x3
  400bcc:	e8 17 fb ff ff       	call   4006e8 <_init>
  400bd1:	48 85 ed             	test   rbp,rbp
  400bd4:	74 20                	je     400bf6 <__libc_csu_init+0x56>
  400bd6:	31 db                	xor    ebx,ebx
  400bd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400bdf:	00 
  400be0:	4c 89 fa             	mov    rdx,r15
  400be3:	4c 89 f6             	mov    rsi,r14
  400be6:	44 89 ef             	mov    edi,r13d
  400be9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400bed:	48 83 c3 01          	add    rbx,0x1
  400bf1:	48 39 dd             	cmp    rbp,rbx
  400bf4:	75 ea                	jne    400be0 <__libc_csu_init+0x40>
  400bf6:	48 83 c4 08          	add    rsp,0x8
  400bfa:	5b                   	pop    rbx
  400bfb:	5d                   	pop    rbp
  400bfc:	41 5c                	pop    r12
  400bfe:	41 5d                	pop    r13
  400c00:	41 5e                	pop    r14
  400c02:	41 5f                	pop    r15
  400c04:	c3                   	ret
  400c05:	90                   	nop
  400c06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400c0d:	00 00 00 

0000000000400c10 <__libc_csu_fini>:
  400c10:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400c14 <_fini>:
  400c14:	48 83 ec 08          	sub    rsp,0x8
  400c18:	48 83 c4 08          	add    rsp,0x8
  400c1c:	c3                   	ret
