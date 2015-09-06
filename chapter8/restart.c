/*************************************************************************
	> File Name: restart.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Fri 07 Aug 2015 01:25:33 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<setjmp.h>

sigjmp_buf buf;

void handler(int sig)
{
	siglongjmp(buf, 1);
}

int main (int argc, char * argv[], char * envp[])
{
	signal(SIGINT, handler);

	if(!sigsetjmp(buf, 1))
		printf("starting\n");
	else
		printf("restarting\n");

	while(1){
		sleep(1);
		printf("processing...\n");
	}
	exit(0);
}
