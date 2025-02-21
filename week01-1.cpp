#include <stdio.h> ///使用standard標準的 input/output

int main()
{
	int a, b; ///整數a,b
	scanf( "%d%d", &a, &b ); /// 讀入資料 (小心 "%d%d" 後面逗號 ///兩個%d%d & &
	printf("%d" , a+b ); ///應出資料,把答案印出來
}
