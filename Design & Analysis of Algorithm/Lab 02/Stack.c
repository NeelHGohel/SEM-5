#include <stdio.h>
#include <stdbool.h>

#define SIZE 100

int stack[SIZE];

int top = -1;

void push(int value)
{
    if (top > SIZE - 1)
    {
        printf("Stack Overflow\n");
    }
    else
    {
        stack[++top] = value;
        printf("Push done");
    }
}

void pop()
{
    if (top == -1)
    {
        printf("Stack UnderFlow\n");
    }
    else
    {
        stack[top--];
        printf("Pop done");
    }
}

void peep()
{
    if (top <= -1)
    {
        printf("Stack is Empty");
    }
    else
    {
        printf("%d", stack[top]);
        printf("Peep done");
    }
}

void change(int position, int value)
{
    if (top <= -1 || top - position + 1 < 0)
    {
        printf("Invalid Position");
    }
    else
    {
        stack[top - position + 1] = value;
        printf("change Sucessfully");
    }
}

void display()
{
    for (int i = top; i >= 0; i--)
    {
        printf(" |%d|\n", stack[i]);
    }
}

void main()
{
    int choise, value, position;

    while (choise != 6)
    {
        printf("\nEnter\n1 for push\n2 for pop\n3 for peep\n4 for change\n5 for display\n6 to exit\n");
        scanf("%d", &choise);

        switch (choise)
        {
        case 1:
            printf("Enter the value to push ");
            scanf("%d", &value);
            push(value);
            break;
        case 2:
            pop();
            break;
        case 3:
            peep();
            break;
        case 4:
            printf("Enter the value to push ");
            scanf("%d", &value);

            printf("Enter Position ");
            scanf("%d", &position);
            change(position, value);
            break;

        case 5:
            display();
            break;
        case 6:
            break;
        }
    }
}
