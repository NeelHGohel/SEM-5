#include <stdio.h>

void main()
{
    int n;
    printf("Enter Number ");
    scanf("%d", &n);

    int count = 0;
    while (n != 0)
    {
        n /= 10;
        count++;
    }
    printf("No of digit in number is %d", count);
}