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

We can expand on this by allowing for passing an argument for a binary to unhex shellcode:
```python
#!/usr/bin/python3

import sys
from pwn import *

context(os="linux", arch="amd64", log_level="error")

run_shellcode(unhex(sys.argv[1])).interactive()
```

It is actually possible to build a binary from shellcode, see here:

<img width="909" height="322" alt="image" src="https://github.com/user-attachments/assets/a32bf6fc-2365-40b8-96de-8be1a853bb50" />

