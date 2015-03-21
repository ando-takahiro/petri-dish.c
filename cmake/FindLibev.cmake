# - Try to find libev
#  LIBEV_FOUND - found libev
#  LIBEV_INCLUDE_DIRS - The libev include directories
#  LIBEV_LIBRARIES - The libraries needed to use libev

#find_package(PkgConfig)

#message(status ${CMAKE_CURRENT_SOURCE_DIR}/deps/libev)

find_path(LIBEV_INCLUDE_DIR ev.h
    HINTS ${CMAKE_CURRENT_SOURCE_DIR}/deps/libev)

find_library(LIBEV_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}ev${CMAKE_STATIC_LIBRARY_SUFFIX}
    HINTS ${CMAKE_CURRENT_SOURCE_DIR}/deps/libev/.libs)

set(LIBEV_LIBRARIES ${LIBEV_LIBRARY})
set(LIBEV_INCLUDE_DIRS ${LIBEV_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBEV_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(Libev  DEFAULT_MSG
                                  LIBEV_LIBRARY LIBEV_INCLUDE_DIR)

                              #mark_as_advanced(LIBEV_INCLUDE_DIR LIBEV_LIBRARY )
