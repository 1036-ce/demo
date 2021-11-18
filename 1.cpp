#include <cstdio>
#include <iostream>
#include <algorithm>

using namespace std;
int cmp(int a,int b)
{
	return a>b;
}
int main(void)
{
	freopen("in.txt","r",stdin);
	int d[1000]={0};
	int n;
	cin>>n;
	for(int i=0;i<n;i++)
		cin>>d[i];
	sort(d,d+n,cmp);
	for(int i=0;i<n;i++)
		cout<<d[i]<<" ";
	return 0;
}
