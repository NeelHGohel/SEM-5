#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node *next;
};

struct Node *head = NULL;

void insertAtFront(int value)
{
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->next = head;
    head = newNode;
    printf("insert Done\n");
}

void insertAtEnd(int value)
{
    struct Node *newNode = (struct Node *)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->next = NULL;

    if (head == NULL)
    {
        head = newNode;
        return;
    }
    struct Node *temp = head;
    while (temp->next != NULL)
    {
        temp = temp->next;
    }
    temp->next = newNode;
    printf("insert Done\n");
}

void deleteAtFront()
{
    if (head == NULL)
    {
        printf("Linked List Is Empty\n");
        return;
    }
    struct Node *temp = head;
    head = head->next;
    free(temp);
    printf("Delete Done\n");
}
void deleteAtEnd()
{
    if (head == NULL)
    {
        printf("Linked List Is Empty\n");
        return;
    }
    if (head->next == NULL)
    {
        free(head);
        head = NULL;
        return;
    }
    struct Node *temp = head;
    while (temp->next->next != NULL)
        temp = temp->next;
    free(temp->next);
    temp->next = NULL;
    printf("Delete Done\n");
}
void display()
{
    struct Node *temp = head;
    if (temp == NULL)
    {
        printf("Linked List Is Empty\n");
        return;
    }
    while (temp)
    {
        printf("%d -> ", temp->data);
        temp = temp->next;
    }
}

int main()
{
    int choise, value;

    while (choise != 6)
    {
        printf("\nEnter\n1. INSERT_AT_FRONT\n2. INSERT_AT_END\n3. DELETE_AT_FRONT\n4. DELETE_AT_END\n5.DISPLAY\n6.EXIT\n");
        scanf("%d", &choise);

        switch (choise)
        {
        case 1:
            printf("Enter Value ");
            scanf("%d", &value);

            insertAtFront(value);
            break;
        case 2:
            printf("Enter Value ");
            scanf("%d", &value);

            insertAtEnd(value);
            break;
        case 3:
            deleteAtFront();
            break;
        case 4:
            deleteAtEnd();
            break;
        case 5:
            display();
            break;
        case 6:
            break;
        }
    }
}