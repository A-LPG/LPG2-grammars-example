        section text
        global _start
_start:
        mov eax, 1
        add eax, 2
        sub eax, 1
        xor ebx, ebx
        cmp eax, ebx
        je done
        nop
done:
        ret
