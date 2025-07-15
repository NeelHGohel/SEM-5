#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void merge(int arr[], int left[], int leftSize, int right[], int rightSize)
{
    int i = 0, j = 0, k = 0;

    while (i < leftSize && j < rightSize)
    {
        if (left[i] < right[j])
            arr[k++] = left[i++];
        else
            arr[k++] = right[j++];
    }

    while (i < leftSize)
        arr[k++] = left[i++];

    while (j < rightSize)
        arr[k++] = right[j++];
}

void mergeSort(int arr[], int n)
{
    if (n <= 1)
        return;

    int mid = n / 2;

    int left[mid];
    int right[n - mid];

    for (int i = 0; i < mid; i++)
        left[i] = arr[i];

    for (int i = mid; i < n; i++)
        right[i - mid] = arr[i];

    mergeSort(left, mid);
    mergeSort(right, n - mid);

    merge(arr, left, mid, right, n - mid);
}

int main()
{
    int n;
    printf("Enter size of Array ");
    scanf("%d", &n);
    FILE *fp;
    clock_t start, end;
    int i, arr[n], lb = 0, ub = n;

    // Best case
    fp = fopen("/Lab 03/Array Data Text Files/best_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);

    printf("Best Case Scenario");
    start = clock();
    mergeSort(arr, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Worst case
    fp = fopen("/Lab 03/Array Data Text Files/worst_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);
    printf("worst Case Scenario");
    start = clock();
    mergeSort(arr, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Avg case
    fp = fopen("/Lab 03/Array Data Text Files/avg_100000.txt", "r");
    for (i = 0; i < n; i++)
    {
        fscanf(fp, "%d", &arr[i]);
    }
    fclose(fp);
    printf("avg Case Scenario");
    start = clock();
    mergeSort(arr, n);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);
}