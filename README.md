Bare bones repository, used for storing items spawned from learning Intel Assembly from Hack The Box academy.

---

### Common Assembly Data Sizes
---

| Keyword                | Size                | Meaning / Usage                                |
| ---------------------- | ------------------- | ---------------------------------------------- |
| **byte**               | 1 byte (8 bits)     | Operates on 8‑bit values (e.g., `al`, `bl`)    |
| **word**               | 2 bytes (16 bits)   | Operates on 16‑bit values (e.g., `ax`, `bx`)   |
| **dword**              | 4 bytes (32 bits)   | Operates on 32‑bit values (e.g., `eax`, `ebx`) |
| **qword**              | 8 bytes (64 bits)   | Operates on 64‑bit values (e.g., `rax`, `rbx`) |
| **tword** or **tbyte** | 10 bytes (80 bits)  | Used for x87 floating‑point values             |
| **oword**              | 16 bytes (128 bits) | SSE registers (`xmm0`, etc.)                   |
| **yword**              | 32 bytes (256 bits) | AVX registers (`ymm0`, etc.)                   |
| **zword**              | 64 bytes (512 bits) | AVX‑512 registers (`zmm0`, etc.)               |

---
### NASM Storage Directives (for defining data)

---

|Directive|Size|Example|
|---|---|---|
|**db**|1 byte|`db 0x41`|
|**dw**|2 bytes|`dw 0x1234`|
|**dd**|4 bytes|`dd 0x12345678`|
|**dq**|8 bytes|`dq 0x1122334455667788`|
|**dt**|10 bytes|`dt 0x123...`|
|**do**|16 bytes|`do 0`|
|**dy**|32 bytes|`dy 0`|
|**dz**|64 bytes|`dz 0`|
These are used in .data or .bss sections.

---
