#include <stdio.h>
/*out of code*/
#define TEXT "#include <stdio.h>%1$c/*out of code*/%1$c#define TEXT %2$c%3$s%2$c%1$c#define PRINT(fd) fprintf(fd,TEXT,0x0A,0x22,TEXT)%1$c#define GRACE(file) int main(void) {FILE *f;f = fopen(file, %2$cw+%2$c);PRINT(f);return (0);}%1$cGRACE(%2$cGrace_kid.c%2$c)%1$c"
#define PRINT(fd) fprintf(fd,TEXT,0x0A,0x22,TEXT)
#define GRACE(file) int main(void) {FILE *f;f = fopen(file, "w+");PRINT(f);return (0);}
GRACE("Grace_kid.c")
