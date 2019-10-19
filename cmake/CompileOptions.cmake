#
# Project options
#

set(DEFAULT_PROJECT_OPTIONS
	CXX_STANDARD              17 # Not available before CMake 3.8.2; see below for manual command line argument addition
	LINKER_LANGUAGE           "CXX"
	POSITION_INDEPENDENT_CODE ON
)
