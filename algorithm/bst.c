#include <stdio.h>
#include <stdlib.h>

typedef struct node
{
    int data;
    struct node *lnode,*rnode;
}btNode,*btNodeP;

int btSearch(btNodeP T,int key)
{
    if(T->data==key)
    {
        return 1;
    }else if(T->data>=key)
    {
        T = T->rnode;
        return btSearch(T,key);
    }else
    {
        T = T->lnode;
        return btSearch(T,key);
    }
    return 0;
}

int btInsert(btNodeP temp,int key)
{
    btNodeP s,T=temp;
    s = (btNodeP) malloc(sizeof(btNode));
    s->data = key;
    s->lnode = s->rnode = NULL;
    if(T!=NULL)
    {
         if(btSearch(T,key))
         {
            return 0;
         }else if(key>T->data)
         {
            T->rnode = s;
         }else
         {
            T->lnode = s;
         }
    }else
    {
        T = s;
    }

    return 1;
}


int main(int argc,char *argv[])
{
    int arr[] = {10,5,7,2,9,11,15,3,6,20,2};
    int i,len=sizeof(arr)/4;
    btNodeP temp = NULL;
    for(i=0;i<len;i++)
    {
         btInsert(temp,arr[i]);
    }

}


