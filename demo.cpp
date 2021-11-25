#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cctype>

using namespace std;
int maxn=10000;
int data[5][5];
char op[maxn];

int main(void)
{
	for(int i=0;i<4;i++)
		for(int j=0;j<4;j++)
			scanf("%d",data[i][j]);
	char ch;
	int pos=0;
	while((ch=getchar())!+'\n')
	{
		if(isdigit(ch))
			op[pos++]=ch-'a';
		else if(isalnum(ch))
			op[pos++]=ch;
	}
	for(int i=0;i<pos;i+=3)
	{
		char dir=op[i];
		int p=op[i+1]-1;
		int num=op[i+2];

		switch(dir)
		{
			case 'w':
				{
					break;
				}
			case 'a':
				{
					break;
				}
			case 's':
				{
					break;
				}
			case 'd':
				{
					break;
				}
		}
		data[p/4][p%4]=num;
	}
	for(int i=0;i<4;i++)
		for(int j=0;j<4;j++)
			printf("%d ",data[i][j]);
	printf("\n");
	return 0;
}
