cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
if (NOT DEFINED CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 20)
endif ()

set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
set(CMAKE_CXX_OUTPUT_EXTENSION_REPLACE ON)

project(CppPlayground)

list(APPEND CMAKE_MODULE_PATH
    ${CMAKE_SOURCE_DIR}/cmake)

include(cmake/compiler.cmake)
include(cmake/options.cmake)
include(cmake/dependencies.cmake)
