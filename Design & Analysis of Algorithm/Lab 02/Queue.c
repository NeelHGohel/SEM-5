#include <stdio.h>

#define SIZE 100

int queue[SIZE];

int front = -1, rear = -1;

void enqueue(int value)
{
    if(rear > SIZE - 1){
        printf("Queue is Overflow\n");
    }
    rear++;
    queue[rear] = value;
}

void dequeue()
{
}

void display()
{
}

int main()
{
}