#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>

using namespace std;
const int maxn=1000004;

struct node
{
	long long time;
	int flag;
}T[2*maxn];
int sum=0;
int ans=0;

int cmp(struct node n1,struct node n2)
{
	if(n1.time!=n2.time)
	{
		return n1.time<n2.time;
	}
	else
	{
		return n1.flag > n2.flag;
	}
}
int main(void)
{
	/* freopen("in.txt","r",stdin);  */
	int n;
	scanf("%d",&n);
	for(int i=0;i<n;i++)
	{
		long long t1,t2;
		scanf("%lld%lld",&t1,&t2);
		T[sum].time=t1;
		T[sum++].flag=0;
		T[sum].time=t2;
		T[sum++].flag=1;
	}
	sort(T,T+sum,cmp);
	int tmp=0;
	for(int i=0;i<sum;i++)
	{
		if(T[i].flag==0)
			tmp++;
		else if(T[i].flag==1)
			tmp--;
		if(tmp>ans)
			ans=tmp;
	}
	printf("%d\n",ans);
	return 0;
}
