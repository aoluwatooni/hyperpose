INCLUDE(${CMAKE_SOURCE_DIR}/cmake/helpers.cmake)

FILE(GLOB_RECURSE POSE_TESTS ${CMAKE_SOURCE_DIR}/examples/*.example.cpp)

foreach(EXAMPLE_FULL_PATH ${POSE_TESTS})
    MESSAGE(STATUS ">>> [EXAMPLE] TO BUILD ${EXAMPLE_FULL_PATH}")
    GET_FILENAME_COMPONENT(EXAMPLE_NAME ${EXAMPLE_FULL_PATH} NAME_WE)

    SET(EXAMPLE_TAR example.${EXAMPLE_NAME})
    ADD_EXECUTABLE(${EXAMPLE_TAR} ${EXAMPLE_FULL_PATH})
    TARGET_LINK_LIBRARIES(${EXAMPLE_TAR} helpers openpose_plus gflags)
    ADD_GLOBAL_DEPS(${EXAMPLE_TAR})
endforeach()