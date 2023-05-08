global strlen:function	; We declare the label as a global function

section .text

strlen:			; This is the function we will call later
  xor rax, rax			; We set the return value as 0

while:
  cmp byte[rdi], 0h		; If this is the end of the string (\0)
  je end			; Then we jump to the label end
  
  inc rax			; We increment the return value by one
  inc rdi			; We continue to the next char in the string
  
  jmp while			; We jump to the label while (start of the loop)
  
end:
  ret		
