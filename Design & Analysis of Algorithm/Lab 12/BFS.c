#include <stdio.h>
#define V 8

int queue[V];
int front = -1, rear = -1;

void enqueue(int data)
{
    if (rear > V - 1)
    {
        return;
    }
    rear++;
    queue[rear] = data;
    if (front == -1)
        front = 0;
}

int dequeue()
{
    if (front == -1)
    {
        return -1;
    }
    int data = queue[front];
    front++;
    if (front == V)
    {
        front = rear = -1;
    }
    return data;
}

void bfs(int graph[V][V])
{
    int visited[V] = {0};

    visited[0] = 1;
    enqueue(0);

    while (front != -1)
    {
        int u = dequeue();
        printf("%d ", u + 1);
        for (int i = 0; i < V; i++)
        {
            if (visited[i] == 0 && graph[u][i] != 0)
            {
                visited[i] = 1;
                enqueue(i);
            }
        }
    }
}

void main()
{
    int graph[V][V] = {
        {0, 1, 1, 1, 1, 0, 0, 0},
        {1, 0, 0, 0, 0, 1, 0, 0},
        {1, 0, 0, 0, 0, 1, 0, 0},
        {1, 0, 0, 0, 0, 0, 1, 0},
        {1, 0, 0, 0, 0, 0, 1, 0},
        {0, 1, 1, 0, 0, 0, 0, 1},
        {0, 0, 0, 1, 1, 0, 0, 1},
        {0, 0, 0, 0, 0, 1, 1, 0},
    };
    bfs(graph);
}