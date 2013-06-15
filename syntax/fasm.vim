" Vim syntax file
" Language:	Flat Assembler (FASM)
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2012 May 24
" Vim URL:	http://www.vim.org/lang.html
" FASM Home:	http://flatassembler.net/
" FASM Version: 1.70.01

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let s:keepcpo= &cpo
set cpo&vim

setlocal iskeyword=a-z,A-Z,48-57,.,_
setlocal isident=a-z,A-Z,48-57,.,_

syn case ignore

syn keyword fasmRegister	ah al bh bl ch cl dh dl spl bpl sil dil
syn keyword fasmRegister	r8b r9b r10b r11b r12b r13b r14b r15b
syn keyword fasmRegister	ax bx cx dx ip sp bp si di
syn keyword fasmRegister	r8w r9w r10w r11w r12w r13w r14w r15w
syn keyword fasmRegister	eax ebx ecx edx esp ebp esi edi eip
syn keyword fasmRegister	r8d r9d r10d r11d r12d r13d r14d r15d
syn keyword fasmRegister	es cs ss ds fs gs
syn keyword fasmRegister	rax rbx rcx rdx rsi rdi rsp rbp
syn keyword fasmRegister	r0 r1 r2 r3 r4 r5 r6 r7 r8 r9
syn keyword fasmRegister	r10 r11 r12 r13 r14 r15
syn keyword fasmRegister	cr0 cr1 cr2 cr3 cr4 cr5 cr6 cr7
syn keyword fasmRegister	dr0 dr1 dr2 dr3 dr4 dr5 dr6 dr7
syn keyword fasmRegister	mm0 mm1 mm2 mm3 mm4 mm5 mm6 mm7
syn keyword fasmRegister	st0 st1 st2 st3 st4 st5 st6 st7
syn keyword fasmRegister	tr0 tr1 tr3 tr4 tr5 tr6 tr7
syn keyword fasmRegister	xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
syn keyword fasmRegister	xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
syn keyword fasmRegister	ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7
syn keyword fasmRegister	ymm8 ymm9 ymm10 ymm11 ymm12 ymm13 ymm14 ymm15

syn keyword fasmAddressSizes 	byte dqword dword fword large pword qword qqword
syn keyword fasmAddressSizes	short tword tbyte word yword

syn keyword fasmDataDirectives 	db dd df dp dq dt du dw file rb rd rf rp rq rt rw

" TODO: add SSEx and AVX instructions

syn keyword fasmInstr 	aaa aad aam aas adc add addpd addps addsd addss addsubpd
syn keyword fasmInstr	aeskeygenassist and andn andnpd andnps andpd andps arpl bound
syn keyword fasmInstr	blsr blsmsk blsi bsf bsr bswap bt bzhi
syn keyword fasmInstr	btc btr bts call cbw cdq clc cld clflush cli clts cmc cmp cmova
syn keyword fasmInstr	cmovb cmovbe cmovc cmove cmovg cmovge cmovl cmovle cmovna
syn keyword fasmInstr	cmovnb cmovnbe cmovnc cmovne cmovng cmovnge cmovnl cmovnle
syn keyword fasmInstr	cmovnp cmovns cmovnz cmovo cmovp cmovpe cmovpo cmovs cmovz
syn keyword fasmInstr	cmpeqpd cmpeqps cmpeqsd cmpeqss cmplepd cmpleps cmplesd cmpless
syn keyword fasmInstr	cmpltps cmpltsd cmpltss cmpneqpd cmpneqps cmpneqsd cmpneqss
syn keyword fasmInstr	cmpnleps cmpnlesd cmpnless cmpnltpd cmpnltps cmpnltsd cmpnltss
syn keyword fasmInstr	cmpordps cmpordsd cmpordss cmppd cmpps cmps cmpsb cmpsd cmpss
syn keyword fasmInstr	cmpunordpd cmpunordps cmpunordsd cmpunordss cmpxchg cmpxchg8b
syn keyword fasmInstr	comiss cpuid crc32 cvtdq2pd cvtdq2ps cvtpd2dq cvtpd2pi cvtpd2ps
syn keyword fasmInstr	cvtpi2ps cvtps2dq cvtps2pd cvtps2pi cvtsd2si cvtsd2ss cvtsi2sd
syn keyword fasmInstr	cvtss2sd cvtss2si cvttpd2dq cvttpd2pi cvttps2dq cvttps2pi
syn keyword fasmInstr	cvttss2si cwd cwde daa das data dec display div divpd divps
syn keyword fasmInstr	divss else emms end enter entry extrn extrq f2xm1 fabs fadd faddp
syn keyword fasmInstr	fbstp fchs fclex fcmovb fcmovbe fcmove fcmovnb fcmovnbe fcmovne
syn keyword fasmInstr	fcmovu fcom fcomi fcomip fcomp fcompp fcos fdecstp fdisi fdiv
syn keyword fasmInstr	fdivr fdivrp femms feni ffree ffreep fiadd ficom ficomp fidiv
syn keyword fasmInstr	fild fimul fincstp finit fist fistp fisttp fisub fisubr fld
syn keyword fasmInstr	fldcw fldenv fldl2e fldl2t fldlg2 fldln2 fldpi fldz fmul fmulp
syn keyword fasmInstr	fndisi fneni fninit fnop fnsave fnstcw fnstenv fnstsw
syn keyword fasmInstr	fprem fprem1 fptan frndint frstor frstpm fsave fscale fsetpm
syn keyword fasmInstr	fsincos fsqrt fst fstcw fstenv fstp fstsw fsub fsubp fsubr
syn keyword fasmInstr	ftst fucom fucomi fucomip fucomp fucompp fwait fxam fxch fxrstor
syn keyword fasmInstr	fxtract fyl2x fyl2xp1 haddpd haddps heap hlt hsubpd hsubps
syn keyword fasmInstr	if imul in inc ins insb insd insw int int3 into invd invlpg insertq
syn keyword fasmInstr	iretd iretw ja jae jb jbe jc jcxz je jecxz jg jge jl jle jmp
syn keyword fasmInstr	jnae jnb jnbe jnc jne jng jnge jnl jnle jno jnp jns jnz jo jp
syn keyword fasmInstr	jpe jpo js jz label lahf lar lddqu ldmxcsr lds lea leave les
syn keyword fasmInstr	lfs lgdt lgs lidt lldt lmsw load loadall286 loadall386 lock
syn keyword fasmInstr	lodsb lodsd lodsw loop loopd loope looped loopew loopne loopned
syn keyword fasmInstr	loopnz loopnzd loopnzw loopw loopz loopzd loopzw lsl lss ltr lzcnt
syn keyword fasmInstr	maskmovq maxpd maxps maxsd maxss mfence minpd minps minsd
syn keyword fasmInstr	monitor mov movapd movaps movd movddup movdq2q movdqa movdqu
syn keyword fasmInstr	movhpd movhps movlhps movlpd movlps movmskpd movmskps movntdq
syn keyword fasmInstr	movntpd movntps movntq movntsd movntss movq movq2dq movs movsb movsd movshdup
syn keyword fasmInstr	movss movsw movsx movupd movups movzx mul mulpd mulps mulsd mulx
syn keyword fasmInstr	mwait neg nop not or org orpd orps out outs outsb outsd outsw
syn keyword fasmInstr	packsswb packuswb paddb paddd paddq paddsb paddsw paddusb
syn keyword fasmInstr	paddw pand pandn pause pavgb pavgusb pavgw pcmpeqb pcmpeqd
syn keyword fasmInstr	pcmpgtb pcmpgtd pcmpgtw pcmpestri pcmpestrm pcmpistri pcmpistrm pcmpgtq
syn keyword fasmInstr	pextrw pf2id pf2iw pfacc pfadd pfcmpeq
syn keyword fasmInstr	pfcmpgt pfmax pfmin pfmul pfnacc pfpnacc pfrcp pfrcpit1 pfrcpit2
syn keyword fasmInstr	pfrsqrt pfsub pfsubr pi2fd pi2fw pinsrw pmaddwd pmaxsw pmaxub
syn keyword fasmInstr	pminub pmovmskb pmulhrw pmulhuw pmulhw pmullw pmuldq pmulld pmuludq pop
syn keyword fasmInstr	popad popaw popd popf popfd popfw popcnt popw por prefetch prefetchnta
syn keyword fasmInstr	prefetcht1 prefetcht2 prefetchw psadbw pshufd pshufhw pshuflw
syn keyword fasmInstr	pslld pslldq psllq psllw psrad psraw psrld psrldq psrlq psrlw
syn keyword fasmInstr	psubd psubq psubsb psubsw psubusb psubusw psubw pswapd public
syn keyword fasmInstr	punpckhdq punpckhqdq punpckhwd punpcklbw punpckldq punpcklqdq
syn keyword fasmInstr	push pusha pushad pushaw pushd pushf pushfd pushfw pushw pxor
syn keyword fasmInstr	rcpps rcpss rcr rcl rdmsr rdpmc rdtsc
syn keyword fasmInstr   rep repe repeat repne repz repnz
syn keyword fasmInstr	ret retd retf retfd retfw retn retnd retnw retw rol ror rorx rsm
syn keyword fasmInstr	rsqrtss sahf sal salc sar sarx sbb scas scasb scasd scasw section
syn keyword fasmInstr	seta setae setalc setb setbe setc sete setg setge setl setle
syn keyword fasmInstr	setnae setnb setnbe setnc setne setng setnge setnl setnle
syn keyword fasmInstr	setnp setns setnz seto setp setpe setpo sets setz sfence sgdt
syn keyword fasmInstr	shl shld shlx shr shrd shrx shufpd shufps sidt sldt smsw sqrtpd sqrtps sqrtsd
syn keyword fasmInstr	stack stc std sti stmxcsr stos stosb stosd stosw str sub subpd
syn keyword fasmInstr	subsd subss sysenter sysexit test times tzcnt ucomisd ucomiss ud2
syn keyword fasmInstr	unpckhps unpcklpd unpcklps verr verw virtual wait wbinvd wrmsr
syn keyword fasmInstr	vaeskeygenassist vcmpfalse_ospd vcmpfalse_osps vcmpfalse_ossd vcmpfalse_osss
syn keyword fasmInstr	vcmptrue_uspd vcmptrue_ussd vcmptrue_usps vcmptrue_usss
syn keyword fasmInstr	vfmadd132pd vfmadd213pd vfmadd231pd vfmadd132sd vfmadd213sd vfmadd231sd
syn keyword fasmInstr	vfmadd132ps vfmadd213ps vfmadd231ps vfmadd132ss vfmadd213ss vfmadd231ss
syn keyword fasmInstr	vfmaddsub132pd vfmaddsub213pd vfmaddsub231pd vfmaddsub132ps
syn keyword fasmInstr	vfmaddsub213ps vfmaddsub231ps vfmsubadd132pd vfmsubadd213pd vfmsubadd231pd
syn keyword fasmInstr	vfmsubadd132ps vfmsubadd213ps vfmsubadd231ps vmfsub132pd vfmsub213pd
syn keyword fasmInstr	vfmsub231pd vfmsub132ps vfmsub213ps vfmsub231ps vfmsub132sd vfmsub213sd
syn keyword fasmInstr	vfmsub231sd vfmsub132ss vfmsub213ss vfmsub231ss vfnmadd213pd vfnmadd132pd
syn keyword fasmInstr	vfnmadd231pd vfnmadd132ps vfnmadd213ps vfnmadd231ps vfnmadd132sd vfnmadd213sd
syn keyword fasmInstr	vfnmadd231sd vfnmadd132ss vfnmadd213ss vfnmadd231ss vfnmsub132pd vfnmsub213pd
syn keyword fasmInstr	vfnmsub231pd vfnmsub132ps vfnmsub213ps vfnmsub231ps vfnmsub132sd vfnmsub213sd
syn keyword fasmInstr	vfnmsub231sd vfnmsub132ss vfnmsub213ss vfnmsub231ss
syn keyword fasmInstr	vbroadcastss vboardcastd vbroadcastf128 vinsertf128 vextractf128
syn keyword fasmInstr	vgatherdps vgatherdd vgatherqps vgatherqd vgatherdpd vpgatherdq
syn keyword fasmInstr	vgatherqpd vpgatherqq vpermd vpermps vpermq vpermpd
syn keyword fasmInstr	vmaskmovps vmaskmovpd vpermilps vpermilpd vperm2f128 vzeroall
syn keyword fasmInstr	vzeroupper vmontdqa vpabsb vpabsd vpabsw vpaddb vpaddd vpaddq
syn keyword fasmInstr	vpaddsb vpaddusb vpaddusw vpaddw vpavgb vpavgw vpcmpeqb vpcmpeqd
syn keyword fasmInstr	vpcmpeqq vpcmpeqw vpcmpgtb vpcmpgtd vpcmpgtw vphadd vphaddsw
syn keyword fasmInstr	vphaddw vphsubd vphsubsw vphsubw vpmaxsb vpmaxsd vpmaxsw vpmaxub
syn keyword fasmInstr	vpmaxud vpmaxuw vpminsb vpminsd vpminsw vpminub vpminud vpminuw
syn keyword fasmInstr	vpsignb vpsignd vpsignw vpsubb vpsubd vpsubq vpsubsb vpsubsw
syn keyword fasmInstr	vpsubusb vpsubusw vpsubw vpackssdw vpacksswb vpackusdw vpackuswb
syn keyword fasmInstr	vpalignr vpblendvb vpblendw vpmovsxbd vpmovsxbq vpmovsxbw vpmovsxdq
syn keyword fasmInstr	vpclmulhqlqdq vpclmullqlqdq vpclmullqhdq vpclmulhqhdq
syn keyword fasmInstr	vpmovsxwd vpmovsxwq vpmovzxbd vpmovzxbq vpmovzxbw vpmovzxdq vpmovzxwd
syn keyword fasmInstr	vpmovzxwq vpshufb vpshufd vpshufhw vpshuflw vpunpckhbw vpunpckhdq
syn keyword fasmInstr	vpunpckhqdq vpunpckhwd vpunpcklbw vpunpckldq vpunpckpqdq vpunpcklwd
syn keyword fasmInstr	vmpsadbw vpcmpgtq vphminposuw vpmaddubsw vpmaddwd vpmuldq vpmulhrsw
syn keyword fasmInstr	vpmulhuw vpmulhw vpmulld vpmullw vpmuludq vpsadbw vpslld vpslldq
syn keyword fasmInstr	vpsllq vpsllw vpsrad vpsraw vpsrld vpsrldq vpsrlq vpsrlw vpand
syn keyword fasmInstr	vpandn vpor vpxor vpmovmskb vpsllvd vpsllvq vpsrlvd vpsrlvq vpsravd
syn keyword fasmInstr	xchg xlat xlatb xor xorpd xorps

syn keyword fasmPreprocess 	define equ fix forward include irp irps
syn keyword fasmPreprocess	local macro match purge rept restore restruc struc
syn keyword fasmMacroDirective	common forward local reverse
syn keyword fasmDirective 	assert binary code coff console discardable dll dynamic elf elf64
syn keyword fasmDirective	executable efiboot far fixups format gui import interpreter linkinfo
syn keyword fasmDirective	ms ms64 mz native near needed notpageable pe pe64 resource readable
syn keyword fasmDirective	shareable static segment use16 use32 use64 wdm writable writeable
syn keyword fasmOperator 	align as at defined eq eqtype from mod on ptr rva relativeto used

syn match	fasmNumericOperator	"[+-/*]"
syn match	fasmLogicalOperator	"[=|&~<>]\|<=\|>=\|<>"
" numbers
syn match	fasmBinaryNumber	"\<[01]\+b\>"
syn match	fasmHexNumber		"\<\d\x*h\>"
syn match	fasmHexNumber		"\<\(0x\|$\)\x*\>"
syn match	fasmFPUNumber		"\<\d\+\(\.\d*\)\=\(e[-+]\=\d*\)\=\>"
syn match	fasmOctalNumber		"\<\(0\o\+o\=\|\o\+o\)\>"
syn match	fasmDecimalNumber	"\<\(0\|[1-9]\d*\)\>"
syn region	fasmComment		start=";" end="$"	contains=@Spell
syn region	fasmString		start="\"" end="\"\|$"
syn region	fasmString		start="'" end="'\|$"
syn match	fasmSymbol		"[()|\[\]:]"
syn match	fasmSpecial		"[#?%$,]"
syn match	fasmLabel		"^\s*[^; \t]\+:"

hi def link	fasmAddressSizes	type
hi def link	fasmNumericOperator	fasmOperator
hi def link	fasmLogicalOperator	fasmOperator

hi def link	fasmBinaryNumber	fasmNumber
hi def link	fasmHexNumber		fasmNumber
hi def link	fasmFPUNumber		fasmNumber
hi def link	fasmOctalNumber		fasmNumber
hi def link	fasmDecimalNumber	fasmNumber

hi def link	fasmSymbols		fasmRegister
hi def link	fasmPreprocess		fasmDirective
hi def link	fasmMacroDirective	fasmDirective

"  link to standard syn groups so the 'colorschemes' work:
hi def link	fasmOperator		operator
hi def link	fasmComment		comment
hi def link	fasmDirective		preproc
hi def link	fasmRegister		type
hi def link	fasmNumber		constant
hi def link	fasmSymbol		structure
hi def link	fasmString		String
hi def link	fasmSpecial		special
hi def link	fasmInstr		keyword
hi def link	fasmLabel		label
hi def link	fasmPrefix		preproc

let b:current_syntax = "fasm"

let &cpo = s:keepcpo
unlet s:keepcpo

" vim: ts=8 sw=8 :
