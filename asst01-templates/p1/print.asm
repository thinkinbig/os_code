
./print:     file format elf64-x86-64


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
    10cf:	4c 8d 05 8a 0a 00 00 	lea    0xa8a(%rip),%r8        # 1b60 <__libc_csu_fini>
    10d6:	48 8d 0d 23 0a 00 00 	lea    0xa23(%rip),%rcx        # 1b00 <__libc_csu_init>
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
    11a9:	48 8d 3d 54 0e 00 00 	lea    0xe54(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11b0:	e8 cc 00 00 00       	callq  1281 <test_start>
    11b5:	48 8d 35 50 0e 00 00 	lea    0xe50(%rip),%rsi        # 200c <_IO_stdin_used+0xc>
    11bc:	bf 2a 00 00 00       	mov    $0x2a,%edi
    11c1:	e8 0c 00 00 00       	callq  11d2 <print_line>
    11c6:	b8 00 00 00 00       	mov    $0x0,%eax
    11cb:	e8 5f 08 00 00       	callq  1a2f <test_end>
    11d0:	5d                   	pop    %rbp
    11d1:	c3                   	retq   

00000000000011d2 <print_line>:
    11d2:	55                   	push   %rbp
    11d3:	48 89 e5             	mov    %rsp,%rbp
    11d6:	48 83 ec 10          	sub    $0x10,%rsp
    11da:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11de:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    11e2:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    11e7:	74 1e                	je     1207 <print_line+0x35>
    11e9:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11f1:	48 89 c6             	mov    %rax,%rsi
    11f4:	48 8d 3d 1e 0e 00 00 	lea    0xe1e(%rip),%rdi        # 2019 <_IO_stdin_used+0x19>
    11fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1200:	e8 3b fe ff ff       	callq  1040 <printf@plt>
    1205:	eb 01                	jmp    1208 <print_line+0x36>
    1207:	90                   	nop
    1208:	c9                   	leaveq 
    1209:	c3                   	retq   

000000000000120a <_test_failed_message>:
    120a:	55                   	push   %rbp
    120b:	48 89 e5             	mov    %rsp,%rbp
    120e:	48 83 ec 20          	sub    $0x20,%rsp
    1212:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1216:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    121a:	89 55 ec             	mov    %edx,-0x14(%rbp)
    121d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1221:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1224:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1228:	48 89 c6             	mov    %rax,%rsi
    122b:	48 8d 3d f6 0d 00 00 	lea    0xdf6(%rip),%rdi        # 2028 <_IO_stdin_used+0x28>
    1232:	b8 00 00 00 00       	mov    $0x0,%eax
    1237:	e8 04 fe ff ff       	callq  1040 <printf@plt>
    123c:	bf 01 00 00 00       	mov    $0x1,%edi
    1241:	e8 4a fe ff ff       	callq  1090 <exit@plt>

0000000000001246 <test_ok>:
    1246:	55                   	push   %rbp
    1247:	48 89 e5             	mov    %rsp,%rbp
    124a:	48 83 ec 10          	sub    $0x10,%rsp
    124e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1252:	8b 05 2c 2e 00 00    	mov    0x2e2c(%rip),%eax        # 4084 <test>
    1258:	83 c0 01             	add    $0x1,%eax
    125b:	89 05 23 2e 00 00    	mov    %eax,0x2e23(%rip)        # 4084 <test>
    1261:	8b 05 1d 2e 00 00    	mov    0x2e1d(%rip),%eax        # 4084 <test>
    1267:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    126b:	89 c6                	mov    %eax,%esi
    126d:	48 8d 3d ce 0d 00 00 	lea    0xdce(%rip),%rdi        # 2042 <_IO_stdin_used+0x42>
    1274:	b8 00 00 00 00       	mov    $0x0,%eax
    1279:	e8 c2 fd ff ff       	callq  1040 <printf@plt>
    127e:	90                   	nop
    127f:	c9                   	leaveq 
    1280:	c3                   	retq   

0000000000001281 <test_start>:
    1281:	55                   	push   %rbp
    1282:	48 89 e5             	mov    %rsp,%rbp
    1285:	48 83 ec 10          	sub    $0x10,%rsp
    1289:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    128d:	48 8b 05 e4 2d 00 00 	mov    0x2de4(%rip),%rax        # 4078 <stdout@@GLIBC_2.2.5>
    1294:	b9 00 00 00 00       	mov    $0x0,%ecx
    1299:	ba 01 00 00 00       	mov    $0x1,%edx
    129e:	be 00 00 00 00       	mov    $0x0,%esi
    12a3:	48 89 c7             	mov    %rax,%rdi
    12a6:	e8 d5 fd ff ff       	callq  1080 <setvbuf@plt>
    12ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12af:	48 89 c6             	mov    %rax,%rsi
    12b2:	48 8d 3d 95 0d 00 00 	lea    0xd95(%rip),%rdi        # 204e <_IO_stdin_used+0x4e>
    12b9:	b8 00 00 00 00       	mov    $0x0,%eax
    12be:	e8 7d fd ff ff       	callq  1040 <printf@plt>
    12c3:	90                   	nop
    12c4:	c9                   	leaveq 
    12c5:	c3                   	retq   

00000000000012c6 <test_plan>:
    12c6:	55                   	push   %rbp
    12c7:	48 89 e5             	mov    %rsp,%rbp
    12ca:	48 83 ec 10          	sub    $0x10,%rsp
    12ce:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12d1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12d4:	89 05 8e 2d 00 00    	mov    %eax,0x2d8e(%rip)        # 4068 <plan>
    12da:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12dd:	89 c6                	mov    %eax,%esi
    12df:	48 8d 3d 7b 0d 00 00 	lea    0xd7b(%rip),%rdi        # 2061 <_IO_stdin_used+0x61>
    12e6:	b8 00 00 00 00       	mov    $0x0,%eax
    12eb:	e8 50 fd ff ff       	callq  1040 <printf@plt>
    12f0:	90                   	nop
    12f1:	c9                   	leaveq 
    12f2:	c3                   	retq   

00000000000012f3 <_test_equals_int64>:
    12f3:	55                   	push   %rbp
    12f4:	48 89 e5             	mov    %rsp,%rbp
    12f7:	48 83 ec 30          	sub    $0x30,%rsp
    12fb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12ff:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1303:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1307:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    130b:	44 89 45 dc          	mov    %r8d,-0x24(%rbp)
    130f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1313:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    1317:	75 0e                	jne    1327 <_test_equals_int64+0x34>
    1319:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    131d:	48 89 c7             	mov    %rax,%rdi
    1320:	e8 21 ff ff ff       	callq  1246 <test_ok>
    1325:	eb 57                	jmp    137e <_test_equals_int64+0x8b>
    1327:	8b 05 57 2d 00 00    	mov    0x2d57(%rip),%eax        # 4084 <test>
    132d:	83 c0 01             	add    $0x1,%eax
    1330:	89 05 4e 2d 00 00    	mov    %eax,0x2d4e(%rip)        # 4084 <test>
    1336:	8b 05 48 2d 00 00    	mov    0x2d48(%rip),%eax        # 4084 <test>
    133c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1340:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1343:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1347:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    134b:	48 83 ec 08          	sub    $0x8,%rsp
    134f:	ff 75 f8             	pushq  -0x8(%rbp)
    1352:	49 89 f9             	mov    %rdi,%r9
    1355:	41 89 f0             	mov    %esi,%r8d
    1358:	89 c6                	mov    %eax,%esi
    135a:	48 8d 3d 07 0d 00 00 	lea    0xd07(%rip),%rdi        # 2068 <_IO_stdin_used+0x68>
    1361:	b8 00 00 00 00       	mov    $0x0,%eax
    1366:	e8 d5 fc ff ff       	callq  1040 <printf@plt>
    136b:	48 83 c4 10          	add    $0x10,%rsp
    136f:	8b 05 13 2d 00 00    	mov    0x2d13(%rip),%eax        # 4088 <errors>
    1375:	83 c0 01             	add    $0x1,%eax
    1378:	89 05 0a 2d 00 00    	mov    %eax,0x2d0a(%rip)        # 4088 <errors>
    137e:	90                   	nop
    137f:	c9                   	leaveq 
    1380:	c3                   	retq   

0000000000001381 <_test_equals_int>:
    1381:	55                   	push   %rbp
    1382:	48 89 e5             	mov    %rsp,%rbp
    1385:	48 83 ec 20          	sub    $0x20,%rsp
    1389:	89 7d fc             	mov    %edi,-0x4(%rbp)
    138c:	89 75 f8             	mov    %esi,-0x8(%rbp)
    138f:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    1393:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    1397:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    139b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    139e:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    13a1:	75 0e                	jne    13b1 <_test_equals_int+0x30>
    13a3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13a7:	48 89 c7             	mov    %rax,%rdi
    13aa:	e8 97 fe ff ff       	callq  1246 <test_ok>
    13af:	eb 58                	jmp    1409 <_test_equals_int+0x88>
    13b1:	8b 05 cd 2c 00 00    	mov    0x2ccd(%rip),%eax        # 4084 <test>
    13b7:	83 c0 01             	add    $0x1,%eax
    13ba:	89 05 c4 2c 00 00    	mov    %eax,0x2cc4(%rip)        # 4084 <test>
    13c0:	8b 05 be 2c 00 00    	mov    0x2cbe(%rip),%eax        # 4084 <test>
    13c6:	44 8b 45 f8          	mov    -0x8(%rbp),%r8d
    13ca:	8b 7d e4             	mov    -0x1c(%rbp),%edi
    13cd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    13d1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    13d5:	48 83 ec 08          	sub    $0x8,%rsp
    13d9:	8b 75 fc             	mov    -0x4(%rbp),%esi
    13dc:	56                   	push   %rsi
    13dd:	45 89 c1             	mov    %r8d,%r9d
    13e0:	41 89 f8             	mov    %edi,%r8d
    13e3:	89 c6                	mov    %eax,%esi
    13e5:	48 8d 3d b4 0c 00 00 	lea    0xcb4(%rip),%rdi        # 20a0 <_IO_stdin_used+0xa0>
    13ec:	b8 00 00 00 00       	mov    $0x0,%eax
    13f1:	e8 4a fc ff ff       	callq  1040 <printf@plt>
    13f6:	48 83 c4 10          	add    $0x10,%rsp
    13fa:	8b 05 88 2c 00 00    	mov    0x2c88(%rip),%eax        # 4088 <errors>
    1400:	83 c0 01             	add    $0x1,%eax
    1403:	89 05 7f 2c 00 00    	mov    %eax,0x2c7f(%rip)        # 4088 <errors>
    1409:	90                   	nop
    140a:	c9                   	leaveq 
    140b:	c3                   	retq   

000000000000140c <_test_equals_ptr>:
    140c:	55                   	push   %rbp
    140d:	48 89 e5             	mov    %rsp,%rbp
    1410:	48 83 ec 30          	sub    $0x30,%rsp
    1414:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1418:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    141c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1420:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    1424:	44 89 45 dc          	mov    %r8d,-0x24(%rbp)
    1428:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    142c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    1430:	75 0e                	jne    1440 <_test_equals_ptr+0x34>
    1432:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1436:	48 89 c7             	mov    %rax,%rdi
    1439:	e8 08 fe ff ff       	callq  1246 <test_ok>
    143e:	eb 57                	jmp    1497 <_test_equals_ptr+0x8b>
    1440:	8b 05 3e 2c 00 00    	mov    0x2c3e(%rip),%eax        # 4084 <test>
    1446:	83 c0 01             	add    $0x1,%eax
    1449:	89 05 35 2c 00 00    	mov    %eax,0x2c35(%rip)        # 4084 <test>
    144f:	8b 05 2f 2c 00 00    	mov    0x2c2f(%rip),%eax        # 4084 <test>
    1455:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1459:	8b 75 dc             	mov    -0x24(%rbp),%esi
    145c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1460:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1464:	48 83 ec 08          	sub    $0x8,%rsp
    1468:	ff 75 f8             	pushq  -0x8(%rbp)
    146b:	49 89 f9             	mov    %rdi,%r9
    146e:	41 89 f0             	mov    %esi,%r8d
    1471:	89 c6                	mov    %eax,%esi
    1473:	48 8d 3d 5e 0c 00 00 	lea    0xc5e(%rip),%rdi        # 20d8 <_IO_stdin_used+0xd8>
    147a:	b8 00 00 00 00       	mov    $0x0,%eax
    147f:	e8 bc fb ff ff       	callq  1040 <printf@plt>
    1484:	48 83 c4 10          	add    $0x10,%rsp
    1488:	8b 05 fa 2b 00 00    	mov    0x2bfa(%rip),%eax        # 4088 <errors>
    148e:	83 c0 01             	add    $0x1,%eax
    1491:	89 05 f1 2b 00 00    	mov    %eax,0x2bf1(%rip)        # 4088 <errors>
    1497:	90                   	nop
    1498:	c9                   	leaveq 
    1499:	c3                   	retq   

000000000000149a <_test_failed>:
    149a:	55                   	push   %rbp
    149b:	48 89 e5             	mov    %rsp,%rbp
    149e:	8b 05 e4 2b 00 00    	mov    0x2be4(%rip),%eax        # 4088 <errors>
    14a4:	83 c0 01             	add    $0x1,%eax
    14a7:	89 05 db 2b 00 00    	mov    %eax,0x2bdb(%rip)        # 4088 <errors>
    14ad:	90                   	nop
    14ae:	5d                   	pop    %rbp
    14af:	c3                   	retq   

00000000000014b0 <escape_string>:
    14b0:	55                   	push   %rbp
    14b1:	48 89 e5             	mov    %rsp,%rbp
    14b4:	48 83 ec 40          	sub    $0x40,%rsp
    14b8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    14bc:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    14c3:	00 
    14c4:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    14cb:	00 
    14cc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    14d0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    14d4:	e9 8d 00 00 00       	jmpq   1566 <escape_string+0xb6>
    14d9:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    14de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14e2:	0f b6 00             	movzbl (%rax),%eax
    14e5:	0f be c0             	movsbl %al,%eax
    14e8:	83 f8 22             	cmp    $0x22,%eax
    14eb:	7f 2f                	jg     151c <escape_string+0x6c>
    14ed:	83 f8 07             	cmp    $0x7,%eax
    14f0:	7c 6f                	jl     1561 <escape_string+0xb1>
    14f2:	83 e8 07             	sub    $0x7,%eax
    14f5:	83 f8 1b             	cmp    $0x1b,%eax
    14f8:	77 67                	ja     1561 <escape_string+0xb1>
    14fa:	89 c0                	mov    %eax,%eax
    14fc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1503:	00 
    1504:	48 8d 05 05 0c 00 00 	lea    0xc05(%rip),%rax        # 2110 <_IO_stdin_used+0x110>
    150b:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    150e:	48 98                	cltq   
    1510:	48 8d 15 f9 0b 00 00 	lea    0xbf9(%rip),%rdx        # 2110 <_IO_stdin_used+0x110>
    1517:	48 01 d0             	add    %rdx,%rax
    151a:	ff e0                	jmpq   *%rax
    151c:	83 f8 5c             	cmp    $0x5c,%eax
    151f:	74 09                	je     152a <escape_string+0x7a>
    1521:	eb 3e                	jmp    1561 <escape_string+0xb1>
    1523:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1528:	eb 36                	jmp    1560 <escape_string+0xb0>
    152a:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    152f:	eb 2f                	jmp    1560 <escape_string+0xb0>
    1531:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1536:	eb 28                	jmp    1560 <escape_string+0xb0>
    1538:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    153d:	eb 21                	jmp    1560 <escape_string+0xb0>
    153f:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1544:	eb 1a                	jmp    1560 <escape_string+0xb0>
    1546:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    154b:	eb 13                	jmp    1560 <escape_string+0xb0>
    154d:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1552:	eb 0c                	jmp    1560 <escape_string+0xb0>
    1554:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1559:	eb 05                	jmp    1560 <escape_string+0xb0>
    155b:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1560:	90                   	nop
    1561:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1566:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    156a:	0f b6 00             	movzbl (%rax),%eax
    156d:	84 c0                	test   %al,%al
    156f:	0f 85 64 ff ff ff    	jne    14d9 <escape_string+0x29>
    1575:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1579:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    157d:	48 01 d0             	add    %rdx,%rax
    1580:	48 83 c0 03          	add    $0x3,%rax
    1584:	48 89 c7             	mov    %rax,%rdi
    1587:	e8 e4 fa ff ff       	callq  1070 <malloc@plt>
    158c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1590:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1594:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1598:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    159c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    15a0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    15a4:	c6 00 22             	movb   $0x22,(%rax)
    15a7:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    15ae:	00 
    15af:	e9 cf 01 00 00       	jmpq   1783 <escape_string+0x2d3>
    15b4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    15b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15bc:	48 01 d0             	add    %rdx,%rax
    15bf:	0f b6 00             	movzbl (%rax),%eax
    15c2:	0f be c0             	movsbl %al,%eax
    15c5:	83 f8 22             	cmp    $0x22,%eax
    15c8:	7f 37                	jg     1601 <escape_string+0x151>
    15ca:	83 f8 07             	cmp    $0x7,%eax
    15cd:	0f 8c 8e 01 00 00    	jl     1761 <escape_string+0x2b1>
    15d3:	83 e8 07             	sub    $0x7,%eax
    15d6:	83 f8 1b             	cmp    $0x1b,%eax
    15d9:	0f 87 82 01 00 00    	ja     1761 <escape_string+0x2b1>
    15df:	89 c0                	mov    %eax,%eax
    15e1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    15e8:	00 
    15e9:	48 8d 05 90 0b 00 00 	lea    0xb90(%rip),%rax        # 2180 <_IO_stdin_used+0x180>
    15f0:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    15f3:	48 98                	cltq   
    15f5:	48 8d 15 84 0b 00 00 	lea    0xb84(%rip),%rdx        # 2180 <_IO_stdin_used+0x180>
    15fc:	48 01 d0             	add    %rdx,%rax
    15ff:	ff e0                	jmpq   *%rax
    1601:	83 f8 5c             	cmp    $0x5c,%eax
    1604:	74 2c                	je     1632 <escape_string+0x182>
    1606:	e9 56 01 00 00       	jmpq   1761 <escape_string+0x2b1>
    160b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    160f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1613:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1617:	c6 00 5c             	movb   $0x5c,(%rax)
    161a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    161e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1622:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1626:	ba 22 00 00 00       	mov    $0x22,%edx
    162b:	88 10                	mov    %dl,(%rax)
    162d:	e9 4c 01 00 00       	jmpq   177e <escape_string+0x2ce>
    1632:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1636:	48 8d 50 01          	lea    0x1(%rax),%rdx
    163a:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    163e:	c6 00 5c             	movb   $0x5c,(%rax)
    1641:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1645:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1649:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    164d:	ba 5c 00 00 00       	mov    $0x5c,%edx
    1652:	88 10                	mov    %dl,(%rax)
    1654:	e9 25 01 00 00       	jmpq   177e <escape_string+0x2ce>
    1659:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    165d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1661:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1665:	c6 00 5c             	movb   $0x5c,(%rax)
    1668:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    166c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1670:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1674:	ba 61 00 00 00       	mov    $0x61,%edx
    1679:	88 10                	mov    %dl,(%rax)
    167b:	e9 fe 00 00 00       	jmpq   177e <escape_string+0x2ce>
    1680:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1684:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1688:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    168c:	c6 00 5c             	movb   $0x5c,(%rax)
    168f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1693:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1697:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    169b:	ba 62 00 00 00       	mov    $0x62,%edx
    16a0:	88 10                	mov    %dl,(%rax)
    16a2:	e9 d7 00 00 00       	jmpq   177e <escape_string+0x2ce>
    16a7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16ab:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16af:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    16b3:	c6 00 5c             	movb   $0x5c,(%rax)
    16b6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16ba:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16be:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    16c2:	ba 66 00 00 00       	mov    $0x66,%edx
    16c7:	88 10                	mov    %dl,(%rax)
    16c9:	e9 b0 00 00 00       	jmpq   177e <escape_string+0x2ce>
    16ce:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16d2:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16d6:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    16da:	c6 00 5c             	movb   $0x5c,(%rax)
    16dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16e1:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16e5:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    16e9:	ba 6e 00 00 00       	mov    $0x6e,%edx
    16ee:	88 10                	mov    %dl,(%rax)
    16f0:	e9 89 00 00 00       	jmpq   177e <escape_string+0x2ce>
    16f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16f9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    16fd:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1701:	c6 00 5c             	movb   $0x5c,(%rax)
    1704:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1708:	48 8d 50 01          	lea    0x1(%rax),%rdx
    170c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1710:	ba 72 00 00 00       	mov    $0x72,%edx
    1715:	88 10                	mov    %dl,(%rax)
    1717:	eb 65                	jmp    177e <escape_string+0x2ce>
    1719:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    171d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1721:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1725:	c6 00 5c             	movb   $0x5c,(%rax)
    1728:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    172c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1730:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1734:	ba 74 00 00 00       	mov    $0x74,%edx
    1739:	88 10                	mov    %dl,(%rax)
    173b:	eb 41                	jmp    177e <escape_string+0x2ce>
    173d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1741:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1745:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1749:	c6 00 5c             	movb   $0x5c,(%rax)
    174c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1750:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1754:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1758:	ba 76 00 00 00       	mov    $0x76,%edx
    175d:	88 10                	mov    %dl,(%rax)
    175f:	eb 1d                	jmp    177e <escape_string+0x2ce>
    1761:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1765:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1769:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    176d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1771:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1775:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1779:	0f b6 11             	movzbl (%rcx),%edx
    177c:	88 10                	mov    %dl,(%rax)
    177e:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    1783:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1787:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    178b:	0f 82 23 fe ff ff    	jb     15b4 <escape_string+0x104>
    1791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1795:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1799:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    179d:	c6 00 22             	movb   $0x22,(%rax)
    17a0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17a4:	c6 00 00             	movb   $0x0,(%rax)
    17a7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    17ab:	c9                   	leaveq 
    17ac:	c3                   	retq   

00000000000017ad <_test_equals_string>:
    17ad:	55                   	push   %rbp
    17ae:	48 89 e5             	mov    %rsp,%rbp
    17b1:	48 83 ec 40          	sub    $0x40,%rsp
    17b5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17b9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    17bd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    17c1:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    17c5:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
    17c9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    17ce:	74 28                	je     17f8 <_test_equals_string+0x4b>
    17d0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    17d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17d8:	48 89 d6             	mov    %rdx,%rsi
    17db:	48 89 c7             	mov    %rax,%rdi
    17de:	e8 7d f8 ff ff       	callq  1060 <strcmp@plt>
    17e3:	85 c0                	test   %eax,%eax
    17e5:	75 11                	jne    17f8 <_test_equals_string+0x4b>
    17e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17eb:	48 89 c7             	mov    %rax,%rdi
    17ee:	e8 53 fa ff ff       	callq  1246 <test_ok>
    17f3:	e9 ad 00 00 00       	jmpq   18a5 <_test_equals_string+0xf8>
    17f8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    17fd:	74 0e                	je     180d <_test_equals_string+0x60>
    17ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1803:	48 89 c7             	mov    %rax,%rdi
    1806:	e8 a5 fc ff ff       	callq  14b0 <escape_string>
    180b:	eb 07                	jmp    1814 <_test_equals_string+0x67>
    180d:	48 8b 05 5c 28 00 00 	mov    0x285c(%rip),%rax        # 4070 <null.0>
    1814:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1818:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    181c:	48 89 c7             	mov    %rax,%rdi
    181f:	e8 8c fc ff ff       	callq  14b0 <escape_string>
    1824:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1828:	8b 05 56 28 00 00    	mov    0x2856(%rip),%eax        # 4084 <test>
    182e:	83 c0 01             	add    $0x1,%eax
    1831:	89 05 4d 28 00 00    	mov    %eax,0x284d(%rip)        # 4084 <test>
    1837:	8b 05 47 28 00 00    	mov    0x2847(%rip),%eax        # 4084 <test>
    183d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    1841:	8b 75 cc             	mov    -0x34(%rbp),%esi
    1844:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    1848:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    184c:	48 83 ec 08          	sub    $0x8,%rsp
    1850:	ff 75 f8             	pushq  -0x8(%rbp)
    1853:	49 89 f9             	mov    %rdi,%r9
    1856:	41 89 f0             	mov    %esi,%r8d
    1859:	89 c6                	mov    %eax,%esi
    185b:	48 8d 3d 8e 09 00 00 	lea    0x98e(%rip),%rdi        # 21f0 <_IO_stdin_used+0x1f0>
    1862:	b8 00 00 00 00       	mov    $0x0,%eax
    1867:	e8 d4 f7 ff ff       	callq  1040 <printf@plt>
    186c:	48 83 c4 10          	add    $0x10,%rsp
    1870:	8b 05 12 28 00 00    	mov    0x2812(%rip),%eax        # 4088 <errors>
    1876:	83 c0 01             	add    $0x1,%eax
    1879:	89 05 09 28 00 00    	mov    %eax,0x2809(%rip)        # 4088 <errors>
    187f:	48 8b 05 ea 27 00 00 	mov    0x27ea(%rip),%rax        # 4070 <null.0>
    1886:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    188a:	74 0c                	je     1898 <_test_equals_string+0xeb>
    188c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1890:	48 89 c7             	mov    %rax,%rdi
    1893:	e8 98 f7 ff ff       	callq  1030 <free@plt>
    1898:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    189c:	48 89 c7             	mov    %rax,%rdi
    189f:	e8 8c f7 ff ff       	callq  1030 <free@plt>
    18a4:	90                   	nop
    18a5:	90                   	nop
    18a6:	c9                   	leaveq 
    18a7:	c3                   	retq   

00000000000018a8 <_test_contains_string>:
    18a8:	55                   	push   %rbp
    18a9:	48 89 e5             	mov    %rsp,%rbp
    18ac:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
    18b3:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    18ba:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
    18c1:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
    18c8:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
    18cf:	44 89 85 0c ff ff ff 	mov    %r8d,-0xf4(%rbp)
    18d6:	48 83 bd 28 ff ff ff 	cmpq   $0x0,-0xd8(%rbp)
    18dd:	00 
    18de:	74 32                	je     1912 <_test_contains_string+0x6a>
    18e0:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    18e7:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    18ee:	48 89 d6             	mov    %rdx,%rsi
    18f1:	48 89 c7             	mov    %rax,%rdi
    18f4:	e8 a7 f7 ff ff       	callq  10a0 <strstr@plt>
    18f9:	48 85 c0             	test   %rax,%rax
    18fc:	74 14                	je     1912 <_test_contains_string+0x6a>
    18fe:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    1905:	48 89 c7             	mov    %rax,%rdi
    1908:	e8 39 f9 ff ff       	callq  1246 <test_ok>
    190d:	e9 91 00 00 00       	jmpq   19a3 <_test_contains_string+0xfb>
    1912:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
    1919:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    1920:	48 89 d1             	mov    %rdx,%rcx
    1923:	48 8d 15 fc 08 00 00 	lea    0x8fc(%rip),%rdx        # 2226 <_IO_stdin_used+0x226>
    192a:	be c8 00 00 00       	mov    $0xc8,%esi
    192f:	48 89 c7             	mov    %rax,%rdi
    1932:	b8 00 00 00 00       	mov    $0x0,%eax
    1937:	e8 14 f7 ff ff       	callq  1050 <snprintf@plt>
    193c:	8b 05 42 27 00 00    	mov    0x2742(%rip),%eax        # 4084 <test>
    1942:	83 c0 01             	add    $0x1,%eax
    1945:	89 05 39 27 00 00    	mov    %eax,0x2739(%rip)        # 4084 <test>
    194b:	8b 05 33 27 00 00    	mov    0x2733(%rip),%eax        # 4084 <test>
    1951:	48 8d bd 30 ff ff ff 	lea    -0xd0(%rbp),%rdi
    1958:	8b b5 0c ff ff ff    	mov    -0xf4(%rbp),%esi
    195e:	48 8b 8d 10 ff ff ff 	mov    -0xf0(%rbp),%rcx
    1965:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
    196c:	48 83 ec 08          	sub    $0x8,%rsp
    1970:	ff b5 28 ff ff ff    	pushq  -0xd8(%rbp)
    1976:	49 89 f9             	mov    %rdi,%r9
    1979:	41 89 f0             	mov    %esi,%r8d
    197c:	89 c6                	mov    %eax,%esi
    197e:	48 8d 3d 6b 08 00 00 	lea    0x86b(%rip),%rdi        # 21f0 <_IO_stdin_used+0x1f0>
    1985:	b8 00 00 00 00       	mov    $0x0,%eax
    198a:	e8 b1 f6 ff ff       	callq  1040 <printf@plt>
    198f:	48 83 c4 10          	add    $0x10,%rsp
    1993:	8b 05 ef 26 00 00    	mov    0x26ef(%rip),%eax        # 4088 <errors>
    1999:	83 c0 01             	add    $0x1,%eax
    199c:	89 05 e6 26 00 00    	mov    %eax,0x26e6(%rip)        # 4088 <errors>
    19a2:	90                   	nop
    19a3:	90                   	nop
    19a4:	c9                   	leaveq 
    19a5:	c3                   	retq   

00000000000019a6 <_test_assert>:
    19a6:	55                   	push   %rbp
    19a7:	48 89 e5             	mov    %rsp,%rbp
    19aa:	48 83 ec 20          	sub    $0x20,%rsp
    19ae:	89 7d fc             	mov    %edi,-0x4(%rbp)
    19b1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    19b5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    19b9:	89 4d f8             	mov    %ecx,-0x8(%rbp)
    19bc:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    19c0:	74 0e                	je     19d0 <_test_assert+0x2a>
    19c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    19c6:	48 89 c7             	mov    %rax,%rdi
    19c9:	e8 78 f8 ff ff       	callq  1246 <test_ok>
    19ce:	eb 5c                	jmp    1a2c <_test_assert+0x86>
    19d0:	8b 05 ae 26 00 00    	mov    0x26ae(%rip),%eax        # 4084 <test>
    19d6:	83 c0 01             	add    $0x1,%eax
    19d9:	89 05 a5 26 00 00    	mov    %eax,0x26a5(%rip)        # 4084 <test>
    19df:	8b 05 9f 26 00 00    	mov    0x269f(%rip),%eax        # 4084 <test>
    19e5:	8b 7d f8             	mov    -0x8(%rbp),%edi
    19e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    19ec:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    19f0:	48 83 ec 08          	sub    $0x8,%rsp
    19f4:	48 8d 35 4f 08 00 00 	lea    0x84f(%rip),%rsi        # 224a <_IO_stdin_used+0x24a>
    19fb:	56                   	push   %rsi
    19fc:	4c 8d 0d 38 08 00 00 	lea    0x838(%rip),%r9        # 223b <_IO_stdin_used+0x23b>
    1a03:	41 89 f8             	mov    %edi,%r8d
    1a06:	89 c6                	mov    %eax,%esi
    1a08:	48 8d 3d e1 07 00 00 	lea    0x7e1(%rip),%rdi        # 21f0 <_IO_stdin_used+0x1f0>
    1a0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a14:	e8 27 f6 ff ff       	callq  1040 <printf@plt>
    1a19:	48 83 c4 10          	add    $0x10,%rsp
    1a1d:	8b 05 65 26 00 00    	mov    0x2665(%rip),%eax        # 4088 <errors>
    1a23:	83 c0 01             	add    $0x1,%eax
    1a26:	89 05 5c 26 00 00    	mov    %eax,0x265c(%rip)        # 4088 <errors>
    1a2c:	90                   	nop
    1a2d:	c9                   	leaveq 
    1a2e:	c3                   	retq   

0000000000001a2f <test_end>:
    1a2f:	55                   	push   %rbp
    1a30:	48 89 e5             	mov    %rsp,%rbp
    1a33:	48 83 ec 10          	sub    $0x10,%rsp
    1a37:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1a3e:	8b 15 40 26 00 00    	mov    0x2640(%rip),%edx        # 4084 <test>
    1a44:	8b 05 1e 26 00 00    	mov    0x261e(%rip),%eax        # 4068 <plan>
    1a4a:	39 c2                	cmp    %eax,%edx
    1a4c:	74 4b                	je     1a99 <test_end+0x6a>
    1a4e:	8b 05 14 26 00 00    	mov    0x2614(%rip),%eax        # 4068 <plan>
    1a54:	85 c0                	test   %eax,%eax
    1a56:	79 1b                	jns    1a73 <test_end+0x44>
    1a58:	8b 05 26 26 00 00    	mov    0x2626(%rip),%eax        # 4084 <test>
    1a5e:	89 c6                	mov    %eax,%esi
    1a60:	48 8d 3d fa 05 00 00 	lea    0x5fa(%rip),%rdi        # 2061 <_IO_stdin_used+0x61>
    1a67:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6c:	e8 cf f5 ff ff       	callq  1040 <printf@plt>
    1a71:	eb 26                	jmp    1a99 <test_end+0x6a>
    1a73:	8b 15 0b 26 00 00    	mov    0x260b(%rip),%edx        # 4084 <test>
    1a79:	8b 05 e9 25 00 00    	mov    0x25e9(%rip),%eax        # 4068 <plan>
    1a7f:	89 c6                	mov    %eax,%esi
    1a81:	48 8d 3d c8 07 00 00 	lea    0x7c8(%rip),%rdi        # 2250 <_IO_stdin_used+0x250>
    1a88:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8d:	e8 ae f5 ff ff       	callq  1040 <printf@plt>
    1a92:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1a99:	8b 05 e9 25 00 00    	mov    0x25e9(%rip),%eax        # 4088 <errors>
    1a9f:	85 c0                	test   %eax,%eax
    1aa1:	74 26                	je     1ac9 <test_end+0x9a>
    1aa3:	8b 15 db 25 00 00    	mov    0x25db(%rip),%edx        # 4084 <test>
    1aa9:	8b 05 d9 25 00 00    	mov    0x25d9(%rip),%eax        # 4088 <errors>
    1aaf:	89 c6                	mov    %eax,%esi
    1ab1:	48 8d 3d c8 07 00 00 	lea    0x7c8(%rip),%rdi        # 2280 <_IO_stdin_used+0x280>
    1ab8:	b8 00 00 00 00       	mov    $0x0,%eax
    1abd:	e8 7e f5 ff ff       	callq  1040 <printf@plt>
    1ac2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1ac9:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1acd:	74 19                	je     1ae8 <test_end+0xb9>
    1acf:	8b 05 af 25 00 00    	mov    0x25af(%rip),%eax        # 4084 <test>
    1ad5:	89 c6                	mov    %eax,%esi
    1ad7:	48 8d 3d ed 07 00 00 	lea    0x7ed(%rip),%rdi        # 22cb <_IO_stdin_used+0x2cb>
    1ade:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae3:	e8 58 f5 ff ff       	callq  1040 <printf@plt>
    1ae8:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1aec:	0f 94 c0             	sete   %al
    1aef:	0f b6 c0             	movzbl %al,%eax
    1af2:	c9                   	leaveq 
    1af3:	c3                   	retq   
    1af4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1afb:	00 00 00 
    1afe:	66 90                	xchg   %ax,%ax

0000000000001b00 <__libc_csu_init>:
    1b00:	41 57                	push   %r15
    1b02:	4c 8d 3d df 22 00 00 	lea    0x22df(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    1b09:	41 56                	push   %r14
    1b0b:	49 89 d6             	mov    %rdx,%r14
    1b0e:	41 55                	push   %r13
    1b10:	49 89 f5             	mov    %rsi,%r13
    1b13:	41 54                	push   %r12
    1b15:	41 89 fc             	mov    %edi,%r12d
    1b18:	55                   	push   %rbp
    1b19:	48 8d 2d d0 22 00 00 	lea    0x22d0(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1b20:	53                   	push   %rbx
    1b21:	4c 29 fd             	sub    %r15,%rbp
    1b24:	48 83 ec 08          	sub    $0x8,%rsp
    1b28:	e8 d3 f4 ff ff       	callq  1000 <_init>
    1b2d:	48 c1 fd 03          	sar    $0x3,%rbp
    1b31:	74 1b                	je     1b4e <__libc_csu_init+0x4e>
    1b33:	31 db                	xor    %ebx,%ebx
    1b35:	0f 1f 00             	nopl   (%rax)
    1b38:	4c 89 f2             	mov    %r14,%rdx
    1b3b:	4c 89 ee             	mov    %r13,%rsi
    1b3e:	44 89 e7             	mov    %r12d,%edi
    1b41:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1b45:	48 83 c3 01          	add    $0x1,%rbx
    1b49:	48 39 dd             	cmp    %rbx,%rbp
    1b4c:	75 ea                	jne    1b38 <__libc_csu_init+0x38>
    1b4e:	48 83 c4 08          	add    $0x8,%rsp
    1b52:	5b                   	pop    %rbx
    1b53:	5d                   	pop    %rbp
    1b54:	41 5c                	pop    %r12
    1b56:	41 5d                	pop    %r13
    1b58:	41 5e                	pop    %r14
    1b5a:	41 5f                	pop    %r15
    1b5c:	c3                   	retq   
    1b5d:	0f 1f 00             	nopl   (%rax)

0000000000001b60 <__libc_csu_fini>:
    1b60:	c3                   	retq   

Disassembly of section .fini:

0000000000001b64 <_fini>:
    1b64:	48 83 ec 08          	sub    $0x8,%rsp
    1b68:	48 83 c4 08          	add    $0x8,%rsp
    1b6c:	c3                   	retq   
