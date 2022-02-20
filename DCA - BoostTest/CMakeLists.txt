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

find_package(Boost 1.36.0)

set(Boost_USE_STATIC_LIBS OFF) #enable dynamic linking

# search for unit_test_framework
find_package(Boost REQUIRED COMPONENTS unit_test_framework)

if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIR})

  # create a test target from test.cpp
  add_executable(test testsTestSuite.cpp)

  # link Boost libraries to the new target
  target_link_libraries(test ${Boost_LIBRARIES})

  # link Boost with code library
  add_library(libreria ${CALC_LIBS} Calculator.cpp)
  target_link_libraries(test libreria)
endif()




include(CPack)