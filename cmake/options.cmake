option(MAKE_VERBOSE_OUTPUT "Show verbose output from Make" OFF)
option(ENABLE_ADDRESS_SANITIZER "Address Sanitizer" OFF)
option(ENABLE_THREAD_SANITIZER "Thread Sanitizer" OFF)

if (MAKE_VERBOSE_OUTPUT)
    set(CMAKE_VERBOSE_MAKEFILE TRUE)
    add_compile_options(-v)
    add_link_options(LINKER:-v)
endif ()

if (ENABLE_ADDRESS_SANITIZER)
    message("[${PROJECT_NAME}] Enabling Address Sanitizer!")

    add_compile_options(-fsanitize=address)
    set(CMAKE_EXE_LINKER_FLAGS "-fsanitize=address ${CMAKE_EXE_LINKER_FLAGS}")
    set(CMAKE_MODULE_LINKER_FLAGS "-fsanitize=address ${CMAKE_MODULE_LINKER_FLAGS}")
endif ()

if (ENABLE_THREAD_SANITIZER)
    message("[${PROJECT_NAME}] Enabling Thread Sanitizer!")

    add_compile_options(-fsanitize=thread)
    set(CMAKE_EXE_LINKER_FLAGS "-fsanitize=thread ${CMAKE_EXE_LINKER_FLAGS}")
    set(CMAKE_MODULE_LINKER_FLAGS "-fsanitize=thread ${CMAKE_MODULE_LINKER_FLAGS}")
endif ()
