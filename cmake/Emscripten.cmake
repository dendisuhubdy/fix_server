


if (${CMAKE_SYSTEM_NAME} STREQUAL "Emscripten")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s AGGRESSIVE_VARIABLE_ELIMINATION=1 -s OUTLINING_LIMIT=20000 -s DISABLE_EXCEPTION_CATCHING=0 ")
endif()
