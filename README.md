# ft_printf
The progect is reproducing functionality of printf</br>
Prototype: int ft_printf(const char *format, ...);</br>
**Supported formats:**</br>
c — unsigned char</br>
s — string</br>
p — pointer</br>
d — signed desimal</br>
i — signed desimal</br>
u — unsigned desimal</br>
o — unsigned octal</br>
x — unsigned hexadecimal (lowercase)</br>
X — unsigned hexadecimal (uppercase)</br>
f — float (limited precision)</br>
b — binary</br>

**Supported length modifiers:**</br>
diouxX with hh</br>
diouxX with h</br>
diouxX with ll</br>
diouxX with l</br>
f with l</br>
f with L</br>

**Supported flags:**</br>
\# — convertion to alternate form (example: '0X for **X** convertion', desimal point for **f** convertion etc.)</br>
0 (zero) — zero padding</br>
\- — left alignment within the field</br>
\+ — places sign</br>
‘ ‘ (space) — blank before a positive number</br>

**Manages:**</br>
%%</br>
field width</br>
precision</br>
printing to a file descriptor — ft_dprintf(int fd, const char *format, ...)

# Usage
```
$ clone https://github.com/ayundina/ft_printf.git
$ cd ft_printf
$ make
$ gcc main.c -L. -lftprintf
$ ./a.out
```
main.c may look like:
```
#include "libftprintf.h"

int main(void)
{
	ft_printf("|% 50s|\n", "here goes right adjustment");
	return (0);
}
```
