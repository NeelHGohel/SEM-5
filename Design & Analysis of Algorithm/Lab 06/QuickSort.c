#include <stdio.h>
#include <stdbool.h>

int partition(int arr[], int lb, int ub)
{
    int key = arr[lb];
    int i = lb;
    int j = ub;

    while (i < j)
    {
        while (i <= ub && arr[i] <= key)
        {
            i++;
        }

        while (arr[j] > key)
        {
            j--;
        }

        if (i < j)
        {
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
    }

    int temp = arr[lb];
    arr[lb] = arr[j];
    arr[j] = temp;
    return j;
}

void quickSort(int arr[], int lb, int ub)
{
    if (lb < ub)
    {
        int keyIndex = partition(arr, lb, ub);
        quickSort(arr, lb, keyIndex - 1);
        quickSort(arr, keyIndex + 1, ub);
    }
}

void main()
{
    int n = 0;
    printf("Enter Size of Array\n");
    scanf("%d", &n);
    int arr[n], lb = 0, ub = n;
    for (int i = 0; i < n; i++)
    {
        printf("Enter element ");
        scanf("%d", &arr[i]);
    }
    quickSort(arr, lb, ub);

    for (int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
}