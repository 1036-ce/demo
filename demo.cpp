#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <algorithm>

using namespace std;
const int maxn=100000;

int n=0;
int data[maxn];
void read()
{
	char s[10];
	while(1)
	{
		scanf("%s",s);
		if(s[0]=='#')
			break;
		int num=0;
		int len=strlen(s);
		int start=s[0]=='-'?1:0;
		for(int i=start;i<len;i++)
			num=num*10+s[i]-'0';
		num=start==1?-num:num;
		data[n++]=num;
	}
}

void insert_sort(int start,int end)
{
	for(int i=start+1;i<=end;i++)
	{
		int key=data[i];
		int j=i-1;
		while(j>=start && data[j]>key)
		{
			data[j+1]=data[j];
			j--;
		}
		data[j+1]=key;
	}
}
void quick_sort(int start,int end,int flag)
{
	/* if(start>end)
	 *     return;    */
	if(end-start<4)
	{
		insert_sort(start,end+1);
		return;
	}
	int i=start,j=end;
	printf("%d\n",flag);
	while(i<j)
	{
		if(data[i]>flag && data[j]<flag)
			swap(data[i],data[j]);
		else if(data[i]<=flag)
			i++;
		else if(data[j]>=flag)
			j--;
	}
	swap(data[i],data[end+1]);
	quick_sort(start,i-2,data[i-1]);
	quick_sort(i+1,end,data[end+1]);
}
int main(void)
{
	/* freopen("in.txt","r",stdin); */
	read();
	quick_sort(0,n-2,data[n-1]);
	for(int i=0;i<n;i++)
		printf("%d ",data[i]);
	return 0;
}
