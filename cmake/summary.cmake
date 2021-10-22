# C/C++ Compilier report

MESSAGE (STATUS "")
MESSAGE (STATUS "")
MESSAGE (STATUS "Infomation Summary:")
MESSAGE (STATUS "")
# CMake infomation
MESSAGE (STATUS "CMake infomation:")
MESSAGE (STATUS "  - CMake version:              ${CMAKE_VERSION}")
MESSAGE (STATUS "  - CMake generator:            ${CMAKE_GENERATOR}")
MESSAGE (STATUS "  - CMake building tools:       ${CMAKE_BUILD_TOOL}")
MESSAGE (STATUS "  - Target System:              ${CMAKE_SYSTEM_NAME}")
MESSAGE (STATUS "")


# C/C++ Compilier infomation
MESSAGE (STATUS "${PROJECT_NAME} toolchain infomation:")
MESSAGE (STATUS "  Cross compiling: ${CMAKE_CROSSCOMPILING}")
MESSAGE (STATUS "  C/C++ compilier:")
MESSAGE (STATUS "    - C   standard version:     C${CMAKE_C_STANDARD}")
MESSAGE (STATUS "    - C   standard required:    ${CMAKE_C_STANDARD_REQUIRED}")
MESSAGE (STATUS "    - C   standard extensions:  ${CMAKE_C_EXTENSIONS}")
MESSAGE (STATUS "    - C   compilier version:    ${CMAKE_C_COMPILER_VERSION}")
MESSAGE (STATUS "    - C   compilier:            ${CMAKE_C_COMPILER}")
MESSAGE (STATUS "    - C++ standard version:     C++${CMAKE_CXX_STANDARD}")
MESSAGE (STATUS "    - C++ standard required:    ${CMAKE_CXX_STANDARD_REQUIRED}")
MESSAGE (STATUS "    - C++ standard extensions:  ${CMAKE_CXX_EXTENSIONS}")
MESSAGE (STATUS "    - C++ compilier version:    ${CMAKE_CXX_COMPILER_VERSION}")
MESSAGE (STATUS "    - C++ compilier:            ${CMAKE_CXX_COMPILER}")
MESSAGE (STATUS "  C/C++ compilier flags:")
MESSAGE (STATUS "    - C   compilier flags:      ${CMAKE_C_FLAGS}")
MESSAGE (STATUS "    - C++ compilier flags:      ${CMAKE_CXX_FLAGS}")
MESSAGE (STATUS "  OpenMP:")
IF (OpenMP_FOUND)
MESSAGE (STATUS "    - OpenMP was found:         YES")
MESSAGE (STATUS "    - OpenMP version:           ${OpenMP_C_VERSION}")
ELSE()
MESSAGE (STATUS "    - OpenMP was found:         NO")
ENDIF()
MESSAGE (STATUS "")


# CMake project infomation
MESSAGE (STATUS "${PROJECT_NAME} building infomation:")
MESSAGE (STATUS "  - Project source path is:     ${PROJECT_SOURCE_DIR}")
MESSAGE (STATUS "  - Project building path is:   ${CMAKE_BINARY_DIR}")
MESSAGE (STATUS "")


MESSAGE (STATUS "${PROJECT_NAME} other infomation:")
# show building install path
MESSAGE (STATUS "  Package install path:         ${CMAKE_INSTALL_PREFIX}")
MESSAGE (STATUS "")
