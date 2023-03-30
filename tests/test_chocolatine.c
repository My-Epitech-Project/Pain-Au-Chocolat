/*
** EPITECH PROJECT, 2023
** chocolatine
** File description:
** test_chocolatine
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "chocolatine.h"

Test(chocolatine, chocolatine_test_function)
{
    cr_assert_eq(chocolatine(NULL), 0);
}

Test(chocolatine, chocolatine_test_function_2)
{
    char *av[] = {"./chocolatine", NULL};
    cr_assert_eq(chocolatine(av), 0);
}
