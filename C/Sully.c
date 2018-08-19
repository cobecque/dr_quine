#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/*comment out of code*/
int	main(void)
{
	int		i;
	i = 5;
	if (i == 0)
		return 0;
	char	file[10] = "Sully_X.c";
	file[6] = i + 47;
	file[9] = 0;
	char	compile[48] = "gcc -Wall -Werror -Wextra Sully_X.c -o Sully_X";
	char	execute[10] = "./Sully_X";
	compile[32] = i + 47;
	compile[45] = i + 47;
	compile[47] = 0;
	execute[8] = i + 47;
	execute[9] = 0;
	FILE	*fd;
	fd = fopen(file, "w+");
	char	*c = "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c%1$c/*comment out of code*/%1$cint	main(void)%1$c{%1$c	int		i;%1$c	i = %4$c;%1$c	if (i == 0)%1$c		return 0;%1$c	char	file[10] = %2$cSully_X.c%2$c;%1$c	file[6] = i + 47;%1$c	file[9] = 0;%1$c	char	compile[48] = %2$cgcc -Wall -Werror -Wextra Sully_X.c -o Sully_X%2$c;%1$c	char	execute[10] = %2$c./Sully_X%2$c;%1$c	compile[32] = i + 47;%1$c	compile[45] = i + 47;%1$c	compile[47] = 0;%1$c	execute[8] = i + 47;%1$c	execute[9] = 0;%1$c	FILE	*fd;%1$c	fd = fopen(file, %2$cw+%2$c);%1$c	char	*c = %2$c%3$s%2$c;%1$c	fprintf(fd,c,0x0A,0x22,c,i-1 + 48);%1$c	fclose(fd);%1$c	system(compile);%1$c	system(execute);%1$c	return 0;%1$c}%1$c";
	fprintf(fd,c,0x0A,0x22,c,i-1 + 48);
	fclose(fd);
	system(compile);
	system(execute);
	return 0;
}
