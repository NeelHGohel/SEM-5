#include <stdio.h>

int sum(int n)
{

    if (n == 1)
        return 1;
    else
        return n + sum(n - 1);
}

void main()
{
    int n;
    printf("Enter Number ");
    scanf("%d", &n);
    printf("Sum of %d numbers is %d", n, sum(n));
}