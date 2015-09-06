/*************************************************************************
	> File Name: cpfile.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Thu 03 Sep 2015 07:52:15 PM CST
	> Program: 
 ************************************************************************/

#include"csapp.c"

int main (int argc, char * argv[], char * envp[])
{
	int n;
	rio_t rio;
	char buf[MAXLINE];

	Rio_readinitb(&rio, STDIN_FILENO);
	while((n = Rio_readlineb(&rio, buf, MAXLINE)) != 0)
		Rio_writen(STDOUT_FILENO, buf, n);
	exit(0);
}
