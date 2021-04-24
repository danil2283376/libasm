#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

size_t  ft_strlen(const char *s);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main()
{
    // char *str = "Huilo 228";
    // write(1, str, ft_strlen(str));
    char a = 'G';
    printf("\ncount_number: %zd", ft_write(1, &a, 1));
    return (0);
}