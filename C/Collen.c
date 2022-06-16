#include <stdio.h>

void printCollen (void)
{
	char *c="#include <stdio.h>%1$c%1$cvoid printCollen (void)%1$c{%1$c	char *c=%2$c%3$s%2$c;%1$c	printf(c,10,34,c);%1$c}%1$c%1$cint main (void)%1$c{%1$c	/*affichage code*/%1$c	printCollen();%1$c}%1$c%1$c/*fin affichage*/%1$c";
	printf(c,10,34,c);
}

int main (void)
{
	/*affichage code*/
	printCollen();
}

/*fin affichage*/
