if (NOT DEFINED CMAKE_C_COMPILER)
    # message("Looking for C compler...")
    find_program(CMAKE_C_COMPILER NAMES gcc HINTS ${EFX_FRAMEWORK_DIR}/bin)
endif ()
if (NOT DEFINED CMAKE_CXX_COMPILER)
    # message("Looking for C++ compler...")
    find_program(CMAKE_CXX_COMPILER NAMES g++ HINTS ${EFX_FRAMEWORK_DIR}/bin)
endif ()
if (NOT DEFINED CMAKE_LINKER)
    # message("Looking for linker...")
    find_program(CMAKE_LINKER NAMES ld HINTS ${EFX_FRAMEWORK_DIR}/bin)
endif ()

message("CMAKE_C_COMPILER = ${CMAKE_C_COMPILER}")
message("CMAKE_CXX_COMPILER = ${CMAKE_CXX_COMPILER}")
message("CMAKE_LINKER = ${CMAKE_LINKER}")

set(CMAKE_CXX_STANDARD_REQUIRED ON)
if (NOT DEFINED CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 20)
endif ()

set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
set(CMAKE_CXX_OUTPUT_EXTENSION_REPLACE ON)