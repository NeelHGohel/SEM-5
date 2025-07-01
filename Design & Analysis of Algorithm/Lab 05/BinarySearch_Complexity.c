#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void BinarySearch(int arr[], int element, int n)
{
    int left = 0, right = n - 1;

    while (left <= right)
    {
        int mid = left + (right - left) / 2;
        if (arr[mid] == element)
        {
            printf("\nElement Found at %d position", mid);
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

int main()
{
    int n, element = 0;
    printf("Enter size of Array ");
    scanf("%d", &n);
    FILE *fp;
    clock_t start, end;
    int i, arr[n], temp, swapped;

    // Best case
    fp = fopen("D:/College Programs/SEM 5/Design & Analysis of Algorithm/Lab 03/Array Data Text Files/best_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);
    printf("Enter Element to Search\n");
    scanf("%d", &element);
    printf("Best Case Scenario");
    start = clock();
    BinarySearch(arr, element, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Worst case
    fp = fopen("D:/College Programs/SEM 5/Design & Analysis of Algorithm/Lab 03/Array Data Text Files/worst_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);
    printf("worst Case Scenario");
    start = clock();
    BinarySearch(arr, element, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Avg case
    fp = fopen("D:/College Programs/SEM 5/Design & Analysis of Algorithm/Lab 03/Array Data Text Files/avg_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);
    printf("avg Case Scenario");
    start = clock();
    BinarySearch(arr, element, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);
}