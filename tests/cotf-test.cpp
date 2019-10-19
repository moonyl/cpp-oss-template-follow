#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include <doctest/doctest.h>

#include <cotf.h>

TEST_CASE("simple test")
{
    CHECK(add(10, 3) == 13);
}