project(unitTest)

file(GLOB srcs *.cpp)
add_executable(${PROJECT_NAME} ${srcs})

# Compile options
# GCC and Clang compiler options
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU" OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    set(DEFAULT_COMPILE_OPTIONS ${DEFAULT_COMPILE_OPTIONS}
        # /wd4996       # -> disable warning: non-Standard std::tr1 namespace and TR1-only machinery (because of gtest)		
        -Wno-unused-variable
        )
endif()
target_compile_options(${PROJECT_NAME}
    PRIVATE
    ${DEFAULT_COMPILE_OPTIONS}
)

#target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/third-party/doctest)
message(STATUS DIR=${CMAKE_SOURCE_DIR})
# Link libraries
target_link_libraries(${PROJECT_NAME}
    PRIVATE
    ${DEFAULT_LINKER_OPTIONS}
    cotf
    doctest) 
