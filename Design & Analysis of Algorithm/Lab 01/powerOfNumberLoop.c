#include<stdio.h>
void main(){
    int base , power;
    printf("Enter Base ");
    scanf("%d", &base);
    printf("Enter Power ");
    scanf("%d" ,&power);
    int ans=1;
    for (int i = 0; i < power; i++)
    {
        ans = ans * base;
    }
    printf("%d",ans);
    
}