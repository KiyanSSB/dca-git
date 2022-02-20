/* Generated file, do not edit */

#ifndef CXXTEST_RUNNING
#define CXXTEST_RUNNING
#endif

#define _CXXTEST_HAVE_STD
#include <cxxtest/TestListener.h>
#include <cxxtest/TestTracker.h>
#include <cxxtest/TestRunner.h>
#include <cxxtest/RealDescriptions.h>
#include <cxxtest/TestMain.h>
#include <cxxtest/ErrorPrinter.h>

int main( int argc, char *argv[] ) {
 int status;
    CxxTest::ErrorPrinter tmp;
    CxxTest::RealWorldDescription::_worldName = "cxxtest";
    status = CxxTest::Main< CxxTest::ErrorPrinter >( tmp, argc, argv );
    return status;
}
bool suite_CalculatorTestSuite_init = false;
#include "testsTestSuite.h"

static CalculatorTestSuite suite_CalculatorTestSuite;

static CxxTest::List Tests_CalculatorTestSuite = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_CalculatorTestSuite( "testsTestSuite.h", 4, "CalculatorTestSuite", suite_CalculatorTestSuite, Tests_CalculatorTestSuite );

static class TestDescription_suite_CalculatorTestSuite_testConstructor : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_CalculatorTestSuite_testConstructor() : CxxTest::RealTestDescription( Tests_CalculatorTestSuite, suiteDescription_CalculatorTestSuite, 8, "testConstructor" ) {}
 void runTest() { suite_CalculatorTestSuite.testConstructor(); }
} testDescription_suite_CalculatorTestSuite_testConstructor;

#include <cxxtest/Root.cpp>
const char* CxxTest::RealWorldDescription::_worldName = "cxxtest";
