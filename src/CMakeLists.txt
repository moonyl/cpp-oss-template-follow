
project(cotf)

add_library(cotf cotf.h cotf.cpp)

file(GLOB_RECURSE headers *.h)

set_target_properties(${PROJECT_NAME}     
	PROPERTIES ${DEFAULT_PROJECT_OPTIONS})

target_include_directories(${PROJECT_NAME} PUBLIC ./)
# Install
install(TARGETS ${PROJECT_NAME} DESTINATION lib)
install(FILES ${headers} DESTINATION include) 