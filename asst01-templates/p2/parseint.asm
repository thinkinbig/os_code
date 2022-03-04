
parseint:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <snprintf@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <snprintf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <strcmp@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <strcmp@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <malloc@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <malloc@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <setvbuf@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <setvbuf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <exit@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <exit@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <strstr@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <strstr@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	ff 25 42 2f 00 00    	jmpq   *0x2f42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	31 ed                	xor    %ebp,%ebp
    10c2:	49 89 d1             	mov    %rdx,%r9
    10c5:	5e                   	pop    %rsi
    10c6:	48 89 e2             	mov    %rsp,%rdx
    10c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10cd:	50                   	push   %rax
    10ce:	54                   	push   %rsp
    10cf:	4c 8d 05 aa 0b 00 00 	lea    0xbaa(%rip),%r8        # 1c80 <__libc_csu_fini>
    10d6:	48 8d 0d 43 0b 00 00 	lea    0xb43(%rip),%rcx        # 1c20 <__libc_csu_init>
    10dd:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 11a5 <main>
    10e4:	ff 15 f6 2e 00 00    	callq  *0x2ef6(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ea:	f4                   	hlt    
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4078 <stdout@@GLIBC_2.2.5>
    10f7:	48 8d 05 7a 2f 00 00 	lea    0x2f7a(%rip),%rax        # 4078 <stdout@@GLIBC_2.2.5>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 ce 2e 00 00 	mov    0x2ece(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmpq   *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4078 <stdout@@GLIBC_2.2.5>
    1127:	48 8d 35 4a 2f 00 00 	lea    0x2f4a(%rip),%rsi        # 4078 <stdout@@GLIBC_2.2.5>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmpq   *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	retq   
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	80 3d 19 2f 00 00 00 	cmpb   $0x0,0x2f19(%rip)        # 4080 <completed.0>
    1167:	75 2f                	jne    1198 <__do_global_dtors_aux+0x38>
    1169:	55                   	push   %rbp
    116a:	48 83 3d 86 2e 00 00 	cmpq   $0x0,0x2e86(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1171:	00 
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	74 0c                	je     1183 <__do_global_dtors_aux+0x23>
    1177:	48 8b 3d e2 2e 00 00 	mov    0x2ee2(%rip),%rdi        # 4060 <__dso_handle>
    117e:	e8 2d ff ff ff       	callq  10b0 <__cxa_finalize@plt>
    1183:	e8 68 ff ff ff       	callq  10f0 <deregister_tm_clones>
    1188:	c6 05 f1 2e 00 00 01 	movb   $0x1,0x2ef1(%rip)        # 4080 <completed.0>
    118f:	5d                   	pop    %rbp
    1190:	c3                   	retq   
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	e9 7b ff ff ff       	jmpq   1120 <register_tm_clones>

00000000000011a5 <main>:
    11a5:	55                   	push   %rbp
    11a6:	48 89 e5             	mov    %rsp,%rbp
    11a9:	48 8d 3d 58 0e 00 00 	lea    0xe58(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    11b0:	e8 ec 01 00 00       	callq  13a1 <test_start>
    11b5:	bf 30 00 00 00       	mov    $0x30,%edi
    11ba:	e8 b0 00 00 00       	callq  126f <parseDecimalChar>
    11bf:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    11c5:	48 8d 0d 47 0e 00 00 	lea    0xe47(%rip),%rcx        # 2013 <_IO_stdin_used+0x13>
    11cc:	48 8d 15 47 0e 00 00 	lea    0xe47(%rip),%rdx        # 201a <_IO_stdin_used+0x1a>
    11d3:	be 00 00 00 00       	mov    $0x0,%esi
    11d8:	89 c7                	mov    %eax,%edi
    11da:	e8 c2 02 00 00       	callq  14a1 <_test_equals_int>
    11df:	48 8d 3d 50 0e 00 00 	lea    0xe50(%rip),%rdi        # 2036 <_IO_stdin_used+0x36>
    11e6:	e8 a9 00 00 00       	callq  1294 <parseInt>
    11eb:	41 b8 09 00 00 00    	mov    $0x9,%r8d
    11f1:	48 8d 0d 1b 0e 00 00 	lea    0xe1b(%rip),%rcx        # 2013 <_IO_stdin_used+0x13>
    11f8:	48 8d 15 3b 0e 00 00 	lea    0xe3b(%rip),%rdx        # 203a <_IO_stdin_used+0x3a>
    11ff:	be 08 00 00 00       	mov    $0x8,%esi
    1204:	89 c7                	mov    %eax,%edi
    1206:	e8 96 02 00 00       	callq  14a1 <_test_equals_int>
    120b:	48 8d 3d 45 0e 00 00 	lea    0xe45(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1212:	e8 7d 00 00 00       	callq  1294 <parseInt>
    1217:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    121d:	48 8d 0d ef 0d 00 00 	lea    0xdef(%rip),%rcx        # 2013 <_IO_stdin_used+0x13>
    1224:	48 8d 15 35 0e 00 00 	lea    0xe35(%rip),%rdx        # 2060 <_IO_stdin_used+0x60>
    122b:	be 0a 00 00 00       	mov    $0xa,%esi
    1230:	89 c7                	mov    %eax,%edi
    1232:	e8 6a 02 00 00       	callq  14a1 <_test_equals_int>
    1237:	48 8d 3d 41 0e 00 00 	lea    0xe41(%rip),%rdi        # 207f <_IO_stdin_used+0x7f>
    123e:	e8 51 00 00 00       	callq  1294 <parseInt>
    1243:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
    1249:	48 8d 0d c3 0d 00 00 	lea    0xdc3(%rip),%rcx        # 2013 <_IO_stdin_used+0x13>
    1250:	48 8d 15 31 0e 00 00 	lea    0xe31(%rip),%rdx        # 2088 <_IO_stdin_used+0x88>
    1257:	be ff ff ff ff       	mov    $0xffffffff,%esi
    125c:	89 c7                	mov    %eax,%edi
    125e:	e8 3e 02 00 00       	callq  14a1 <_test_equals_int>
    1263:	b8 00 00 00 00       	mov    $0x0,%eax
    1268:	e8 e2 08 00 00       	callq  1b4f <test_end>
    126d:	5d                   	pop    %rbp
    126e:	c3                   	retq   

000000000000126f <parseDecimalChar>:
    126f:	55                   	push   %rbp
    1270:	48 89 e5             	mov    %rsp,%rbp
    1273:	89 f8                	mov    %edi,%eax
    1275:	88 45 fc             	mov    %al,-0x4(%rbp)
    1278:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%rbp)
    127c:	7e 0f                	jle    128d <parseDecimalChar+0x1e>
    127e:	80 7d fc 39          	cmpb   $0x39,-0x4(%rbp)
    1282:	7f 09                	jg     128d <parseDecimalChar+0x1e>
    1284:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    1288:	83 e8 30             	sub    $0x30,%eax
    128b:	eb 05                	jmp    1292 <parseDecimalChar+0x23>
    128d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1292:	5d                   	pop    %rbp
    1293:	c3                   	retq   

0000000000001294 <parseInt>:
    1294:	55                   	push   %rbp
    1295:	48 89 e5             	mov    %rsp,%rbp
    1298:	48 83 ec 18          	sub    $0x18,%rsp
    129c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12a0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12a7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    12ac:	74 0b                	je     12b9 <parseInt+0x25>
    12ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12b2:	0f b6 00             	movzbl (%rax),%eax
    12b5:	84 c0                	test   %al,%al
    12b7:	75 07                	jne    12c0 <parseInt+0x2c>
    12b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    12be:	eb 68                	jmp    1328 <parseInt+0x94>
    12c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12c4:	0f b6 00             	movzbl (%rax),%eax
    12c7:	3c 30                	cmp    $0x30,%al
    12c9:	75 07                	jne    12d2 <parseInt+0x3e>
    12cb:	b8 08 00 00 00       	mov    $0x8,%eax
    12d0:	eb 05                	jmp    12d7 <parseInt+0x43>
    12d2:	b8 0a 00 00 00       	mov    $0xa,%eax
    12d7:	89 45 f8             	mov    %eax,-0x8(%rbp)
    12da:	eb 3e                	jmp    131a <parseInt+0x86>
    12dc:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12df:	0f af 45 f8          	imul   -0x8(%rbp),%eax
    12e3:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12ea:	0f b6 00             	movzbl (%rax),%eax
    12ed:	0f be c0             	movsbl %al,%eax
    12f0:	89 c7                	mov    %eax,%edi
    12f2:	e8 78 ff ff ff       	callq  126f <parseDecimalChar>
    12f7:	89 45 f4             	mov    %eax,-0xc(%rbp)
    12fa:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    12fe:	78 08                	js     1308 <parseInt+0x74>
    1300:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1303:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    1306:	7c 07                	jl     130f <parseInt+0x7b>
    1308:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    130d:	eb 19                	jmp    1328 <parseInt+0x94>
    130f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1312:	01 45 fc             	add    %eax,-0x4(%rbp)
    1315:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    131a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    131e:	0f b6 00             	movzbl (%rax),%eax
    1321:	84 c0                	test   %al,%al
    1323:	75 b7                	jne    12dc <parseInt+0x48>
    1325:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1328:	c9                   	leaveq 
    1329:	c3                   	retq   

000000000000132a <_test_failed_message>:
    132a:	55                   	push   %rbp
    132b:	48 89 e5             	mov    %rsp,%rbp
    132e:	48 83 ec 20          	sub    $0x20,%rsp
    1332:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1336:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    133a:	89 55 ec             	mov    %edx,-0x14(%rbp)
    133d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1341:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1344:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1348:	48 89 c6             	mov    %rax,%rsi
    134b:	48 8d 3d 56 0d 00 00 	lea    0xd56(%rip),%rdi        # 20a8 <_IO_stdin_used+0xa8>
    1352:	b8 00 00 00 00       	mov    $0x0,%eax
    1357:	e8 e4 fc ff ff       	callq  1040 <printf@plt>
    135c:	bf 01 00 00 00       	mov    $0x1,%edi
    1361:	e8 2a fd ff ff       	callq  1090 <exit@plt>

0000000000001366 <test_ok>:
    1366:	55                   	push   %rbp
    1367:	48 89 e5             	mov    %rsp,%rbp
    136a:	48 83 ec 10          	sub    $0x10,%rsp
    136e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1372:	8b 05 0c 2d 00 00    	mov    0x2d0c(%rip),%eax        # 4084 <test>
    1378:	83 c0 01             	add    $0x1,%eax
    137b:	89 05 03 2d 00 00    	mov    %eax,0x2d03(%rip)        # 4084 <test>
    1381:	8b 05 fd 2c 00 00    	mov    0x2cfd(%rip),%eax        # 4084 <test>
    1387:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    138b:	89 c6                	mov    %eax,%esi
    138d:	48 8d 3d 2e 0d 00 00 	lea    0xd2e(%rip),%rdi        # 20c2 <_IO_stdin_used+0xc2>
    1394:	b8 00 00 00 00       	mov    $0x0,%eax
    1399:	e8 a2 fc ff ff       	callq  1040 <printf@plt>
    139e:	90                   	nop
    139f:	c9                   	leaveq 
    13a0:	c3                   	retq   

00000000000013a1 <test_start>:
    13a1:	55                   	push   %rbp
    13a2:	48 89 e5             	mov    %rsp,%rbp
    13a5:	48 83 ec 10          	sub    $0x10,%rsp
    13a9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    13ad:	48 8b 05 c4 2c 00 00 	mov    0x2cc4(%rip),%rax        # 4078 <stdout@@GLIBC_2.2.5>
    13b4:	b9 00 00 00 00       	mov    $0x0,%ecx
    13b9:	ba 01 00 00 00       	mov    $0x1,%edx
    13be:	be 00 00 00 00       	mov    $0x0,%esi
    13c3:	48 89 c7             	mov    %rax,%rdi
    13c6:	e8 b5 fc ff ff       	callq  1080 <setvbuf@plt>
    13cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13cf:	48 89 c6             	mov    %rax,%rsi
    13d2:	48 8d 3d f5 0c 00 00 	lea    0xcf5(%rip),%rdi        # 20ce <_IO_stdin_used+0xce>
    13d9:	b8 00 00 00 00       	mov    $0x0,%eax
    13de:	e8 5d fc ff ff       	callq  1040 <printf@plt>
    13e3:	90                   	nop
    13e4:	c9                   	leaveq 
    13e5:	c3                   	retq   

00000000000013e6 <test_plan>:
    13e6:	55                   	push   %rbp
    13e7:	48 89 e5             	mov    %rsp,%rbp
    13ea:	48 83 ec 10          	sub    $0x10,%rsp
    13ee:	89 7d fc             	mov    %edi,-0x4(%rbp)
    13f1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13f4:	89 05 6e 2c 00 00    	mov    %eax,0x2c6e(%rip)        # 4068 <plan>
    13fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13fd:	89 c6                	mov    %eax,%esi
    13ff:	48 8d 3d db 0c 00 00 	lea    0xcdb(%rip),%rdi        # 20e1 <_IO_stdin_used+0xe1>
    1406:	b8 00 00 00 00       	mov    $0x0,%eax
    140b:	e8 30 fc ff ff       	callq  1040 <printf@plt>
    1410:	90                   	nop
    1411:	c9                   	leaveq 
    1412:	c3                   	retq   

0000000000001413 <_test_equals_int64>:
    1413:	55                   	push   %rbp
    1414:	48 89 e5             	mov    %rsp,%rbp
    1417:	48 83 ec 30          	sub    $0x30,%rsp
    141b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    141f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1423:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1427:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    142b:	44 89 45 dc          	mov    %r8d,-0x24(%rbp)
    142f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1433:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    1437:	75 0e                	jne    1447 <_test_equals_int64+0x34>
    1439:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    143d:	48 89 c7             	mov    %rax,%rdi
    1440:	e8 21 ff ff ff       	callq  1366 <test_ok>
    1445:	eb 57                	jmp    149e <_test_equals_int64+0x8b>
    1447:	8b 05 37 2c 00 00    	mov    0x2c37(%rip),%eax        # 4084 <test>
    144d:	83 c0 01             	add    $0x1,%eax
    1450:	89 05 2e 2c 00 00    	mov    %eax,0x2c2e(%rip)        # 4084 <test>
    1456:	8b 05 28 2c 00 00    	mov    0x2c28(%rip),%eax        # 4084 <test>
    145c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1460:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1463:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1467:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    146b:	48 83 ec 08          	sub    $0x8,%rsp
    146f:	ff 75 f8             	pushq  -0x8(%rbp)
    1472:	49 89 f9             	mov    %rdi,%r9
    1475:	41 89 f0             	mov    %esi,%r8d
    1478:	89 c6                	mov    %eax,%esi
    147a:	48 8d 3d 67 0c 00 00 	lea    0xc67(%rip),%rdi        # 20e8 <_IO_stdin_used+0xe8>
    1481:	b8 00 00 00 00       	mov    $0x0,%eax
    1486:	e8 b5 fb ff ff       	callq  1040 <printf@plt>
    148b:	48 83 c4 10          	add    $0x10,%rsp
    148f:	8b 05 f3 2b 00 00    	mov    0x2bf3(%rip),%eax        # 4088 <errors>
    1495:	83 c0 01             	add    $0x1,%eax
    1498:	89 05 ea 2b 00 00    	mov    %eax,0x2bea(%rip)        # 4088 <errors>
    149e:	90                   	nop
    149f:	c9                   	leaveq 
    14a0:	c3                   	retq   

00000000000014a1 <_test_equals_int>:
    14a1:	55                   	push   %rbp
    14a2:	48 89 e5             	mov    %rsp,%rbp
    14a5:	48 83 ec 20          	sub    $0x20,%rsp
    14a9:	89 7d fc             	mov    %edi,-0x4(%rbp)
    14ac:	89 75 f8             	mov    %esi,-0x8(%rbp)
    14af:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    14b3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    14b7:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    14bb:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14be:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    14c1:	75 0e                	jne    14d1 <_test_equals_int+0x30>
    14c3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14c7:	48 89 c7             	mov    %rax,%rdi
    14ca:	e8 97 fe ff ff       	callq  1366 <test_ok>
    14cf:	eb 58                	jmp    1529 <_test_equals_int+0x88>
    14d1:	8b 05 ad 2b 00 00    	mov    0x2bad(%rip),%eax        # 4084 <test>
    14d7:	83 c0 01             	add    $0x1,%eax
    14da:	89 05 a4 2b 00 00    	mov    %eax,0x2ba4(%rip)        # 4084 <test>
    14e0:	8b 05 9e 2b 00 00    	mov    0x2b9e(%rip),%eax        # 4084 <test>
    14e6:	44 8b 45 f8          	mov    -0x8(%rbp),%r8d
    14ea:	8b 7d e4             	mov    -0x1c(%rbp),%edi
    14ed:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    14f1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    14f5:	48 83 ec 08          	sub    $0x8,%rsp
    14f9:	8b 75 fc             	mov    -0x4(%rbp),%esi
    14fc:	56                   	push   %rsi
    14fd:	45 89 c1             	mov    %r8d,%r9d
    1500:	41 89 f8             	mov    %edi,%r8d
    1503:	89 c6                	mov    %eax,%esi
    1505:	48 8d 3d 14 0c 00 00 	lea    0xc14(%rip),%rdi        # 2120 <_IO_stdin_used+0x120>
    150c:	b8 00 00 00 00       	mov    $0x0,%eax
    1511:	e8 2a fb ff ff       	callq  1040 <printf@plt>
    1516:	48 83 c4 10          	add    $0x10,%rsp
    151a:	8b 05 68 2b 00 00    	mov    0x2b68(%rip),%eax        # 4088 <errors>
    1520:	83 c0 01             	add    $0x1,%eax
    1523:	89 05 5f 2b 00 00    	mov    %eax,0x2b5f(%rip)        # 4088 <errors>
    1529:	90                   	nop
    152a:	c9                   	leaveq 
    152b:	c3                   	retq   

000000000000152c <_test_equals_ptr>:
    152c:	55                   	push   %rbp
    152d:	48 89 e5             	mov    %rsp,%rbp
    1530:	48 83 ec 30          	sub    $0x30,%rsp
    1534:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1538:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    153c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1540:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    1544:	44 89 45 dc          	mov    %r8d,-0x24(%rbp)
    1548:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    154c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    1550:	75 0e                	jne    1560 <_test_equals_ptr+0x34>
    1552:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1556:	48 89 c7             	mov    %rax,%rdi
    1559:	e8 08 fe ff ff       	callq  1366 <test_ok>
    155e:	eb 57                	jmp    15b7 <_test_equals_ptr+0x8b>
    1560:	8b 05 1e 2b 00 00    	mov    0x2b1e(%rip),%eax        # 4084 <test>
    1566:	83 c0 01             	add    $0x1,%eax
    1569:	89 05 15 2b 00 00    	mov    %eax,0x2b15(%rip)        # 4084 <test>
    156f:	8b 05 0f 2b 00 00    	mov    0x2b0f(%rip),%eax        # 4084 <test>
    1575:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1579:	8b 75 dc             	mov    -0x24(%rbp),%esi
    157c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1580:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1584:	48 83 ec 08          	sub    $0x8,%rsp
    1588:	ff 75 f8             	pushq  -0x8(%rbp)
    158b:	49 89 f9             	mov    %rdi,%r9
    158e:	41 89 f0             	mov    %esi,%r8d
    1591:	89 c6                	mov    %eax,%esi
    1593:	48 8d 3d be 0b 00 00 	lea    0xbbe(%rip),%rdi        # 2158 <_IO_stdin_used+0x158>
    159a:	b8 00 00 00 00       	mov    $0x0,%eax
    159f:	e8 9c fa ff ff       	callq  1040 <printf@plt>
    15a4:	48 83 c4 10          	add    $0x10,%rsp
    15a8:	8b 05 da 2a 00 00    	mov    0x2ada(%rip),%eax        # 4088 <errors>
    15ae:	83 c0 01             	add    $0x1,%eax
    15b1:	89 05 d1 2a 00 00    	mov    %eax,0x2ad1(%rip)        # 4088 <errors>
    15b7:	90                   	nop
    15b8:	c9                   	leaveq 
    15b9:	c3                   	retq   

00000000000015ba <_test_failed>:
    15ba:	55                   	push   %rbp
    15bb:	48 89 e5             	mov    %rsp,%rbp
    15be:	8b 05 c4 2a 00 00    	mov    0x2ac4(%rip),%eax        # 4088 <errors>
    15c4:	83 c0 01             	add    $0x1,%eax
    15c7:	89 05 bb 2a 00 00    	mov    %eax,0x2abb(%rip)        # 4088 <errors>
    15cd:	90                   	nop
    15ce:	5d                   	pop    %rbp
    15cf:	c3                   	retq   

00000000000015d0 <escape_string>:
    15d0:	55                   	push   %rbp
    15d1:	48 89 e5             	mov    %rsp,%rbp
    15d4:	48 83 ec 40          	sub    $0x40,%rsp
    15d8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    15dc:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    15e3:	00 
    15e4:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    15eb:	00 
    15ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15f0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    15f4:	e9 8d 00 00 00       	jmpq   1686 <escape_string+0xb6>
    15f9:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    15fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1602:	0f b6 00             	movzbl (%rax),%eax
    1605:	0f be c0             	movsbl %al,%eax
    1608:	83 f8 22             	cmp    $0x22,%eax
    160b:	7f 2f                	jg     163c <escape_string+0x6c>
    160d:	83 f8 07             	cmp    $0x7,%eax
    1610:	7c 6f                	jl     1681 <escape_string+0xb1>
    1612:	83 e8 07             	sub    $0x7,%eax
    1615:	83 f8 1b             	cmp    $0x1b,%eax
    1618:	77 67                	ja     1681 <escape_string+0xb1>
    161a:	89 c0                	mov    %eax,%eax
    161c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1623:	00 
    1624:	48 8d 05 65 0b 00 00 	lea    0xb65(%rip),%rax        # 2190 <_IO_stdin_used+0x190>
    162b:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    162e:	48 98                	cltq   
    1630:	48 8d 15 59 0b 00 00 	lea    0xb59(%rip),%rdx        # 2190 <_IO_stdin_used+0x190>
    1637:	48 01 d0             	add    %rdx,%rax
    163a:	ff e0                	jmpq   *%rax
    163c:	83 f8 5c             	cmp    $0x5c,%eax
    163f:	74 09                	je     164a <escape_string+0x7a>
    1641:	eb 3e                	jmp    1681 <escape_string+0xb1>
    1643:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1648:	eb 36                	jmp    1680 <escape_string+0xb0>
    164a:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    164f:	eb 2f                	jmp    1680 <escape_string+0xb0>
    1651:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1656:	eb 28                	jmp    1680 <escape_string+0xb0>
    1658:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    165d:	eb 21                	jmp    1680 <escape_string+0xb0>
    165f:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1664:	eb 1a                	jmp    1680 <escape_string+0xb0>
    1666:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    166b:	eb 13                	jmp    1680 <escape_string+0xb0>
    166d:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1672:	eb 0c                	jmp    1680 <escape_string+0xb0>
    1674:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1679:	eb 05                	jmp    1680 <escape_string+0xb0>
    167b:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1680:	90                   	nop
    1681:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1686:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    168a:	0f b6 00             	movzbl (%rax),%eax
    168d:	84 c0                	test   %al,%al
    168f:	0f 85 64 ff ff ff    	jne    15f9 <escape_string+0x29>
    1695:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1699:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    169d:	48 01 d0             	add    %rdx,%rax
    16a0:	48 83 c0 03          	add    $0x3,%rax
    16a4:	48 89 c7             	mov    %rax,%rdi
    16a7:	e8 c4 f9 ff ff       	callq  1070 <malloc@plt>
    16ac:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    16b0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    16b4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    16b8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16bc:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16c0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    16c4:	c6 00 22             	movb   $0x22,(%rax)
    16c7:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    16ce:	00 
    16cf:	e9 cf 01 00 00       	jmpq   18a3 <escape_string+0x2d3>
    16d4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    16d8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16dc:	48 01 d0             	add    %rdx,%rax
    16df:	0f b6 00             	movzbl (%rax),%eax
    16e2:	0f be c0             	movsbl %al,%eax
    16e5:	83 f8 22             	cmp    $0x22,%eax
    16e8:	7f 37                	jg     1721 <escape_string+0x151>
    16ea:	83 f8 07             	cmp    $0x7,%eax
    16ed:	0f 8c 8e 01 00 00    	jl     1881 <escape_string+0x2b1>
    16f3:	83 e8 07             	sub    $0x7,%eax
    16f6:	83 f8 1b             	cmp    $0x1b,%eax
    16f9:	0f 87 82 01 00 00    	ja     1881 <escape_string+0x2b1>
    16ff:	89 c0                	mov    %eax,%eax
    1701:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1708:	00 
    1709:	48 8d 05 f0 0a 00 00 	lea    0xaf0(%rip),%rax        # 2200 <_IO_stdin_used+0x200>
    1710:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    1713:	48 98                	cltq   
    1715:	48 8d 15 e4 0a 00 00 	lea    0xae4(%rip),%rdx        # 2200 <_IO_stdin_used+0x200>
    171c:	48 01 d0             	add    %rdx,%rax
    171f:	ff e0                	jmpq   *%rax
    1721:	83 f8 5c             	cmp    $0x5c,%eax
    1724:	74 2c                	je     1752 <escape_string+0x182>
    1726:	e9 56 01 00 00       	jmpq   1881 <escape_string+0x2b1>
    172b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    172f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1733:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1737:	c6 00 5c             	movb   $0x5c,(%rax)
    173a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    173e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1742:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1746:	ba 22 00 00 00       	mov    $0x22,%edx
    174b:	88 10                	mov    %dl,(%rax)
    174d:	e9 4c 01 00 00       	jmpq   189e <escape_string+0x2ce>
    1752:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1756:	48 8d 50 01          	lea    0x1(%rax),%rdx
    175a:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    175e:	c6 00 5c             	movb   $0x5c,(%rax)
    1761:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1765:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1769:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    176d:	ba 5c 00 00 00       	mov    $0x5c,%edx
    1772:	88 10                	mov    %dl,(%rax)
    1774:	e9 25 01 00 00       	jmpq   189e <escape_string+0x2ce>
    1779:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    177d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1781:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1785:	c6 00 5c             	movb   $0x5c,(%rax)
    1788:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    178c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1790:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1794:	ba 61 00 00 00       	mov    $0x61,%edx
    1799:	88 10                	mov    %dl,(%rax)
    179b:	e9 fe 00 00 00       	jmpq   189e <escape_string+0x2ce>
    17a0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17a4:	48 8d 50 01          	lea    0x1(%rax),%rdx
    17a8:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    17ac:	c6 00 5c             	movb   $0x5c,(%rax)
    17af:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17b3:	48 8d 50 01          	lea    0x1(%rax),%rdx
    17b7:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    17bb:	ba 62 00 00 00       	mov    $0x62,%edx
    17c0:	88 10                	mov    %dl,(%rax)
    17c2:	e9 d7 00 00 00       	jmpq   189e <escape_string+0x2ce>
    17c7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17cb:	48 8d 50 01          	lea    0x1(%rax),%rdx
    17cf:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    17d3:	c6 00 5c             	movb   $0x5c,(%rax)
    17d6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17da:	48 8d 50 01          	lea    0x1(%rax),%rdx
    17de:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    17e2:	ba 66 00 00 00       	mov    $0x66,%edx
    17e7:	88 10                	mov    %dl,(%rax)
    17e9:	e9 b0 00 00 00       	jmpq   189e <escape_string+0x2ce>
    17ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17f2:	48 8d 50 01          	lea    0x1(%rax),%rdx
    17f6:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    17fa:	c6 00 5c             	movb   $0x5c,(%rax)
    17fd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1801:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1805:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1809:	ba 6e 00 00 00       	mov    $0x6e,%edx
    180e:	88 10                	mov    %dl,(%rax)
    1810:	e9 89 00 00 00       	jmpq   189e <escape_string+0x2ce>
    1815:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1819:	48 8d 50 01          	lea    0x1(%rax),%rdx
    181d:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1821:	c6 00 5c             	movb   $0x5c,(%rax)
    1824:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1828:	48 8d 50 01          	lea    0x1(%rax),%rdx
    182c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1830:	ba 72 00 00 00       	mov    $0x72,%edx
    1835:	88 10                	mov    %dl,(%rax)
    1837:	eb 65                	jmp    189e <escape_string+0x2ce>
    1839:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    183d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1841:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1845:	c6 00 5c             	movb   $0x5c,(%rax)
    1848:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    184c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1850:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1854:	ba 74 00 00 00       	mov    $0x74,%edx
    1859:	88 10                	mov    %dl,(%rax)
    185b:	eb 41                	jmp    189e <escape_string+0x2ce>
    185d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1861:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1865:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1869:	c6 00 5c             	movb   $0x5c,(%rax)
    186c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1870:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1874:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1878:	ba 76 00 00 00       	mov    $0x76,%edx
    187d:	88 10                	mov    %dl,(%rax)
    187f:	eb 1d                	jmp    189e <escape_string+0x2ce>
    1881:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1885:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1889:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    188d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1891:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1895:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1899:	0f b6 11             	movzbl (%rcx),%edx
    189c:	88 10                	mov    %dl,(%rax)
    189e:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    18a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18a7:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    18ab:	0f 82 23 fe ff ff    	jb     16d4 <escape_string+0x104>
    18b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    18b5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    18b9:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    18bd:	c6 00 22             	movb   $0x22,(%rax)
    18c0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    18c4:	c6 00 00             	movb   $0x0,(%rax)
    18c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    18cb:	c9                   	leaveq 
    18cc:	c3                   	retq   

00000000000018cd <_test_equals_string>:
    18cd:	55                   	push   %rbp
    18ce:	48 89 e5             	mov    %rsp,%rbp
    18d1:	48 83 ec 40          	sub    $0x40,%rsp
    18d5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18d9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    18dd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    18e1:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    18e5:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
    18e9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    18ee:	74 28                	je     1918 <_test_equals_string+0x4b>
    18f0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    18f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18f8:	48 89 d6             	mov    %rdx,%rsi
    18fb:	48 89 c7             	mov    %rax,%rdi
    18fe:	e8 5d f7 ff ff       	callq  1060 <strcmp@plt>
    1903:	85 c0                	test   %eax,%eax
    1905:	75 11                	jne    1918 <_test_equals_string+0x4b>
    1907:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    190b:	48 89 c7             	mov    %rax,%rdi
    190e:	e8 53 fa ff ff       	callq  1366 <test_ok>
    1913:	e9 ad 00 00 00       	jmpq   19c5 <_test_equals_string+0xf8>
    1918:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    191d:	74 0e                	je     192d <_test_equals_string+0x60>
    191f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1923:	48 89 c7             	mov    %rax,%rdi
    1926:	e8 a5 fc ff ff       	callq  15d0 <escape_string>
    192b:	eb 07                	jmp    1934 <_test_equals_string+0x67>
    192d:	48 8b 05 3c 27 00 00 	mov    0x273c(%rip),%rax        # 4070 <null.0>
    1934:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1938:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    193c:	48 89 c7             	mov    %rax,%rdi
    193f:	e8 8c fc ff ff       	callq  15d0 <escape_string>
    1944:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1948:	8b 05 36 27 00 00    	mov    0x2736(%rip),%eax        # 4084 <test>
    194e:	83 c0 01             	add    $0x1,%eax
    1951:	89 05 2d 27 00 00    	mov    %eax,0x272d(%rip)        # 4084 <test>
    1957:	8b 05 27 27 00 00    	mov    0x2727(%rip),%eax        # 4084 <test>
    195d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1961:	8b 75 cc             	mov    -0x34(%rbp),%esi
    1964:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    1968:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    196c:	48 83 ec 08          	sub    $0x8,%rsp
    1970:	ff 75 f8             	pushq  -0x8(%rbp)
    1973:	49 89 f9             	mov    %rdi,%r9
    1976:	41 89 f0             	mov    %esi,%r8d
    1979:	89 c6                	mov    %eax,%esi
    197b:	48 8d 3d ee 08 00 00 	lea    0x8ee(%rip),%rdi        # 2270 <_IO_stdin_used+0x270>
    1982:	b8 00 00 00 00       	mov    $0x0,%eax
    1987:	e8 b4 f6 ff ff       	callq  1040 <printf@plt>
    198c:	48 83 c4 10          	add    $0x10,%rsp
    1990:	8b 05 f2 26 00 00    	mov    0x26f2(%rip),%eax        # 4088 <errors>
    1996:	83 c0 01             	add    $0x1,%eax
    1999:	89 05 e9 26 00 00    	mov    %eax,0x26e9(%rip)        # 4088 <errors>
    199f:	48 8b 05 ca 26 00 00 	mov    0x26ca(%rip),%rax        # 4070 <null.0>
    19a6:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    19aa:	74 0c                	je     19b8 <_test_equals_string+0xeb>
    19ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19b0:	48 89 c7             	mov    %rax,%rdi
    19b3:	e8 78 f6 ff ff       	callq  1030 <free@plt>
    19b8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    19bc:	48 89 c7             	mov    %rax,%rdi
    19bf:	e8 6c f6 ff ff       	callq  1030 <free@plt>
    19c4:	90                   	nop
    19c5:	90                   	nop
    19c6:	c9                   	leaveq 
    19c7:	c3                   	retq   

00000000000019c8 <_test_contains_string>:
    19c8:	55                   	push   %rbp
    19c9:	48 89 e5             	mov    %rsp,%rbp
    19cc:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
    19d3:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    19da:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
    19e1:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
    19e8:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
    19ef:	44 89 85 0c ff ff ff 	mov    %r8d,-0xf4(%rbp)
    19f6:	48 83 bd 28 ff ff ff 	cmpq   $0x0,-0xd8(%rbp)
    19fd:	00 
    19fe:	74 32                	je     1a32 <_test_contains_string+0x6a>
    1a00:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    1a07:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    1a0e:	48 89 d6             	mov    %rdx,%rsi
    1a11:	48 89 c7             	mov    %rax,%rdi
    1a14:	e8 87 f6 ff ff       	callq  10a0 <strstr@plt>
    1a19:	48 85 c0             	test   %rax,%rax
    1a1c:	74 14                	je     1a32 <_test_contains_string+0x6a>
    1a1e:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    1a25:	48 89 c7             	mov    %rax,%rdi
    1a28:	e8 39 f9 ff ff       	callq  1366 <test_ok>
    1a2d:	e9 91 00 00 00       	jmpq   1ac3 <_test_contains_string+0xfb>
    1a32:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    1a39:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    1a40:	48 89 d1             	mov    %rdx,%rcx
    1a43:	48 8d 15 5c 08 00 00 	lea    0x85c(%rip),%rdx        # 22a6 <_IO_stdin_used+0x2a6>
    1a4a:	be c8 00 00 00       	mov    $0xc8,%esi
    1a4f:	48 89 c7             	mov    %rax,%rdi
    1a52:	b8 00 00 00 00       	mov    $0x0,%eax
    1a57:	e8 f4 f5 ff ff       	callq  1050 <snprintf@plt>
    1a5c:	8b 05 22 26 00 00    	mov    0x2622(%rip),%eax        # 4084 <test>
    1a62:	83 c0 01             	add    $0x1,%eax
    1a65:	89 05 19 26 00 00    	mov    %eax,0x2619(%rip)        # 4084 <test>
    1a6b:	8b 05 13 26 00 00    	mov    0x2613(%rip),%eax        # 4084 <test>
    1a71:	48 8d bd 30 ff ff ff 	lea    -0xd0(%rbp),%rdi
    1a78:	8b b5 0c ff ff ff    	mov    -0xf4(%rbp),%esi
    1a7e:	48 8b 8d 10 ff ff ff 	mov    -0xf0(%rbp),%rcx
    1a85:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
    1a8c:	48 83 ec 08          	sub    $0x8,%rsp
    1a90:	ff b5 28 ff ff ff    	pushq  -0xd8(%rbp)
    1a96:	49 89 f9             	mov    %rdi,%r9
    1a99:	41 89 f0             	mov    %esi,%r8d
    1a9c:	89 c6                	mov    %eax,%esi
    1a9e:	48 8d 3d cb 07 00 00 	lea    0x7cb(%rip),%rdi        # 2270 <_IO_stdin_used+0x270>
    1aa5:	b8 00 00 00 00       	mov    $0x0,%eax
    1aaa:	e8 91 f5 ff ff       	callq  1040 <printf@plt>
    1aaf:	48 83 c4 10          	add    $0x10,%rsp
    1ab3:	8b 05 cf 25 00 00    	mov    0x25cf(%rip),%eax        # 4088 <errors>
    1ab9:	83 c0 01             	add    $0x1,%eax
    1abc:	89 05 c6 25 00 00    	mov    %eax,0x25c6(%rip)        # 4088 <errors>
    1ac2:	90                   	nop
    1ac3:	90                   	nop
    1ac4:	c9                   	leaveq 
    1ac5:	c3                   	retq   

0000000000001ac6 <_test_assert>:
    1ac6:	55                   	push   %rbp
    1ac7:	48 89 e5             	mov    %rsp,%rbp
    1aca:	48 83 ec 20          	sub    $0x20,%rsp
    1ace:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1ad1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1ad5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1ad9:	89 4d f8             	mov    %ecx,-0x8(%rbp)
    1adc:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1ae0:	74 0e                	je     1af0 <_test_assert+0x2a>
    1ae2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ae6:	48 89 c7             	mov    %rax,%rdi
    1ae9:	e8 78 f8 ff ff       	callq  1366 <test_ok>
    1aee:	eb 5c                	jmp    1b4c <_test_assert+0x86>
    1af0:	8b 05 8e 25 00 00    	mov    0x258e(%rip),%eax        # 4084 <test>
    1af6:	83 c0 01             	add    $0x1,%eax
    1af9:	89 05 85 25 00 00    	mov    %eax,0x2585(%rip)        # 4084 <test>
    1aff:	8b 05 7f 25 00 00    	mov    0x257f(%rip),%eax        # 4084 <test>
    1b05:	8b 7d f8             	mov    -0x8(%rbp),%edi
    1b08:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1b0c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1b10:	48 83 ec 08          	sub    $0x8,%rsp
    1b14:	48 8d 35 af 07 00 00 	lea    0x7af(%rip),%rsi        # 22ca <_IO_stdin_used+0x2ca>
    1b1b:	56                   	push   %rsi
    1b1c:	4c 8d 0d 98 07 00 00 	lea    0x798(%rip),%r9        # 22bb <_IO_stdin_used+0x2bb>
    1b23:	41 89 f8             	mov    %edi,%r8d
    1b26:	89 c6                	mov    %eax,%esi
    1b28:	48 8d 3d 41 07 00 00 	lea    0x741(%rip),%rdi        # 2270 <_IO_stdin_used+0x270>
    1b2f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b34:	e8 07 f5 ff ff       	callq  1040 <printf@plt>
    1b39:	48 83 c4 10          	add    $0x10,%rsp
    1b3d:	8b 05 45 25 00 00    	mov    0x2545(%rip),%eax        # 4088 <errors>
    1b43:	83 c0 01             	add    $0x1,%eax
    1b46:	89 05 3c 25 00 00    	mov    %eax,0x253c(%rip)        # 4088 <errors>
    1b4c:	90                   	nop
    1b4d:	c9                   	leaveq 
    1b4e:	c3                   	retq   

0000000000001b4f <test_end>:
    1b4f:	55                   	push   %rbp
    1b50:	48 89 e5             	mov    %rsp,%rbp
    1b53:	48 83 ec 10          	sub    $0x10,%rsp
    1b57:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1b5e:	8b 15 20 25 00 00    	mov    0x2520(%rip),%edx        # 4084 <test>
    1b64:	8b 05 fe 24 00 00    	mov    0x24fe(%rip),%eax        # 4068 <plan>
    1b6a:	39 c2                	cmp    %eax,%edx
    1b6c:	74 4b                	je     1bb9 <test_end+0x6a>
    1b6e:	8b 05 f4 24 00 00    	mov    0x24f4(%rip),%eax        # 4068 <plan>
    1b74:	85 c0                	test   %eax,%eax
    1b76:	79 1b                	jns    1b93 <test_end+0x44>
    1b78:	8b 05 06 25 00 00    	mov    0x2506(%rip),%eax        # 4084 <test>
    1b7e:	89 c6                	mov    %eax,%esi
    1b80:	48 8d 3d 5a 05 00 00 	lea    0x55a(%rip),%rdi        # 20e1 <_IO_stdin_used+0xe1>
    1b87:	b8 00 00 00 00       	mov    $0x0,%eax
    1b8c:	e8 af f4 ff ff       	callq  1040 <printf@plt>
    1b91:	eb 26                	jmp    1bb9 <test_end+0x6a>
    1b93:	8b 15 eb 24 00 00    	mov    0x24eb(%rip),%edx        # 4084 <test>
    1b99:	8b 05 c9 24 00 00    	mov    0x24c9(%rip),%eax        # 4068 <plan>
    1b9f:	89 c6                	mov    %eax,%esi
    1ba1:	48 8d 3d 28 07 00 00 	lea    0x728(%rip),%rdi        # 22d0 <_IO_stdin_used+0x2d0>
    1ba8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bad:	e8 8e f4 ff ff       	callq  1040 <printf@plt>
    1bb2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1bb9:	8b 05 c9 24 00 00    	mov    0x24c9(%rip),%eax        # 4088 <errors>
    1bbf:	85 c0                	test   %eax,%eax
    1bc1:	74 26                	je     1be9 <test_end+0x9a>
    1bc3:	8b 15 bb 24 00 00    	mov    0x24bb(%rip),%edx        # 4084 <test>
    1bc9:	8b 05 b9 24 00 00    	mov    0x24b9(%rip),%eax        # 4088 <errors>
    1bcf:	89 c6                	mov    %eax,%esi
    1bd1:	48 8d 3d 28 07 00 00 	lea    0x728(%rip),%rdi        # 2300 <_IO_stdin_used+0x300>
    1bd8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bdd:	e8 5e f4 ff ff       	callq  1040 <printf@plt>
    1be2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1be9:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1bed:	74 19                	je     1c08 <test_end+0xb9>
    1bef:	8b 05 8f 24 00 00    	mov    0x248f(%rip),%eax        # 4084 <test>
    1bf5:	89 c6                	mov    %eax,%esi
    1bf7:	48 8d 3d 4d 07 00 00 	lea    0x74d(%rip),%rdi        # 234b <_IO_stdin_used+0x34b>
    1bfe:	b8 00 00 00 00       	mov    $0x0,%eax
    1c03:	e8 38 f4 ff ff       	callq  1040 <printf@plt>
    1c08:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1c0c:	0f 94 c0             	sete   %al
    1c0f:	0f b6 c0             	movzbl %al,%eax
    1c12:	c9                   	leaveq 
    1c13:	c3                   	retq   
    1c14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1c1b:	00 00 00 
    1c1e:	66 90                	xchg   %ax,%ax

0000000000001c20 <__libc_csu_init>:
    1c20:	41 57                	push   %r15
    1c22:	4c 8d 3d bf 21 00 00 	lea    0x21bf(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    1c29:	41 56                	push   %r14
    1c2b:	49 89 d6             	mov    %rdx,%r14
    1c2e:	41 55                	push   %r13
    1c30:	49 89 f5             	mov    %rsi,%r13
    1c33:	41 54                	push   %r12
    1c35:	41 89 fc             	mov    %edi,%r12d
    1c38:	55                   	push   %rbp
    1c39:	48 8d 2d b0 21 00 00 	lea    0x21b0(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1c40:	53                   	push   %rbx
    1c41:	4c 29 fd             	sub    %r15,%rbp
    1c44:	48 83 ec 08          	sub    $0x8,%rsp
    1c48:	e8 b3 f3 ff ff       	callq  1000 <_init>
    1c4d:	48 c1 fd 03          	sar    $0x3,%rbp
    1c51:	74 1b                	je     1c6e <__libc_csu_init+0x4e>
    1c53:	31 db                	xor    %ebx,%ebx
    1c55:	0f 1f 00             	nopl   (%rax)
    1c58:	4c 89 f2             	mov    %r14,%rdx
    1c5b:	4c 89 ee             	mov    %r13,%rsi
    1c5e:	44 89 e7             	mov    %r12d,%edi
    1c61:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1c65:	48 83 c3 01          	add    $0x1,%rbx
    1c69:	48 39 dd             	cmp    %rbx,%rbp
    1c6c:	75 ea                	jne    1c58 <__libc_csu_init+0x38>
    1c6e:	48 83 c4 08          	add    $0x8,%rsp
    1c72:	5b                   	pop    %rbx
    1c73:	5d                   	pop    %rbp
    1c74:	41 5c                	pop    %r12
    1c76:	41 5d                	pop    %r13
    1c78:	41 5e                	pop    %r14
    1c7a:	41 5f                	pop    %r15
    1c7c:	c3                   	retq   
    1c7d:	0f 1f 00             	nopl   (%rax)

0000000000001c80 <__libc_csu_fini>:
    1c80:	c3                   	retq   

Disassembly of section .fini:

0000000000001c84 <_fini>:
    1c84:	48 83 ec 08          	sub    $0x8,%rsp
    1c88:	48 83 c4 08          	add    $0x8,%rsp
    1c8c:	c3                   	retq   
