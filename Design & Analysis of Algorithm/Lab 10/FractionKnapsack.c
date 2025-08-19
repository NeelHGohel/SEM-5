#include <stdio.h>

void swap(float *a, float *b)
{
    float temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    int n, W;
    printf("Enter number of objects: ");
    scanf("%d", &n);

    float value[n], weight[n], ratio[n];
    printf("Enter total weight capacity: ");
    scanf("%d", &W);

    for (int i = 0; i < n; i++)
    {
        printf("Enter Value and Weight for object %d: ", i + 1);
        scanf("%f %f", &value[i], &weight[i]);
        ratio[i] = value[i] / weight[i];
    }

    for (int i = 0; i < n - 1; i++)
    {
        for (int j = i + 1; j < n; j++)
        {
            if (ratio[i] < ratio[j])
            {
                swap(&ratio[i], &ratio[j]);
                swap(&value[i], &value[j]);
                swap(&weight[i], &weight[j]);
            }
        }
    }

    float totalValue = 0.0;
    int remaining = W;

    printf("\nSelected items:\n");

    for (int i = 0; i < n; i++)
    {
        if (weight[i] <= remaining)
        {
            totalValue += value[i];
            remaining -= weight[i];
            printf("Take full object %d (Value=%.2f, Weight=%.2f)\n", i + 1, value[i], weight[i]);
        }
        else
        {
            float fraction = (float)remaining / weight[i];
            totalValue += value[i] * fraction;
            printf("Take %.2f fraction of object %d (Value=%.2f, Weight=%.2f)\n", fraction, i + 1, value[i], weight[i]);
            break;
        }
    }

    printf("\nMaximum value in Knapsack = %.2f\n", totalValue);

    return 0;
}
