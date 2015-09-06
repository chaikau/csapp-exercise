/*************************************************************************
	> File Name: exercise.10.1.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Thu 03 Sep 2015 07:40:22 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<wait.h>
#include"csapp.c"

int main (int argc, char * argv[], char * envp[])
{
	int fd1,fd2;
	fd1 = Open("foo.txt", O_RDONLY, 0);
	Close(fd1);
	fd2 = Open("baz.txt", O_RDONLY, 0);
	printf("fd2 = %d\n", fd2);

	exit(0);
}
