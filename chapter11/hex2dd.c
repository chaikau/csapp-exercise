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
	if(argc != 2){
		fprintf(stderr, "Invalid argument! Try \"%s <hex address>\".\n", argv[0]); //argv[0] is better than "hex2dd"
		exit(-1);
	}

	struct in_addr addr;
	int addrdata;
	sscanf(argv[1], "%x", &addrdata);
	addr.s_addr = ntohl(addrdata);

	printf("%s\n", inet_ntoa(addr));

	exit(0);
}
