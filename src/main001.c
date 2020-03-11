#include <stdio.h>
#include <foo.h>

#define MAX 10
#define VAL 5

int main(int argc, char const *argv[])
{
    for(int i = 0; i < MAX; i++)
    {
        printf("foo(%d, %d) = %2d\n", i, VAL, foo(i, VAL));
    }
    return 0;
}
