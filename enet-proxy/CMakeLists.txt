cmake_minimum_required(VERSION 3.16)
project(gt_enet_proxy LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(ENABLE_LUA_SCRIPT "Enable Lua script engine bridge" ON)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ENET REQUIRED libenet)
find_package(CURL REQUIRED)

set(PROXY_SOURCES
    src/main.cpp
    src/proxy_server.cpp
    src/logger.cpp
    src/keyauth_client.cpp
)

set(PROXY_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${ENET_INCLUDE_DIRS}
)

set(PROXY_EXTRA_LIBS ${CURL_LIBRARIES})

if(ENABLE_LUA_SCRIPT)
    find_package(Lua QUIET)
    if(LUA_FOUND)
        message(STATUS "Lua found: ${LUA_VERSION_STRING}")
        list(APPEND PROXY_SOURCES src/script_engine_lua.cpp)
        list(APPEND PROXY_INCLUDES ${LUA_INCLUDE_DIR})
        add_definitions(-DENET_PROXY_LUA=1)
        list(APPEND PROXY_EXTRA_LIBS ${LUA_LIBRARIES})
    else()
        message(WARNING "Lua not found: building without Lua script engine")
        list(APPEND PROXY_SOURCES src/script_engine_stub.cpp)
    endif()
else()
    list(APPEND PROXY_SOURCES src/script_engine_stub.cpp)
endif()

add_executable(gt_enet_proxy ${PROXY_SOURCES})

target_include_directories(gt_enet_proxy PRIVATE ${PROXY_INCLUDES} ${CURL_INCLUDE_DIRS})
target_link_libraries(gt_enet_proxy PRIVATE ${ENET_LIBRARIES} ${PROXY_EXTRA_LIBS})
target_compile_options(gt_enet_proxy PRIVATE ${ENET_CFLAGS_OTHER})

install(TARGETS gt_enet_proxy RUNTIME DESTINATION bin)
