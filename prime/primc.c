#include <stdio.h>
#include <stdlib.h>

extern int is_prime(int value);

int main()
{
   int result = is_prime(-5);
    if(result == 1)
    {
        printf("Prim? %d\n", result);
    }
    else
    {
        printf("Prim? %d\n", result);
    }
    return 0;
}
