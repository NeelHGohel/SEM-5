#include <stdio.h>

int powerNumber(int base, int power)
{
    if (power == 0)

        return 1;

    else

        return base * powerNumber(base, power - 1);
}

void main()
{
    int base, power;
    printf("Enter Base ");
    scanf("%d", &base);
    printf("Enter Power ");
    scanf("%d", &power);
    printf("%d", powerNumber(base, power));
}