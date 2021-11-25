#include <cstdio>
#include <cstdlib>
#include <cstring>

using namespace std;
const int maxn=13;
const int nan=0x3f3f3f3f;

int vis[maxn][maxn];
int n,m;
int cnt=0;

int full()
{
	for(int i=0;i<n;i++)
		for(int j=0;j<n;j++)
			if(vis[i][j]==0)
				return 0;
	return 1;
}

void cover(int row,int col)
{
	for(int j=0;j<n;j++)
		if(vis[row][j]!=nan)
			vis[row][j]++;
	for(int j=0;j<n;j++)
		if(vis[j][col]!=nan)
			vis[j][col]++;
	for(int j=-n;j<n;j++)
		if(row+j>=0 && row+j<n && col+j>=0 && col+j<n && vis[row+j][col+j]!=nan)
			vis[row+j][col+j]++;
	for(int j=-n;j<n;j++)
		if(row+j>=0 && row+j<n && col-j>=0 && col-j<n && vis[row+j][col-j]!=nan)
			vis[row+j][col-j]++;
}
void discover(int row,int col)
{
	for(int i=0;i<n;i++)
		if(vis[row][i]!=0)
			vis[row][i]--;
	for(int j=0;j<n;j++)
		if(vis[j][col]!=0)
			vis[j][col]--;
	for(int j=-n;j<n;j++)
		if(row+j>=0 && row+j<n && col+j>=0 && col+j<n && vis[row+j][col+j]!=0)
			vis[row+j][col+j]--;
	for(int j=-n;j<n;j++)
		if(row+j>=0 && row+j<n && col-j>=0 && col-j<n && vis[row+j][col-j]!=0)
			vis[row+j][col-j]--;
}
void dfs(int num,int row)
{
	if(full() && num==m)
	{
		cnt++;
		return;
	}
	if(num==m)
		return;
	if(row>=n)
		return;
	for(int k=row;k<n;k++)
	{
		for(int i=0;i<n;i++)
		{
			if(vis[k][i]==0)
			{
				vis[k][i]=nan;
				cover(k,i);
				dfs(num+1,k+1);
				vis[k][i]=0;
				discover(k,i);
			}
		}
	}
}
int main(void)
{
	// freopen("in.txt","r",stdin);
	scanf("%d%d",&n,&m); 
	memset(vis,0,sizeof(vis));
	dfs(0,0);
	printf("%d\n",cnt);
	return 0;
}
