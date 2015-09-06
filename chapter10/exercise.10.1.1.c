/*************************************************************************
	> File Name: exercise.10.1.1.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Thu 03 Sep 2015 07:44:05 PM CST
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
	char c;

	while(Read(STDIN_FILENO, &c, 1) != 0)
		Write(STDOUT_FILENO, &c, 1);
	exit(0);
}
