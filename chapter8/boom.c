/*************************************************************************
	> File Name: boom.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Wed 05 Aug 2015 02:31:49 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<unistd.h>
#include<signal.h>
#include<stdlib.h>
void handler(int sig)
{
	static int beeps = 0;

	printf("BEEP\n");
	if(++beeps < 5)
		alarm(1);
	else{
		printf("BOOM!\n");
		exit(0);
	}
}
int main (void)
{
	signal(SIGALRM, handler);
	alarm(1);
	while(1){
		;
	}
	exit(0);
}
