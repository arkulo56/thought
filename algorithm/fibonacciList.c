#include <stdio.h>

int fibonacci(int limit,int a1,int a2,int i)
{
    if(limit<=0)
    {
        int fb[20];
        fb[i] = a1+a2;
        return fb;
    }
    --limit;
    ++i;
    now= a1+a2;
    
    int ff[20];
    ff=fibonacci(limit,a2,now,i);
    
    ff[i] = now;

    return ff;
}

int main(int argc,char *argv[])
{
    int fb[20],limit=20;
    fb=fibonacci(limit);
    printf("%d\n",fb);
    return 0;
}
/*
int main(int argc,char *argv[])
{
    int fb[20],i;
    fb[0] = 0;
    fb[1] = 1;
    for(i=2;i<20;i++)
    {
        fb[i] = fb[i-1]+fb[i-2];
    }
    for(i=0;i<20;i++)
    {
        printf("%d\n",fb[i]);
    }
    return 0;
}
*/
