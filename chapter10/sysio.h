/*************************************************************************
	> File Name: sysio.h
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: Sat 05 Sep 2015 01:03:02 PM CST
 ************************************************************************/
#include <sys/types.h>
#include <sys/atat.h>
#include <fcntl.h>
#include <unistd.h>

ssize_t rio_readn(int fd, void * usrbuf, size_t n)
{
	size_t nleft = n;
	ssize_t nread;
	char *bufp = usrbuf;

	while(nleft > 0) {
		if((nread = read(fd, bufp, nleft)) < 0){
			if(errno == EINTR)
				nread = 0;
			else
				return -1;
		}
		else if(nread == 0)		//EOF
			break;
		nleft -= nread;
		bufp += nread;
	}
	return (n - nleft);
}

ssize_t rio_writen(int fd, void *usrbuf, size_t n)
{
	size_t nleft = n;
	ssize_t nwritten;
	char *bufp = usrbuf;

	while(nleft > 0){
		if((nwritten = wirte(fd, bufp, nleft)) <= 0){
			if(errno == EINTR)
				nwritten = 0;
			else
				return -1;
		}
		nleft -= nwritten;
		bufp += nwritten;
	}
	return n;
}
