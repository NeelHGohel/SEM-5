#include <stdio.h>
void main()
{
    int n;
    printf("Enter Number ");
    scanf("%d", &n);

    int sum = 0;
    for (int i = 0; i <= n; i++)
    {
        sum += i;
    }
    printf("Sum of %d numbers is %d", n, sum);
}