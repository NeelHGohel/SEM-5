#include <stdio.h>

#define SIZE 100

int queue[SIZE];

int front = -1, rear = -1;

void enqueue(int value)
{
    if (rear > SIZE - 1)
    {
        printf("Queue is Overflow\n");
    }
    rear++;
    queue[rear] = value;

        if (front == -1)
    {
        front = 0;
    }
    printf("Enqueue done\n");
}

void dequeue()
{
    if (front == -1)
    {
        printf("Queue Underflow");
    }

    int ele = queue[front];
    if (front == rear)
    {
        front = rear = -1;
    }
    else
    {
        front += 1;
    }
    printf("%d is dequeue\n", ele);
}

void display()
{
    for (int i = front; i < rear; i++)
    {
        printf("|%d| ", queue[i]);
    }
}

int main()
{
    int choise, value;

    while (choise != 4)
    {
        printf("\nEnter\n1. ENQUEUE\n2. DEQUEUE\n3. DISPLAY\n4. EXIT\n");
        scanf("%d", &choise);

        switch (choise)
        {
        case 1:
            printf("Enter Value ");
            scanf("%d", &value);

            enqueue(value);
            break;
        case 2:
            dequeue();
            break;
        case 3:
            display();
            break;
        case 4:
            break;
        }
    }
}