# Using pwntools

We can test against a binary to see protections similar to `checksec` and review shellcode outputs:

<img width="651" height="333" alt="image" src="https://github.com/user-attachments/assets/a0897341-1720-41bd-a774-c61a31fe2120" />


This process is repeatable with using Python to automate the process:
```python
#!/usr/bin/python3

import sys
from pwn import *

context(os="linux", arch="amd64", log_level="error")

file = ELF(sys.argv[1])
shellcode = file.section(".text")
print(shellcode.hex())
```
