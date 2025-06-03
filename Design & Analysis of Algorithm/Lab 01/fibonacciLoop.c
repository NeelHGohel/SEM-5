#include <stdio.h>

void main()
{

    int n;
    printf("Enter Numer ");
    scanf("%d", &n);

    int n1 = 0, n2 = 1,sum=0;

    for (int i = n1; i < n; i++)
    {
        sum = n1+n2;
        n1 = n2;
        n2 = sum;

    }

    printf("%d" ,sum);
    
}