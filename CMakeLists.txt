# ---[ Check cmake version.
cmake_minimum_required(VERSION 3.18.0 FATAL_ERROR)

# set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")


# ---[ Project specification.
# project(cusolver_examples LANGUAGES C CXX CUDA Go)
project(cusolver_examples LANGUAGES C CXX CUDA)

# include(GNUInstallDirs)

# include(cmake/CMakeDetermineGoCompiler.cmake)
# include(cmake/CMakeGoCompiler.cmake.in)
# include(cmake/CMakeTestGoCompiler.cmake)
# include(cmake/CMakeGoInformation.cmake)
# ##########################################
# cusolver_examples build mode
# ##########################################

if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "Setting build type to 'Release' as none was specified.")
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build." FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release")
else()
    message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
endif()

# ##########################################
# cusolver_examples building flags
# ##########################################

# Global CXX/CUDA flags

# Global CXX flags/options
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# set(CMAKE_CXX_EXTENSIONS OFF)

# Global CUDA CXX flags/options
set(CUDA_HOST_COMPILER ${CMAKE_CXX_COMPILER})
set(CMAKE_CUDA_STANDARD 14)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)
# set(CMAKE_CUDA_EXTENSIONS OFF)



# Debug options
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -O0 -g")
message(STATUS "999999999999999999: ${CMAKE_CXX_FLAGS}")
set(CMAKE_CUDA_FLAGS_DEBUG "${CMAKE_CUDA_FLAGS} -O0 -g -G")

# ##########################################
# cusolver_examples target
# ##########################################
# function(add_cusolver_example GROUP_TARGET EXAMPLE_NAME EXAMPLE_SOURCES)
function(example EXAMPLE_NAME EXAMPLE_SOURCES)
# find_package(CUDAToolkit)
# message(STATUS "888888888888: ${GROUP_TARGET} ${EXAMPLE_NAME} ${EXAMPLE_SOURCES}")
message(STATUS "888888888888: ${EXAMPLE_NAME} ${EXAMPLE_SOURCES}")
add_executable(${EXAMPLE_NAME} src/${EXAMPLE_SOURCES})
set_property(TARGET ${EXAMPLE_NAME} PROPERTY CUDA_ARCHITECTURES OFF)
# target_include_directories(${EXAMPLE_NAME}
#     PUBLIC
#         ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}
# )
# message(STATUS "0000000000: ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}")

target_link_libraries(${EXAMPLE_NAME}
    PUBLIC
        cusolver
        # cublas
        # cublasLt
        cusparse
        # cusolverMg
)
# set_target_properties(${EXAMPLE_NAME} PROPERTIES
#     POSITION_INDEPENDENT_CODE ON
# )

# Install example
install(
    TARGETS ${EXAMPLE_NAME}
    RUNTIME
    DESTINATION ${cusolver_examples_BINARY_INSTALL_DIR}
    PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_EXECUTE WORLD_READ
)

# add_dependencies(${GROUP_TARGET} ${EXAMPLE_NAME})
endfunction()

# add_custom_target(cusolver_examples)

include_directories("${CMAKE_SOURCE_DIR}/utils")
message(STATUS "11111111111111: ${CMAKE_SOURCE_DIR}")

# add_cusolver_example(cusolver_examples "cusolver_csrqr_example1" cusolver_csrqr_example1.cu)
# add_cusolver_example(cusolver_examples "cusolver_csrqr_example2" cusolver_csrqr_example2.cu)
# add_cusolver_example(cusolver_examples "test_allocator" test_allocator.cu)
# add_cusolver_example(cusolver_examples "add" add.cu)

example("cusolver_csrqr_example1" cusolver_csrqr_example1.cu)
example("cusolver_csrqr_example2" cusolver_csrqr_example2.cu)
example("test_allocator" test_allocator.cu)
example("add" add.cu)
# example("test-go" test-go.go)
example("ifdef_test" ifdef_test.cu)
example("point_test" point_test.cu)
add_executable("c_test" src/c_test.c)


# ##########################################
# cusolver_examples directories
# ##########################################

# By default put binaries in build/bin (pre-install)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
# message(STATUS "11111122222: ${CMAKE_BINARY_DIR}")

# ##########################################
# Install examples
# ##########################################

IF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  SET(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR} CACHE PATH "" FORCE)
ENDIF()
message(STATUS "33333333333333: ${CMAKE_BINARY_DIR}")