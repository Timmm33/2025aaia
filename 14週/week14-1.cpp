/// week14-1.cpp

#include <stdio.h>
int main()
{
    printf("請輸入分子a、分母b:");
    int a, b;
    scanf("%d%d", &a, &b);
    int ans;
    for(int i=1; i<=a; i++){
        if(a%i==0 && b%i==0) ans = i; /// 可整除
    }
    printf("最大公因數是: %d\n", ans);
    printf("%d / %d 等於 %d / %d\n", a, b, a/ans, b/ans);
}
