demo：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 2f 00 00    	pushq  0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 2f 00 00 	bnd jmpq *0x2f93(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 2f 00 00 	bnd jmpq *0x2f9d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <putchar@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmpq *0x2f5d(%rip)        # 3fc8 <putchar@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <printf@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmpq *0x2f55(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	4c 8d 05 66 03 00 00 	lea    0x366(%rip),%r8        # 1400 <__libc_csu_fini>
    109a:	48 8d 0d ef 02 00 00 	lea    0x2ef(%rip),%rcx        # 1390 <__libc_csu_init>
    10a1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1169 <main>
    10a8:	ff 15 32 2f 00 00    	callq  *0x2f32(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ae:	f4                   	hlt    
    10af:	90                   	nop

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 2f 00 00 	mov    0x2f0e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmpq   *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	retq   
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmpq   *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	e8 09 ff ff ff       	callq  1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	callq  10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	retq   
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	retq   
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmpq   10e0 <register_tm_clones>

0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 83 ec 50          	sub    $0x50,%rsp
    1175:	c7 45 fc 0c 00 00 00 	movl   $0xc,-0x4(%rbp)
    117c:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%rbp)
    1183:	8b 45 b8             	mov    -0x48(%rbp),%eax
    1186:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1189:	7d 2c                	jge    11b7 <main+0x4e>
    118b:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
    1192:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1195:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1198:	7d 17                	jge    11b1 <main+0x48>
    119a:	48 8d 3d 63 0e 00 00 	lea    0xe63(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11a1:	b8 00 00 00 00       	mov    $0x0,%eax
    11a6:	e8 c5 fe ff ff       	callq  1070 <printf@plt>
    11ab:	83 45 bc 01          	addl   $0x1,-0x44(%rbp)
    11af:	eb e1                	jmp    1192 <main+0x29>
    11b1:	83 45 b8 01          	addl   $0x1,-0x48(%rbp)
    11b5:	eb cc                	jmp    1183 <main+0x1a>
    11b7:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    11be:	8b 45 c0             	mov    -0x40(%rbp),%eax
    11c1:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    11c4:	7d 10                	jge    11d6 <main+0x6d>
    11c6:	bf 41 00 00 00       	mov    $0x41,%edi
    11cb:	e8 90 fe ff ff       	callq  1060 <putchar@plt>
    11d0:	83 45 c0 01          	addl   $0x1,-0x40(%rbp)
    11d4:	eb e8                	jmp    11be <main+0x55>
    11d6:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    11dd:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    11e0:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    11e3:	7d 10                	jge    11f5 <main+0x8c>
    11e5:	bf 41 00 00 00       	mov    $0x41,%edi
    11ea:	e8 71 fe ff ff       	callq  1060 <putchar@plt>
    11ef:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    11f3:	eb e8                	jmp    11dd <main+0x74>
    11f5:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    11fc:	8b 45 c8             	mov    -0x38(%rbp),%eax
    11ff:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1202:	7d 10                	jge    1214 <main+0xab>
    1204:	bf 41 00 00 00       	mov    $0x41,%edi
    1209:	e8 52 fe ff ff       	callq  1060 <putchar@plt>
    120e:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1212:	eb e8                	jmp    11fc <main+0x93>
    1214:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    121b:	8b 45 cc             	mov    -0x34(%rbp),%eax
    121e:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1221:	7d 10                	jge    1233 <main+0xca>
    1223:	bf 41 00 00 00       	mov    $0x41,%edi
    1228:	e8 33 fe ff ff       	callq  1060 <putchar@plt>
    122d:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1231:	eb e8                	jmp    121b <main+0xb2>
    1233:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
    123a:	8b 45 d0             	mov    -0x30(%rbp),%eax
    123d:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1240:	7d 10                	jge    1252 <main+0xe9>
    1242:	bf 41 00 00 00       	mov    $0x41,%edi
    1247:	e8 14 fe ff ff       	callq  1060 <putchar@plt>
    124c:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
    1250:	eb e8                	jmp    123a <main+0xd1>
    1252:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    1259:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    125c:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    125f:	7d 10                	jge    1271 <main+0x108>
    1261:	bf 41 00 00 00       	mov    $0x41,%edi
    1266:	e8 f5 fd ff ff       	callq  1060 <putchar@plt>
    126b:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
    126f:	eb e8                	jmp    1259 <main+0xf0>
    1271:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    1278:	8b 45 d8             	mov    -0x28(%rbp),%eax
    127b:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    127e:	7d 10                	jge    1290 <main+0x127>
    1280:	bf 41 00 00 00       	mov    $0x41,%edi
    1285:	e8 d6 fd ff ff       	callq  1060 <putchar@plt>
    128a:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
    128e:	eb e8                	jmp    1278 <main+0x10f>
    1290:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1297:	8b 45 dc             	mov    -0x24(%rbp),%eax
    129a:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    129d:	7d 10                	jge    12af <main+0x146>
    129f:	bf 41 00 00 00       	mov    $0x41,%edi
    12a4:	e8 b7 fd ff ff       	callq  1060 <putchar@plt>
    12a9:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    12ad:	eb e8                	jmp    1297 <main+0x12e>
    12af:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    12b6:	8b 45 e0             	mov    -0x20(%rbp),%eax
    12b9:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    12bc:	7d 10                	jge    12ce <main+0x165>
    12be:	bf 41 00 00 00       	mov    $0x41,%edi
    12c3:	e8 98 fd ff ff       	callq  1060 <putchar@plt>
    12c8:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    12cc:	eb e8                	jmp    12b6 <main+0x14d>
    12ce:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    12d5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    12d8:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    12db:	7d 10                	jge    12ed <main+0x184>
    12dd:	bf 41 00 00 00       	mov    $0x41,%edi
    12e2:	e8 79 fd ff ff       	callq  1060 <putchar@plt>
    12e7:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    12eb:	eb e8                	jmp    12d5 <main+0x16c>
    12ed:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    12f4:	8b 45 e8             	mov    -0x18(%rbp),%eax
    12f7:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    12fa:	7d 10                	jge    130c <main+0x1a3>
    12fc:	bf 41 00 00 00       	mov    $0x41,%edi
    1301:	e8 5a fd ff ff       	callq  1060 <putchar@plt>
    1306:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    130a:	eb e8                	jmp    12f4 <main+0x18b>
    130c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1313:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1316:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1319:	7d 10                	jge    132b <main+0x1c2>
    131b:	bf 41 00 00 00       	mov    $0x41,%edi
    1320:	e8 3b fd ff ff       	callq  1060 <putchar@plt>
    1325:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1329:	eb e8                	jmp    1313 <main+0x1aa>
    132b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1332:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1335:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1338:	7d 10                	jge    134a <main+0x1e1>
    133a:	bf 41 00 00 00       	mov    $0x41,%edi
    133f:	e8 1c fd ff ff       	callq  1060 <putchar@plt>
    1344:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    1348:	eb e8                	jmp    1332 <main+0x1c9>
    134a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1351:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1354:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1357:	7d 10                	jge    1369 <main+0x200>
    1359:	bf 41 00 00 00       	mov    $0x41,%edi
    135e:	e8 fd fc ff ff       	callq  1060 <putchar@plt>
    1363:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1367:	eb e8                	jmp    1351 <main+0x1e8>
    1369:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1370:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1373:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1376:	7d 10                	jge    1388 <main+0x21f>
    1378:	bf 41 00 00 00       	mov    $0x41,%edi
    137d:	e8 de fc ff ff       	callq  1060 <putchar@plt>
    1382:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1386:	eb e8                	jmp    1370 <main+0x207>
    1388:	b8 00 00 00 00       	mov    $0x0,%eax
    138d:	c9                   	leaveq 
    138e:	c3                   	retq   
    138f:	90                   	nop

0000000000001390 <__libc_csu_init>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	41 57                	push   %r15
    1396:	4c 8d 3d 13 2a 00 00 	lea    0x2a13(%rip),%r15        # 3db0 <__frame_dummy_init_array_entry>
    139d:	41 56                	push   %r14
    139f:	49 89 d6             	mov    %rdx,%r14
    13a2:	41 55                	push   %r13
    13a4:	49 89 f5             	mov    %rsi,%r13
    13a7:	41 54                	push   %r12
    13a9:	41 89 fc             	mov    %edi,%r12d
    13ac:	55                   	push   %rbp
    13ad:	48 8d 2d 04 2a 00 00 	lea    0x2a04(%rip),%rbp        # 3db8 <__do_global_dtors_aux_fini_array_entry>
    13b4:	53                   	push   %rbx
    13b5:	4c 29 fd             	sub    %r15,%rbp
    13b8:	48 83 ec 08          	sub    $0x8,%rsp
    13bc:	e8 3f fc ff ff       	callq  1000 <_init>
    13c1:	48 c1 fd 03          	sar    $0x3,%rbp
    13c5:	74 1f                	je     13e6 <__libc_csu_init+0x56>
    13c7:	31 db                	xor    %ebx,%ebx
    13c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d0:	4c 89 f2             	mov    %r14,%rdx
    13d3:	4c 89 ee             	mov    %r13,%rsi
    13d6:	44 89 e7             	mov    %r12d,%edi
    13d9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    13dd:	48 83 c3 01          	add    $0x1,%rbx
    13e1:	48 39 dd             	cmp    %rbx,%rbp
    13e4:	75 ea                	jne    13d0 <__libc_csu_init+0x40>
    13e6:	48 83 c4 08          	add    $0x8,%rsp
    13ea:	5b                   	pop    %rbx
    13eb:	5d                   	pop    %rbp
    13ec:	41 5c                	pop    %r12
    13ee:	41 5d                	pop    %r13
    13f0:	41 5e                	pop    %r14
    13f2:	41 5f                	pop    %r15
    13f4:	c3                   	retq   
    13f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13fc:	00 00 00 00 

0000000000001400 <__libc_csu_fini>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	c3                   	retq   

Disassembly of section .fini:

0000000000001408 <_fini>:
    1408:	f3 0f 1e fa          	endbr64 
    140c:	48 83 ec 08          	sub    $0x8,%rsp
    1410:	48 83 c4 08          	add    $0x8,%rsp
    1414:	c3                   	retq   
