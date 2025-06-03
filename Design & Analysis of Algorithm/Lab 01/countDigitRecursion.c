#include <stdio.h>

int countDigit(int n)
{

    if (n == 0)

        return 0;

    else

        return 1 + countDigit(n / 10);
}

void main()
{
    int n;
    printf("Enter Number ");
    scanf("%d", &n);
    printf("%d", countDigit(n));
}