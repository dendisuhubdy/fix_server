include_directories( 
    ${FIX_SERVER_SOURCE_DIR}/include
    ${BOOST_INCLUDE_DIR}
)

link_directories(
    ${BOOST_LIBRARY_DIR}
    ${FIX_SERVER_SOURCE_DIR}/lib
)


add_library(
    Application
    Application.cpp
)

add_library(
    Market
    Market.cpp
)

add_executable(
    fix_receiver
    fix_receiver.cpp
)

target_link_libraries(
    fix_receiver
    Application
    Market
    ${BOOST_LIBRARY_DIR}
    -lquickfix
)

install(TARGETS fix_receiver DESTINATION /usr/local/bin)
