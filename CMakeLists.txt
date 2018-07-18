cmake_minimum_required(VERSION 3.8.0)

project(FIX_SERVER)

set(CMAKE_BUILD_TYPE Release)
set (CMAKE_CXX_STANDARD 11)

find_package( Boost 1.65 COMPONENTS system REQUIRED )

include_directories( 
    ${FIX_SERVER_SOURCE_DIR}/include
    ${BOOST_INCLUDE_DIR}
)

link_directories(
    ${BOOST_LIBRARY_DIR}
    ${FIX_SERVER_SOURCE_DIR}/lib
)

set(
	CMAKE_CXX_LINK_FLAGS 
)

add_subdirectory(src)
#add_subdirectory(test)
#enable_testing()
#add_test (NAME UnitTests COMMAND FIXServerTest)
