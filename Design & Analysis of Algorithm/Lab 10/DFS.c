#include <stdio.h>
#define V 8

void dfsHelper(int graph[V][V], int visited[V], int key)
{
    visited[key] = 1;
    printf("%d ", key + 1);
    for (int i = 0; i < V; i++)
    {
        if (visited[i] == 0 && graph[key][i] != 0)
        {
            dfsHelper(graph, visited, i);
        }
    }
}

void dfs(int graph[V][V])
{
    int visited[V] = {0};
    dfsHelper(graph, visited, 0);
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
    dfs(graph);
}