## 数据结构\_查找_二叉排序树(BST)

二叉排序树在概念上是比较容易理解的：

1. 如果左子树不空，左子树上所有节点的值都小于根结构的值
2. 如果右子树不空，右子树上所有节点的值都大于根结构的值

> 二叉排序树是AVL树和红黑树的基础，理解二叉排序树的查找、插入、删除操作，尤其是删除操作，对于后续的学习有至关重要的作用

### 代码如下：


		#include <stdio.h>
		#include <stdlib.h>

        typedef struct node
        {
            int data;
            struct node *lnode,*rnode;


        }btNode,*btNodeP;

        int btSearch(btNodeP T,int key,btNodeP f,btNodeP *p)
        {
            if(T==NULL)
            {
                *p = f;
                return 0;

            }
            if(key == T->data)
            {
                *p = T;
                return 1;

            }else if(key > T->data)
            {
                return btSearch(T->rnode,key,T,p);

            }else
            {
                return btSearch(T->lnode,key,T,p);

            }

        }

        int btInsert(btNodeP *T,int key)
        {
            btNodeP s,p;
            s = (btNodeP) malloc(sizeof(btNode));
            s->data = key;
            s->rnode = NULL;
            s->lnode = NULL;

            if((*T)==NULL)
            {
                (*T) = s;
                return 1;

            }

            int res = btSearch(*T,key,NULL,&p);
            if(!res)//false
            {
                if(key>p->data)
                {
                    p->rnode = s;
                    return 1;

                }else
                {
                    p->lnode = s;
                    return 1;
                    ;

                }

            }else
            {
                return 0;

            }

        }

        int detailDelete(btNodeP *p)
        {
            btNodeP q,s;
            if((*p)->rnode==NULL)
            {
                q=*p;*p = (*p)->lnode;free(q);

            }else if((*p)->lnode==NULL)
            {
                q=*p;*p = (*p)->rnode;free(q);

            }else
            {
                q = *p;
                s = (*p)->lnode;
                while(s->rnode)
                {
                    q=s; s = s->rnode;

                }
                (*p)->data = s->data;
                if(q!=*p)
                {
                    q->rnode = s->lnode;

                }else
                {
                    q->lnode = s->lnode;

                }

            }
            return 1;

        }

        int btDelete(btNodeP *T,int key)
        {
            if((*T)==NULL)
            {
                return 0;

            }
            if(key==(*T)->data)
            {
                return detailDelete(T);

            }else if(key>(*T)->data)
            {
                return btDelete(&(*T)->rnode,key);

            }else
            {
                return btDelete(&(*T)->lnode,key);

            }

        }


        int main(int argc,char *argv[])
        {
            int arr[] = {10,5,7,2,9,11,15,3,6,20,2};
            int i,len=sizeof(arr)/4;
            btNodeP T=NULL;

            for(i=0;i<len;i++)
            {
                if(btInsert(&T,arr[i]))
                {
                    printf("key:%d add success\n",arr[i]);

                }else
                {
                    printf("key:%d add error\n",arr[i]);

                }

            }
            int dKey = 2;
            if(btDelete(&T,dKey))
            {
                printf("key:%d delete success\n",dKey);

            }else
            {
                printf("key:%d delete error\n",dKey);

            }

            return 0;

        }