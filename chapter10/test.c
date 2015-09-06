/*************************************************************************
	> File Name: test.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Thu 03 Sep 2015 09:35:05 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<wait.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/stat.h>

int main (int argc, char * argv[], char * envp[])
{
	int fd;

	fd = open("foo.txt", O_RDWR|O_APPEND, S_IRUSR|S_IWUSR);
	write(fd, "kankan\ne", 8);
	exit(0);
}
