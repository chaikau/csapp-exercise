/*************************************************************************
	> File Name: snooze.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Wed 05 Aug 2015 02:38:28 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<signal.h>
#include<unistd.h>
#include<stdlib.h>

unsigned int snooze(unsigned int secs)
{
	unsigned int rc = sleep(secs);
	printf("Slept for %u of %u secs.\n", secs - rc, secs);
	return rc;
}

void handler(int sig)
{
}

int main (int argc, char *argv[])
{
	unsigned int seconds;
	if (argc != 2){
		fprintf(stderr, "usage: %s <secs>\n", argv[0]);
		exit(0);
	}

	if(signal(SIGINT, handler) == SIG_ERR){
		fprintf(stderr, "signal error\n");
		exit(0);
	}

	seconds = atoi(argv[1]);
	snooze(seconds);

	exit(0);
}
