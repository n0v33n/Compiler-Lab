#include<stdio.h>
// C program named as prog.c
int main()
{ int a[1000],i,j;
  int sum=10000;
  for(i=0;i<100;i++) a[i]=i;
  for(i=0;i<10;i++)
  for(j=0;j<i*i;j++) a[i]=a[i]*a[i];
printf("sum :%d \n",sum);
return 0;
}
