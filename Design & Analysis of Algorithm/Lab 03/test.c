#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *file;
    file = fopen("best_100000.txt", "w");
    for (int i = 0; i < 100000; i++)
    {
        fprintf(file, "%d\n", i);
    }
    fclose(file);

    file = fopen("worst_100000.txt", "w");
    for (int i = 100000; i > 0; i--)
    {
        fprintf(file, "%d\n", i);
    }
    fclose(file);

    file = fopen("avg_100000.txt", "w");
    for (int i = 0; i < 100000; i++)
    {
        fprintf(file, "%d\n", rand() % 100000);
    }
    fclose(file);
}