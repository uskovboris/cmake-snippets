# Use the following commands to install boost:
#  sudo apt-get install libboost-all-dev

set (Boost_USE_STATIC_LIBS ON)
set (Boost_USE_MULTITHREADED ON)
set (Boost_USE_STATIC_RUNTIME OFF)

set (CMAKE_CXX_FLAGS "-g")

add_definitions (-D_DEBUG)

# Boost::log required Boost version >= 1.54.0 
find_package (Boost 1.65.0 REQUIRED COMPONENTS log serialization system filesystem date_time)
find_package(Threads)

IF(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
  link_directories(${Boost_LIBRARY_DIRS})
ENDIF(Boost_FOUND)

....


target_link_libraries(${TARGET_NAME} ${Boost_LIBRARIES} Threads::Threads)