project(unitTest)

file(GLOB srcs *.cpp)
add_executable(${PROJECT_NAME} ${srcs})

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/third-party/doctest)
message(STATUS DIR=${CMAKE_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} cotf)