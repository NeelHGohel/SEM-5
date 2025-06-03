#include <stdio.h>
void main()
{
    int n;
    printf("Enter Number ");
    scanf("%d", &n);
    int ans = 1;
    for (int i = 1; i <= n; i++)
    {
        ans *= i;
    }

    printf("%d",ans);
}