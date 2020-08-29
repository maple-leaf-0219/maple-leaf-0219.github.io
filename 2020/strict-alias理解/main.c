#include <stdio.h>
#include <stdint.h>

static int anint;

static void bar(int data)
{
    printf("data is %u\n", data);
}
static void foo(double *dblptr)
{
    anint=1;
    *dblptr=3.14159;
    bar(anint);
}
int main(int argc, char *argv[])
{
    foo((double *) &anint);
	
    return 0;
}
