#include <stdio.h>

int main()
{
    printf("hello11111111\n");
#ifdef RD_PAIRED_TEST
    rdpaired_test();
#endif
}

int rdpaired_test()
{
    printf("qqqqqqqqqq\n");
    return 0;
}