# create a shared C++ library
SET(CMAKE_CXX_CREATE_SHARED_LIBRARY
    "<CMAKE_CXX_COMPILER> --prelink_objects <OBJECTS>"
    "<CMAKE_CXX_COMPILER> <CMAKE_SHARED_LIBRARY_CREATE_CXX_FLAGS> <LINK_FLAGS> -o <TARGET> <OBJECTS> <LINK_LIBRARIES>")

# create a C++ static library
SET(CMAKE_CXX_CREATE_STATIC_LIBRARY
    "<CMAKE_CXX_COMPILER> --prelink_objects <OBJECTS>"
    "<CMAKE_AR> cr <TARGET> <LINK_FLAGS> <OBJECTS> "
    "<CMAKE_RANLIB> <TARGET> ")

SET(CMAKE_CXX_LINK_EXECUTABLE
    "<CMAKE_CXX_COMPILER> --prelink_objects <OBJECTS>"
    "<CMAKE_CXX_COMPILER> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")

SET(CMAKE_SHARED_LIBRARY_RUNTIME_FLAG "")
