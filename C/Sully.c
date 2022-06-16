#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

/*comment out of code*/
int	main(void)
{
	int		i;
	i = 10;
	if (i > 0)
	{
		int		fd_fake;
		char	file1[24];
		char	file[24];
		char	compile[62];
		char	execute[24];
		sprintf(file1, "Sully_%d.c", i);
		if ((fd_fake = open(file1, O_RDONLY)) > -1)
		{
			i--;
			close(fd_fake);
		}
		sprintf(file, "Sully_%d.c", i);
		sprintf(compile, "gcc -Wall -Werror -Wextra Sully_%1$d.c -o ./obj/Sully_%1$d", i);
		sprintf(execute, "./obj/Sully_%d", i);
		FILE	*fd;
		fd = fopen(file, "w+");
		char	*c = "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c%1$c/*comment out of code*/%1$cint	main(void)%1$c{%1$c	int		i;%1$c	i = %4$d;%1$c	if (i > 0)%1$c	{%1$c		int		fd_fake;%1$c		char	file1[24];%1$c		char	file[24];%1$c		char	compile[62];%1$c		char	execute[24];%1$c		sprintf(file1, %2$cSully_%%d.c%2$c, i);%1$c		if ((fd_fake = open(file1, O_RDONLY)) > -1)%1$c		{%1$c			i--;%1$c			close(fd_fake);%1$c		}%1$c		sprintf(file, %2$cSully_%%d.c%2$c, i);%1$c		sprintf(compile, %2$cgcc -Wall -Werror -Wextra Sully_%%1$d.c -o ./obj/Sully_%%1$d%2$c, i);%1$c		sprintf(execute, %2$c./obj/Sully_%%d%2$c, i);%1$c		FILE	*fd;%1$c		fd = fopen(file, %2$cw+%2$c);%1$c		char	*c = %2$c%3$s%2$c;%1$c		fprintf(fd,c,0x0A,0x22,c,i);%1$c		fclose(fd);%1$c		system(compile);%1$c		system(execute);%1$c	}%1$c	return 0;%1$c}%1$c";
		fprintf(fd,c,0x0A,0x22,c,i);
		fclose(fd);
		system(compile);
		system(execute);
	}
	return 0;
}
