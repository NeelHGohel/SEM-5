#include <stdio.h>

void LinearSearch(int arr[], int element, int n)
{

    for (int i = 0; i < n; i++)
    {
        if (arr[i] == element)
        {
            printf("Element Found at %d position", i);
            break;
        }
    }
}

void main()
{
    int n = 0, element = 0;
    printf("Enter Size of Array\n");
    scanf("%d", &n);
    int arr[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter element ");
        scanf("%d", &arr[i]);
    }

    printf("Enter Element to Search\n");
    scanf("%d", &element);
    LinearSearch(arr, element, n);
}