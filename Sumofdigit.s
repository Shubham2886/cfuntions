	.include "common.i"
	
	.extern SOD
	
	.text
	
	.entry 	main

main:	mov 	rbp,rsp
	sub	rsp,8
	
	GetInt	ask1,rbp-8
	mov	rdi,[rdi-8]
	mov	rcx,0
	call	SOD
	PutInt	tell
	
	mov	rsp,rbp
	ret



ask1:	.string	"Enter a positive number:"
tell:	.string	"Sum of digits:"

	.end
