#include <stdio.h>
#include <stdlib.h>
#include <time.h>
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

void generateBestCase(int arr[], int i, int j)
{

    if (i < j)
    {
        int mid = (i + j) / 2;

        int temp = arr[i];
        arr[i] = arr[mid];
        arr[mid] = temp;

        generateBestCase(arr, i + 1, mid);
        generateBestCase(arr, mid + 1, j);
    }
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

    generateBestCase(arr, 0, n - 1);
    printf("Best Case Scenario");
    start = clock();
    quickSort(arr, lb, ub);
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
    quickSort(arr, lb, ub);
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
    quickSort(arr, lb, ub);
    end = clock();
    printf("\nTime taken: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);
}