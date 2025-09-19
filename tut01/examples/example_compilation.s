	.text
	.file	"example_compilation.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.file	1 "/root/teaching/comp1521-25t3/t16a/tut01/examples" "example_compilation.c"
	.loc	1 3 0                           # example_compilation.c:3:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.Ltmp0:
	.loc	1 4 5 prologue_end              # example_compilation.c:4:5
	leaq	.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	.loc	1 5 5                           # example_compilation.c:5:5
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_ctor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function asan.module_ctor
	.type	asan.module_ctor,@function
asan.module_ctor:                       # @asan.module_ctor
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__asan_init@PLT
	callq	__asan_version_mismatch_check_v8@PLT
	leaq	__unnamed_1(%rip), %rdi
	movl	$1, %esi
	callq	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	asan.module_ctor, .Lfunc_end1-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_dtor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function asan.module_dtor
	.type	asan.module_dtor,@function
asan.module_dtor:                       # @asan.module_dtor
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	__unnamed_1(%rip), %rdi
	movl	$1, %esi
	callq	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	asan.module_dtor, .Lfunc_end2-asan.module_dtor
	.cfi_endproc
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.p2align	5
.str:
	.asciz	"Hello world\n"
	.zero	19
	.size	.str, 32

	.type	.L___asan_gen_,@object          # @___asan_gen_
.L___asan_gen_:
	.asciz	"example_compilation.c"
	.size	.L___asan_gen_, 22

	.type	.L___asan_gen_.1,@object        # @___asan_gen_.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_.1:
	.asciz	"<string literal>"
	.size	.L___asan_gen_.1, 17

	.type	.L___asan_gen_.2,@object        # @___asan_gen_.2
.L___asan_gen_.2:
	.asciz	"example_compilation.c"
	.size	.L___asan_gen_.2, 22

	.type	.L___asan_gen_.3,@object        # @___asan_gen_.3
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L___asan_gen_.3:
	.quad	.L___asan_gen_.2
	.long	4                               # 0x4
	.long	12                              # 0xc
	.size	.L___asan_gen_.3, 16

	.type	__unnamed_1,@object             # @0
	.data
	.p2align	4
__unnamed_1:
	.quad	.str
	.quad	13                              # 0xd
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.1
	.quad	.L___asan_gen_
	.quad	0                               # 0x0
	.quad	.L___asan_gen_.3
	.quad	-1                              # 0xffffffffffffffff
	.size	__unnamed_1, 64

	.section	.init_array.1,"aw",@init_array
	.p2align	3
	.quad	asan.module_ctor
	.section	.fini_array.1,"aw",@fini_array
	.p2align	3
	.quad	asan.module_dtor
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x40 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1.1" # string offset=0
.Linfo_string1:
	.asciz	"example_compilation.c"         # string offset=39
.Linfo_string2:
	.asciz	"/root/teaching/comp1521-25t3/t16a/tut01/examples" # string offset=61
.Linfo_string3:
	.asciz	"main"                          # string offset=110
.Linfo_string4:
	.asciz	"int"                           # string offset=115
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym __asan_register_globals
	.addrsig_sym __asan_unregister_globals
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
	.addrsig_sym asan.module_dtor
	.addrsig_sym .str
	.addrsig_sym .L___asan_gen_
	.addrsig_sym __unnamed_1
	.section	.debug_line,"",@progbits
.Lline_table_start0:
