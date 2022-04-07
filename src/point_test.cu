#include <stdio.h>
#include <stdlib.h>

void P1Malloc(int *p)
{
    printf("p1malloc: %d\n", &p);
    p = (int *)malloc(10);
    printf("p1malloc: %p\n", p);
    printf("p1malloc: %d\n", &p);
    printf("p1malloc: %d\n", sizeof(p));
}

void P2Malloc(void** p)
{
    // *p = malloc(10);
    printf("p2malloc: %p\n", *p);
    printf("p2malloc: %p\n", p);
}

int main()
{
    int Num=10;
    int* a = &Num;
    printf("initial a: %d\n", *a);
    printf("initial1111 a: %p\n", a);
    printf("initial a: %d\n", sizeof(a));
    P1Malloc(a);
    printf("using * a222222: %p\n", a);
    P2Malloc((void**)&a);
    printf("using ** a: %p\n", a);
    printf("using ** a: %p\n", &a);
    printf("using ** a: %d\n", &a);

    return 0;
}
