
snooze:     file format elf64-x86-64


Disassembly of section .init:

0000000000400538 <_init>:
  400538:	48 83 ec 08          	sub    $0x8,%rsp
  40053c:	48 8b 05 c5 06 20 00 	mov    0x2006c5(%rip),%rax        # 600c08 <_DYNAMIC+0x1d0>
  400543:	48 85 c0             	test   %rax,%rax
  400546:	74 05                	je     40054d <_init+0x15>
  400548:	e8 63 00 00 00       	callq  4005b0 <__gmon_start__@plt>
  40054d:	48 83 c4 08          	add    $0x8,%rsp
  400551:	c3                   	retq   

Disassembly of section .plt:

0000000000400560 <printf@plt-0x10>:
  400560:	ff 35 b2 06 20 00    	pushq  0x2006b2(%rip)        # 600c18 <_GLOBAL_OFFSET_TABLE_+0x8>
  400566:	ff 25 b4 06 20 00    	jmpq   *0x2006b4(%rip)        # 600c20 <_GLOBAL_OFFSET_TABLE_+0x10>
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <printf@plt>:
  400570:	ff 25 b2 06 20 00    	jmpq   *0x2006b2(%rip)        # 600c28 <_GLOBAL_OFFSET_TABLE_+0x18>
  400576:	68 00 00 00 00       	pushq  $0x0
  40057b:	e9 e0 ff ff ff       	jmpq   400560 <_init+0x28>

0000000000400580 <__libc_start_main@plt>:
  400580:	ff 25 aa 06 20 00    	jmpq   *0x2006aa(%rip)        # 600c30 <_GLOBAL_OFFSET_TABLE_+0x20>
  400586:	68 01 00 00 00       	pushq  $0x1
  40058b:	e9 d0 ff ff ff       	jmpq   400560 <_init+0x28>

0000000000400590 <signal@plt>:
  400590:	ff 25 a2 06 20 00    	jmpq   *0x2006a2(%rip)        # 600c38 <_GLOBAL_OFFSET_TABLE_+0x28>
  400596:	68 02 00 00 00       	pushq  $0x2
  40059b:	e9 c0 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005a0 <fprintf@plt>:
  4005a0:	ff 25 9a 06 20 00    	jmpq   *0x20069a(%rip)        # 600c40 <_GLOBAL_OFFSET_TABLE_+0x30>
  4005a6:	68 03 00 00 00       	pushq  $0x3
  4005ab:	e9 b0 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005b0 <__gmon_start__@plt>:
  4005b0:	ff 25 92 06 20 00    	jmpq   *0x200692(%rip)        # 600c48 <_GLOBAL_OFFSET_TABLE_+0x38>
  4005b6:	68 04 00 00 00       	pushq  $0x4
  4005bb:	e9 a0 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005c0 <atoi@plt>:
  4005c0:	ff 25 8a 06 20 00    	jmpq   *0x20068a(%rip)        # 600c50 <_GLOBAL_OFFSET_TABLE_+0x40>
  4005c6:	68 05 00 00 00       	pushq  $0x5
  4005cb:	e9 90 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005d0 <exit@plt>:
  4005d0:	ff 25 82 06 20 00    	jmpq   *0x200682(%rip)        # 600c58 <_GLOBAL_OFFSET_TABLE_+0x48>
  4005d6:	68 06 00 00 00       	pushq  $0x6
  4005db:	e9 80 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005e0 <fwrite@plt>:
  4005e0:	ff 25 7a 06 20 00    	jmpq   *0x20067a(%rip)        # 600c60 <_GLOBAL_OFFSET_TABLE_+0x50>
  4005e6:	68 07 00 00 00       	pushq  $0x7
  4005eb:	e9 70 ff ff ff       	jmpq   400560 <_init+0x28>

00000000004005f0 <sleep@plt>:
  4005f0:	ff 25 72 06 20 00    	jmpq   *0x200672(%rip)        # 600c68 <_GLOBAL_OFFSET_TABLE_+0x58>
  4005f6:	68 08 00 00 00       	pushq  $0x8
  4005fb:	e9 60 ff ff ff       	jmpq   400560 <_init+0x28>

Disassembly of section .text:

0000000000400600 <_start>:
  400600:	31 ed                	xor    %ebp,%ebp
  400602:	49 89 d1             	mov    %rdx,%r9
  400605:	5e                   	pop    %rsi
  400606:	48 89 e2             	mov    %rsp,%rdx
  400609:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40060d:	50                   	push   %rax
  40060e:	54                   	push   %rsp
  40060f:	49 c7 c0 50 08 40 00 	mov    $0x400850,%r8
  400616:	48 c7 c1 e0 07 40 00 	mov    $0x4007e0,%rcx
  40061d:	48 c7 c7 37 07 40 00 	mov    $0x400737,%rdi
  400624:	e8 57 ff ff ff       	callq  400580 <__libc_start_main@plt>
  400629:	f4                   	hlt    
  40062a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400630 <deregister_tm_clones>:
  400630:	b8 87 0c 60 00       	mov    $0x600c87,%eax
  400635:	55                   	push   %rbp
  400636:	48 2d 80 0c 60 00    	sub    $0x600c80,%rax
  40063c:	48 83 f8 0e          	cmp    $0xe,%rax
  400640:	48 89 e5             	mov    %rsp,%rbp
  400643:	76 1b                	jbe    400660 <deregister_tm_clones+0x30>
  400645:	b8 00 00 00 00       	mov    $0x0,%eax
  40064a:	48 85 c0             	test   %rax,%rax
  40064d:	74 11                	je     400660 <deregister_tm_clones+0x30>
  40064f:	5d                   	pop    %rbp
  400650:	bf 80 0c 60 00       	mov    $0x600c80,%edi
  400655:	ff e0                	jmpq   *%rax
  400657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40065e:	00 00 
  400660:	5d                   	pop    %rbp
  400661:	c3                   	retq   
  400662:	0f 1f 40 00          	nopl   0x0(%rax)
  400666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40066d:	00 00 00 

0000000000400670 <register_tm_clones>:
  400670:	be 80 0c 60 00       	mov    $0x600c80,%esi
  400675:	55                   	push   %rbp
  400676:	48 81 ee 80 0c 60 00 	sub    $0x600c80,%rsi
  40067d:	48 c1 fe 03          	sar    $0x3,%rsi
  400681:	48 89 e5             	mov    %rsp,%rbp
  400684:	48 89 f0             	mov    %rsi,%rax
  400687:	48 c1 e8 3f          	shr    $0x3f,%rax
  40068b:	48 01 c6             	add    %rax,%rsi
  40068e:	48 d1 fe             	sar    %rsi
  400691:	74 15                	je     4006a8 <register_tm_clones+0x38>
  400693:	b8 00 00 00 00       	mov    $0x0,%eax
  400698:	48 85 c0             	test   %rax,%rax
  40069b:	74 0b                	je     4006a8 <register_tm_clones+0x38>
  40069d:	5d                   	pop    %rbp
  40069e:	bf 80 0c 60 00       	mov    $0x600c80,%edi
  4006a3:	ff e0                	jmpq   *%rax
  4006a5:	0f 1f 00             	nopl   (%rax)
  4006a8:	5d                   	pop    %rbp
  4006a9:	c3                   	retq   
  4006aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006b0 <__do_global_dtors_aux>:
  4006b0:	80 3d d1 05 20 00 00 	cmpb   $0x0,0x2005d1(%rip)        # 600c88 <completed.6927>
  4006b7:	75 11                	jne    4006ca <__do_global_dtors_aux+0x1a>
  4006b9:	55                   	push   %rbp
  4006ba:	48 89 e5             	mov    %rsp,%rbp
  4006bd:	e8 6e ff ff ff       	callq  400630 <deregister_tm_clones>
  4006c2:	5d                   	pop    %rbp
  4006c3:	c6 05 be 05 20 00 01 	movb   $0x1,0x2005be(%rip)        # 600c88 <completed.6927>
  4006ca:	f3 c3                	repz retq 
  4006cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006d0 <frame_dummy>:
  4006d0:	bf 30 0a 60 00       	mov    $0x600a30,%edi
  4006d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4006d9:	75 05                	jne    4006e0 <frame_dummy+0x10>
  4006db:	eb 93                	jmp    400670 <register_tm_clones>
  4006dd:	0f 1f 00             	nopl   (%rax)
  4006e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4006e5:	48 85 c0             	test   %rax,%rax
  4006e8:	74 f1                	je     4006db <frame_dummy+0xb>
  4006ea:	55                   	push   %rbp
  4006eb:	48 89 e5             	mov    %rsp,%rbp
  4006ee:	ff d0                	callq  *%rax
  4006f0:	5d                   	pop    %rbp
  4006f1:	e9 7a ff ff ff       	jmpq   400670 <register_tm_clones>

00000000004006f6 <snooze>:
  4006f6:	55                   	push   %rbp
  4006f7:	48 89 e5             	mov    %rsp,%rbp
  4006fa:	48 83 ec 20          	sub    $0x20,%rsp
  4006fe:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400701:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400704:	89 c7                	mov    %eax,%edi
  400706:	e8 e5 fe ff ff       	callq  4005f0 <sleep@plt>
  40070b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40070e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400711:	2b 45 fc             	sub    -0x4(%rbp),%eax
  400714:	8b 55 ec             	mov    -0x14(%rbp),%edx
  400717:	89 c6                	mov    %eax,%esi
  400719:	bf 64 08 40 00       	mov    $0x400864,%edi
  40071e:	b8 00 00 00 00       	mov    $0x0,%eax
  400723:	e8 48 fe ff ff       	callq  400570 <printf@plt>
  400728:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40072b:	c9                   	leaveq 
  40072c:	c3                   	retq   

000000000040072d <handler>:
  40072d:	55                   	push   %rbp
  40072e:	48 89 e5             	mov    %rsp,%rbp
  400731:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400734:	90                   	nop
  400735:	5d                   	pop    %rbp
  400736:	c3                   	retq   

0000000000400737 <main>:
  400737:	55                   	push   %rbp
  400738:	48 89 e5             	mov    %rsp,%rbp
  40073b:	48 83 ec 20          	sub    $0x20,%rsp
  40073f:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400742:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400746:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  40074a:	74 2a                	je     400776 <main+0x3f>
  40074c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400750:	48 8b 10             	mov    (%rax),%rdx
  400753:	48 8b 05 26 05 20 00 	mov    0x200526(%rip),%rax        # 600c80 <__TMC_END__>
  40075a:	be 7e 08 40 00       	mov    $0x40087e,%esi
  40075f:	48 89 c7             	mov    %rax,%rdi
  400762:	b8 00 00 00 00       	mov    $0x0,%eax
  400767:	e8 34 fe ff ff       	callq  4005a0 <fprintf@plt>
  40076c:	bf 00 00 00 00       	mov    $0x0,%edi
  400771:	e8 5a fe ff ff       	callq  4005d0 <exit@plt>
  400776:	be 2d 07 40 00       	mov    $0x40072d,%esi
  40077b:	bf 02 00 00 00       	mov    $0x2,%edi
  400780:	e8 0b fe ff ff       	callq  400590 <signal@plt>
  400785:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400789:	75 28                	jne    4007b3 <main+0x7c>
  40078b:	48 8b 05 ee 04 20 00 	mov    0x2004ee(%rip),%rax        # 600c80 <__TMC_END__>
  400792:	48 89 c1             	mov    %rax,%rcx
  400795:	ba 0d 00 00 00       	mov    $0xd,%edx
  40079a:	be 01 00 00 00       	mov    $0x1,%esi
  40079f:	bf 90 08 40 00       	mov    $0x400890,%edi
  4007a4:	e8 37 fe ff ff       	callq  4005e0 <fwrite@plt>
  4007a9:	bf 00 00 00 00       	mov    $0x0,%edi
  4007ae:	e8 1d fe ff ff       	callq  4005d0 <exit@plt>
  4007b3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007b7:	48 83 c0 08          	add    $0x8,%rax
  4007bb:	48 8b 00             	mov    (%rax),%rax
  4007be:	48 89 c7             	mov    %rax,%rdi
  4007c1:	e8 fa fd ff ff       	callq  4005c0 <atoi@plt>
  4007c6:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4007c9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007cc:	89 c7                	mov    %eax,%edi
  4007ce:	e8 23 ff ff ff       	callq  4006f6 <snooze>
  4007d3:	bf 00 00 00 00       	mov    $0x0,%edi
  4007d8:	e8 f3 fd ff ff       	callq  4005d0 <exit@plt>
  4007dd:	0f 1f 00             	nopl   (%rax)

00000000004007e0 <__libc_csu_init>:
  4007e0:	41 57                	push   %r15
  4007e2:	41 56                	push   %r14
  4007e4:	41 89 ff             	mov    %edi,%r15d
  4007e7:	41 55                	push   %r13
  4007e9:	41 54                	push   %r12
  4007eb:	4c 8d 25 2e 02 20 00 	lea    0x20022e(%rip),%r12        # 600a20 <__frame_dummy_init_array_entry>
  4007f2:	55                   	push   %rbp
  4007f3:	48 8d 2d 2e 02 20 00 	lea    0x20022e(%rip),%rbp        # 600a28 <__init_array_end>
  4007fa:	53                   	push   %rbx
  4007fb:	49 89 f6             	mov    %rsi,%r14
  4007fe:	49 89 d5             	mov    %rdx,%r13
  400801:	4c 29 e5             	sub    %r12,%rbp
  400804:	48 83 ec 08          	sub    $0x8,%rsp
  400808:	48 c1 fd 03          	sar    $0x3,%rbp
  40080c:	e8 27 fd ff ff       	callq  400538 <_init>
  400811:	48 85 ed             	test   %rbp,%rbp
  400814:	74 20                	je     400836 <__libc_csu_init+0x56>
  400816:	31 db                	xor    %ebx,%ebx
  400818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40081f:	00 
  400820:	4c 89 ea             	mov    %r13,%rdx
  400823:	4c 89 f6             	mov    %r14,%rsi
  400826:	44 89 ff             	mov    %r15d,%edi
  400829:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40082d:	48 83 c3 01          	add    $0x1,%rbx
  400831:	48 39 eb             	cmp    %rbp,%rbx
  400834:	75 ea                	jne    400820 <__libc_csu_init+0x40>
  400836:	48 83 c4 08          	add    $0x8,%rsp
  40083a:	5b                   	pop    %rbx
  40083b:	5d                   	pop    %rbp
  40083c:	41 5c                	pop    %r12
  40083e:	41 5d                	pop    %r13
  400840:	41 5e                	pop    %r14
  400842:	41 5f                	pop    %r15
  400844:	c3                   	retq   
  400845:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40084c:	00 00 00 00 

0000000000400850 <__libc_csu_fini>:
  400850:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400854 <_fini>:
  400854:	48 83 ec 08          	sub    $0x8,%rsp
  400858:	48 83 c4 08          	add    $0x8,%rsp
  40085c:	c3                   	retq   
