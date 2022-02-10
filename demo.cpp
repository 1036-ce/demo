#include <string>
#include <iostream>
#include <cstdio>

using namespace std;

void swap(int &a, int &b) {
	int tmp = a;
	a = b;
	b = tmp;
}
int main() 
{
	int a = 12, b = 23;
	cout<<a<<endl;
	cout<<b<<endl;
	swap(a,b);
	cout<<a<<endl;
	cout<<b<<endl;
	return 0;
}
