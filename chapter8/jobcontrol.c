/*************************************************************************
	> File Name: jobcontrol.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Fri 07 Aug 2015 12:17:05 PM CST
	> Program: 
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<wait.h>
#include"csapp.c"


void initjobs()
{
}

void addjob(int pid)
{
}

void deletejob(int pid)
{
}

void handler(int sig)
{
	pid_t pid;
	while((pid = waitpid(-1, NULL , 0)) > 0){
		deletejob(pid);
	}
	if(errno != ECHILD)
		unix_error("waitpid error");
}

int main (int argc, char * argv[], char * envp[])
{
	pid_t pid ;
	sigset_t mask;

	Signal(SIGCHLD, handler);
	initjobs();

	while(1){
		Sigemptyset(&mask);
		Sigaddset(&mask, SIGCHLD);
		Sigprocmask(SIG_BLOCK, &mask, NULL);

		if((pid = Fork()) == 0){
			Sigprocmask(SIG_UNBLOCK, &mask, NULL);
			Execve("/bin/date", argv, NULL);
		}

		addjob(pid);
		Sigprocmask(SIG_UNBLOCK, &mask, NULL);
	}
	exit(0);
}
