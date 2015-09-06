/*************************************************************************
	> File Name: islittleendian.c
	> Author: chaikau
	> Mail: chaikau@163.com 
	> Created Time: 2014年11月13日 星期四 20时28分01秒
	> Program: 
 ************************************************************************/

#include<stdio.h>
int is_little_endia(void){
	int endian[]={1};
	if(*(char *)endian)
		return 1;
	else 
		return 0;
}
int main (void)
{
	if (is_little_endia())
		printf("YES!\n");
	else 
		printf("NO!\n");
	return 0;
}
