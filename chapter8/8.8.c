/*************************************************************************
	> File Name: 8.8.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Thu 06 Aug 2015 02:50:11 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<unistd.h>
#include<signal.h>
#include<wait.h>
#include<stdlib.h>
pid_t pid;
int counter = 2;
void handler1()
{
	counter = counter - 1;
	printf("%d", counter);
	fflush(stdout);
	exit(0);
}

int main (void)
{
	signal(SIGUSR1, handler1);
	printf("%d", counter);
	fflush(stdout);

	if((pid = fork())== 0){
		while(1){}
	}
	kill(pid, SIGUSR1);
	waitpid(-1, NULL, 0);
	counter = counter + 1;
	printf("%d", counter);
	return 0;
}
