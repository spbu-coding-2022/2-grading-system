cmake_minimum_required(VERSION 3.7)
project(tests LANGUAGES C ASM)

set(CMAKE_C_STANDARD 99)

if (IS_DIRECTORY ${STUDENT_DIR})
    set(STUDENT_SOURCE_DIR "${STUDENT_DIR}/src")
    add_subdirectory(${STUDENT_SOURCE_DIR})
endif()

# cmocka
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/Modules")
option(ENABLE_TESTS "Perform unit tests after build" ON)
if (ENABLE_TESTS)
    find_package(CMocka CONFIG REQUIRED)
    include(AddCMockaTest)
    include(AddMockedTest)
    add_subdirectory(2-grading-tests/test)
    enable_testing()
endif(ENABLE_TESTS)
