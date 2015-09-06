/*************************************************************************
	> File Name: hex2dd.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Sun 06 Sep 2015 01:16:39 AM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<wait.h>
#include<netinet/in.h>
#include<arpa/inet.h>

int main (int argc, char * argv[], char * envp[])
{
	struct in_addr addr;

	if(argc != 2){
		fprintf(stderr, "Invalid argument! Try \"%s <hex address>\".\n", argv[0]);
		exit(-1);
	}

	if(! (inet_aton(argv[1], &addr))){
		fprintf(stderr, "Convert failure!\n");
		exit(-1);
	}
	else {
		printf("0x%x\n", ntohl(addr.s_addr));
	}

	exit(0);
}
