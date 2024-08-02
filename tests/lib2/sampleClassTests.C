#include "ListOps.H"
#include "catch2/catch_all.hpp"
#include "catch2/catch_message.hpp"
#include "catch2/catch_test_macros.hpp"
#include "argList.H"
#include "subCycleTime.H"
#include "sampleClass.H"

using namespace Foam;

extern Time* timePtr;
extern argList* argsPtr;

TEST_CASE
(
    "`operator()()` must return what its docs say it will return",
    "[cavity][serial]"
) {
    int X = GENERATE(1,5);
    sampleClass sc(X);
    auto expected = Foam::pow(12.0, -2.5*X); // 12 is a static private 
    REQUIRE(sc() == expected);
}

TEST_CASE
(
    "Incrementing a sampleClass object must be reflected on the x member",
    "[cavity][serial]"
) {
    int X = GENERATE(1,5);
    sampleClass sc(X);
    ++sc;
    REQUIRE(sc.x() == X+1);
}
