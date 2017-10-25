#include <ctype.h>
#include <string.h>
#include <stdio.h>
#include "libfts.h"

void	bzero_test(void)
{
	char	test[] = "The test";

	printf("BZERO TEST =====\n");
	printf("*%s*\n", test);
	ft_bzero(test, strlen(test));
	printf("*%s*\n\n", test);
}

void	strcat_test(void)
{
	char	test[20] = "hello";
	char	test2[] = " world!";

	printf("STRCAT TEST =====\n");
	ft_strcat(test, test2);
	printf("%s\n\n", test);
	return ;
}

void	isalpha_test(void)
{
	char	c = 'T';
	char	a = 'a';
	char	t = '*';

	printf("ISALPHA TEST =====\n");
	printf("%d, %d, %d\n", isalpha(c), isalpha(a), isalpha(t));
	printf("%d, %d, %d\n\n", ft_isalpha(c), ft_isalpha(a), ft_isalpha(t));
}

void	isdigit_test(void)
{
	char	c = '0';
	char	a = 'a';
	char	t = '*';

	printf("ISDIGIT TEST =====\n");
	printf("%d, %d, %d\n", isdigit(c), isdigit(a), isdigit(t));
	printf("%d, %d, %d\n\n", ft_isdigit(c), ft_isdigit(a), ft_isdigit(t));
}

void	isalnum_test(void)
{
	char	c = '0';
	char	a = 'a';
	char	t = '*';

	printf("ISALNUM TEST =====\n");
	printf("%d, %d, %d\n", isalnum(c), isalnum(a), isalnum(t));
	printf("%d, %d, %d\n\n", ft_isalnum(c), ft_isalnum(a), ft_isalnum(t));
}

void	isascii_test(void)
{
	char	c = '0';
	char	a = 250;
	char	t = '*';

	printf("ISASCII TEST =====\n");
	printf("%d, %d, %d\n", isascii(c), isascii(a), isascii(t));
	printf("%d, %d, %d\n\n", ft_isascii(c), ft_isascii(a), ft_isascii(t));
}

void	isprint_test(void)
{
	char	c = '~';
	char	a = 0x19;
	char	t = '*';

	printf("ISPRINT TEST =====\n");
	printf("%d, %d, %d\n", isprint(c), isprint(a), isprint(t));
	printf("%d, %d, %d\n\n", ft_isprint(c), ft_isprint(a), ft_isprint(t));
}

void	toupper_test(void)
{
	char	c = 'a';
	char	a = 'A';
	char	t = '*';

	printf("TOUPPER TEST =====\n");
	printf("%c, %c, %c\n", toupper(c), toupper(a), toupper(t));
	printf("%c, %c, %c\n\n", ft_toupper(c), ft_toupper(a), ft_toupper(t));
}

void	tolower_test(void)
{
	char	c = 'a';
	char	a = 'A';
	char	t = '*';

	printf("TOLOWER TEST =====\n");
	printf("%c, %c, %c\n", tolower(c), tolower(a), tolower(t));
	printf("%c, %c, %c\n\n", ft_tolower(c), ft_tolower(a), ft_tolower(t));
}

void	puts_test(void)
{
	char	t[] = "Some string";

	printf("PUTS TEST =====\n");
	ft_puts(t);
	ft_puts("");
}

void	strlen_test(void)
{
	char	test[] = "The test";
	
	printf("STRLEN TEST =====\n");
	printf("%lu\n", strlen(test));
	printf("%zu\n\n", ft_strlen(test));
}

void	memset_test(void)
{
	char	t[] = "Some string";

	ft_memset(t, '*', strlen(t));
	printf("MEMSET TEST =====\n%s\n\n", t);
}

void	memcpy_test(void)
{
	char	t[] = "Some string";
	char	n[] = "A STRING";

	ft_memcpy(t, n, strlen(n));
	printf("MEMCPY TEST =====\n%s\n\n", t);
}

void	strdup_test(void)
{
	char	*t;

	t = ft_strdup("A new string");
	printf("STRDUP TEST =====\n%s\n\n", t);
}

void	cat_test(void)
{
	printf("CAT TEST =====\n");
	ft_cat(0);
}

int		main(void)
{
	bzero_test();
	strcat_test();
	isalpha_test();
	isdigit_test();
	isalnum_test();
	isascii_test();
	isprint_test();
	toupper_test();
	tolower_test();
	puts_test();
	strlen_test();
	memset_test();
	memcpy_test();
	strdup_test();
	cat_test();
	return (0);
}
