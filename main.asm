	.file	"main.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z9fibonaccii				# Глобальная функция _Z9fibonaccii
	.type	_Z9fibonaccii, @function
_Z9fibonaccii:
.LFB1532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)				# Переменная -20(%rbp) = %edi (первый аргумент функции)
	cmpl	$1, -20(%rbp)				# Сравнение с 1
	jg	.L2							# Если больше, переход к .L2
	movl	-20(%rbp), %eax				# Загрузка -20(%rbp) в %eax
	jmp	.L3							# Переход к .L3
.L2:
	movl	-20(%rbp), %eax				# Загрузка -20(%rbp) в %eax
	subl	$1, %eax					# Вычитание 1
	movl	%eax, %edi					# Передача %eax как аргумент функции
	call	_Z9fibonaccii				# Рекурсивный вызов функции
	movl	%eax, %ebx					# Сохранение возвращаемого значения в %ebx
	movl	-20(%rbp), %eax				# Загрузка -20(%rbp) в %eax
	subl	$2, %eax					# Вычитание 2
	movl	%eax, %edi					# Передача %eax как аргумент функции
	call	_Z9fibonaccii				# Рекурсивный вызов функции
	addl	%ebx, %eax					# Сложение возвращаемого значения с %ebx
.L3:
	movq	-8(%rbp), %rbx				# Загрузка предыдущего значения %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1532:
	.size	_Z9fibonaccii, .-_Z9fibonaccii
	.globl	main						# Глобальная функция main
	.type	main, @function
main:
.LFB1533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$10, -4(%rbp)				# Инициализация переменной -4(%rbp) = 10
	movl	-4(%rbp), %eax				# Загрузка -4(%rbp) в %eax
	movl	%eax, %edi					# Передача %eax как аргумент функции
	call	_Z9fibonaccii				# Вызов функции _Z9fibonaccii
	movl	%eax, -4(%rbp)				# Сохранение возвращаемого значения в -4(%rbp)
	movl	-4(%rbp), %eax				# Загрузка -4(%rbp) в %eax
	movl	%eax, %esi					# Передача %eax как аргумент функции
	leaq	_ZSt4cout(%rip), %rax		# Загрузка адреса _ZSt4cout в %rax
	movq	%rax, %rdi					# Передача %rax как аргумент функции
	call	_ZNSolsEi@PLT				# Вызов функции _ZNSolsEi
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	# Загрузка адреса _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ в %rdx
	movq	%rdx, %rsi					# Передача %rdx как аргумент функции
	movq	%rax, %rdi					# Передача %rax как аргумент функции
	call	_ZNSolsEPFRSoS_E@PLT		# Вызов функции _ZNSolsEPFRSoS_E
	movl	$0, %eax					# Загрузка 0 в %eax (возвращаемое значение main)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1533:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1868:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)				# Инициализация переменной -4(%rbp) = %edi (первый аргумент функции)
	movl	%esi, -8(%rbp)				# Инициализация переменной -8(%rbp) = %esi (второй аргумент функции)
	cmpl	$1, -4(%rbp)				# Сравнение -4(%rbp) с 1
	jne	.L8							# Если не равно, переход к .L8
	cmpl	$65535, -8(%rbp)			# Сравнение -8(%rbp) с 65535
	jne	.L8							 # Если не равно, переход к .L8
	leaq	_ZStL8__ioinit(%rip), %rax	# Загрузка адреса _ZStL8__ioinit в %rax
	movq	%rax, %rdi					# Передача %rax как аргумент функции
	call	_ZNSt8ios_base4InitC1Ev@PLT	# Вызов функции _ZNSt8ios_base4InitC1Ev
	leaq	__dso_handle(%rip), %rax	# Загрузка адреса __dso_handle в %rax
	movq	%rax, %rdx					# Передача %rax как аргумент функции
	leaq	_ZStL8__ioinit(%rip), %rax	# Загрузка адреса _ZStL8__ioinit в %rax
	movq	%rax, %rsi					# Передача %rax как аргумент функции
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	# Загрузка адреса _ZNSt8ios_base4InitD1Ev в %rax
	movq	%rax, %rdi					# Передача %rax как аргумент функции
	call	__cxa_atexit@PLT			# Вызов функции __cxa_atexit
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1868:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z9fibonaccii, @function
_GLOBAL__sub_I__Z9fibonaccii:
.LFB1869:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi
