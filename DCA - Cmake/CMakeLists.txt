cmake_minimum_required(VERSION 3.16)
project(Calc)

set (CALC_SRCS Calculator.cpp main.cpp)
set (CALC_LIBS Calculator.h)

add_executable(Calc ${CALC_SRCS} ${CALC_LIBS})

set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")

set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES
  ".*~$"
)
set(CPACK_SOURCE_PACKAGE_FILE_NAME "Calculator-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")

add_custom_target(dist COMMAND ${CMAKE_MAKE_PROGRAM} package_source)

find_package(CxxTest)

if(CXXTEST_FOUND)
  include_directories(${CXXTEST_INCLUDE_DIR})
  enable_testing()

  CXXTEST_ADD_TEST(runner runner.cpp testsTestSuite.h)
  add_library(libreria ${CALC_LIBS} Calculator.cpp)
  target_link_libraries(runner libreria)

endif()

include(CPack)