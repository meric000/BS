/*
* <Description of this C program>
*
* <Your name> # <Date>
*
*/

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define Max 31


int main () {
    int fileDetector;
	printf("Gebe Datei namen an(Max 30 zeichen)\n");
	char fileName[Max];
	fgets(fileName, Max, stdin);
    creat(fileName, 0700);
    printf("die Datei wurde erfolgreich angelegt\n"); 
	return 0;

}
