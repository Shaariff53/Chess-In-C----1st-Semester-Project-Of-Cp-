cmake_minimum_required(VERSION 3.10)
project(Chess)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add compiler flags for better warnings
if(MSVC)
    add_compile_options(/W4)
else()
    add_compile_options(-Wall -Wextra -pedantic)
endif()

# Create the executable
add_executable(chess src/chess.cpp)

# Installation rules (optional)
install(TARGETS chess DESTINATION bin)
