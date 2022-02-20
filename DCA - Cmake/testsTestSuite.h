#include <cxxtest/TestSuite.h>
#include "Calculator.h"

class CalculatorTestSuite : public CxxTest::TestSuite
{

public:
    void testConstructor(void)
    {
    Calculator c;
    //Constructor por defecto
    TS_ASSERT_EQUALS(c.Calculate(1 ,'+', 2 ), 3) 
    TS_ASSERT_EQUALS(true,true);

    }
};
	
