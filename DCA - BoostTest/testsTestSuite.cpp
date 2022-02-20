#define BOOST_TEST_MODULE tokenizadorTestSuite
#include <boost/test/unit_test.hpp>
#include <boost/test/tools/output_test_stream.hpp>

#include "Calculator.h"
#include <sstream>
using boost::test_tools::output_test_stream;
BOOST_AUTO_TEST_SUITE ( test_suite ) // Inicio del test suite

BOOST_AUTO_TEST_CASE(Suma){
    Calculator c;
    BOOST_CHECK_EQUAL(c.Calculate(1 , '+' , 2 ), 3) ;

    
}

BOOST_AUTO_TEST_CASE(Resta){
    Calculator c;
    BOOST_CHECK_EQUAL(c.Calculate(2 , '-' , 1 ), 1) ;

    
}


BOOST_AUTO_TEST_CASE(Multi){
    Calculator c;
    BOOST_CHECK_EQUAL(c.Calculate(5 , '*' , 5 ), 25) ;

    
}


BOOST_AUTO_TEST_CASE(Divi){
    Calculator c;
    BOOST_CHECK_EQUAL(c.Calculate(6 , '/' , 3 ), 2) ;

    
}

BOOST_AUTO_TEST_SUITE_END ()