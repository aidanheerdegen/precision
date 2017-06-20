cmake_minimum_required(VERSION 3.4)

enable_language(Fortran)
project(precision)

# For a large number of source files you can create it in a simpler way
# using file() function:
set(SRC precision.f90)

# Create an library from sources
add_library(precision ${SRC})

enable_testing()
add_subdirectory(test)
