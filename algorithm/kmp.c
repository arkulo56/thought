#include <stdio.h>

void preset(char *str,int *P)
{
	P[0] = 0;
	int j = 0;
	for(int i = 1;i<sizeof(str);i++)
	{
		if(str[i]=='\0') break;
		while(j>0 && (str[j]!=str[i]))
		{
			j = P[j];
		}
		if(str[j]==str[i])
		{
			j++;
		}
		P[i] = j;
	}
	
}

int main(int args,char *argv[])
{
	char A[] = "abababaababacb";
	char B[] = "ababacb";
	int sizeB = sizeof(B);
	int P[] = {0,0,0,0,0,0,0,0};

	//预处理B子串，得出捷径数组
	preset(B,P);
	//做KMP算法
	int j=-1;
	for(int i=0;i<sizeof(A);i++)
	{
		while(j>0 && (B[j+1]!=A[i]))
		{
			j = P[j];
		}
		if(B[j+1]==A[i])
		{
			j++;
		}
		if(j==(sizeB-2))
		{
			printf("subString from %d in Astring\n",i-(sizeB-2));
			j = P[j];
			break;
		}
	}	
	printf("%d\n",j);
	
	return 0;

}

