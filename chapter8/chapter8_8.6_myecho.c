/*************************************************************************
	> File Name: test.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Wed 29 Jul 2015 01:59:43 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
//extern char **environ;
int main (int argc, char * argv[], char *envp[])
{
	int i;
//	char **env = environ;
	printf("Command line arguments:\n");
	for (i=0 ; i < argc ; i++)
		printf("argv[%d]: %s\n", i, argv[i]);

	printf("\n\n");
	printf("Environment variables:\n");
	for (i=0; envp[i] ; i++)
		printf("envp[%d]: %s\n",i , envp[i]);
	exit(0);
}
