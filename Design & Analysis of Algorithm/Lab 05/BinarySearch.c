#include <stdio.h>

void BinarySearch(int arr[], int element, int n)
{
    int left = 0, right = n - 1;

    while (left <= right)
    {
        int mid = left + (right - left) / 2;
        if (arr[mid] == element)
        {
            printf("Element Found at %d position", mid);
            break;
        }
        if (arr[mid] < element)
        {
            left = mid + 1;
        }
        else
        {
            right = mid - 1;
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
    BinarySearch(arr, element, n);
}