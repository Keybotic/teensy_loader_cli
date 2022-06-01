cmake_minimum_required(VERSION 3.8)
project(teensy_loader_cli)

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(libusb REQUIRED)
add_executable(${PROJECT_NAME} src/${PROJECT_NAME}.c)
target_compile_definitions(${PROJECT_NAME} PRIVATE -DUSE_LIBUSB)
target_link_libraries(${PROJECT_NAME} usb)

install(TARGETS
  ${PROJECT_NAME}
  DESTINATION lib/${PROJECT_NAME})

install(
  DIRECTORY src/
  DESTINATION src
)

install(PROGRAMS
  scripts/flash_teensy_40.sh
  DESTINATION lib/${PROJECT_NAME})

ament_package()
