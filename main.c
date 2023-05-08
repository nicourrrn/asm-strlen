#include <dlfcn.h>
#include <stdio.h>

typedef int (*strlen) (char *);

int main(int argc, char *argv[])
{
    void *plugin = dlopen("./func.so", RTLD_NOW);

    if (! plugin) {
        printf("Cannot load\n");
        return -1;
    }
    
    strlen len = dlsym(plugin, "strlen");
    printf("Result: %d\n", len("Hello world"));

    return 0;

}
