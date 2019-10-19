
project(cotf)

add_library(cotf cotf.h cotf.cpp)

file(GLOB_RECURSE headers *.h)

# Install
install(TARGETS ${PROJECT_NAME} DESTINATION lib)
install(FILES ${headers} DESTINATION include) 