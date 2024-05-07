/*
* <Description of this C program>
*
* <Your name> # <Date>
*
*/

#include <stdio.h>
#include <unistd.h>

int wait_for_command(){
	char cwd[1024];
	char input[100];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        printf("dein pfad ist folgender%s\n", cwd);
        fgets(input,sizeof(input),stdin);
        printf("%s\n",input);
    } else {
        perror("getcwd() error");
        return 1;
    }
    return 0;
    }

int main() {
  wait_for_command();
   
}
