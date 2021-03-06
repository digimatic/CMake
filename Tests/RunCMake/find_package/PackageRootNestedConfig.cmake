cmake_policy(SET CMP0057 NEW)
list(INSERT CMAKE_MODULE_PATH 0 ${CMAKE_CURRENT_SOURCE_DIR}/PackageRoot)
set(PackageRoot_BASE ${CMAKE_CURRENT_SOURCE_DIR}/PackageRoot)

macro(CleanUpPackageRootTest)
  unset(Foo_ROOT)
  unset(ENV{Foo_ROOT})
  unset(Bar_DIR)
  unset(BAR_CMAKE_FILE)
  unset(Bar_ROOT)
  unset(ENV{Bar_ROOT})
  unset(FOO_TEST_FILE_FOO)
  unset(FOO_TEST_FILE_ZOT)
  unset(FOO_TEST_PATH_FOO)
  unset(FOO_TEST_PATH_ZOT)
  unset(FOO_TEST_PROG_FOO)
  unset(BAR_TEST_FILE_FOO)
  unset(BAR_TEST_FILE_BAR)
  unset(BAR_TEST_FILE_ZOT)
  unset(BAR_TEST_PATH_FOO)
  unset(BAR_TEST_PATH_BAR)
  unset(BAR_TEST_PATH_ZOT)
  unset(BAR_TEST_PROG_FOO)
  unset(BAR_TEST_PROG_BAR)
  unset(Bar_DIR CACHE)
  unset(BAR_CMAKE_FILE CACHE)
  unset(FOO_TEST_FILE_FOO CACHE)
  unset(FOO_TEST_FILE_ZOT CACHE)
  unset(FOO_TEST_PATH_FOO CACHE)
  unset(FOO_TEST_PATH_ZOT CACHE)
  unset(FOO_TEST_PROG_FOO CACHE)
  unset(BAR_TEST_FILE_FOO CACHE)
  unset(BAR_TEST_FILE_BAR CACHE)
  unset(BAR_TEST_FILE_ZOT CACHE)
  unset(BAR_TEST_PATH_FOO CACHE)
  unset(BAR_TEST_PATH_BAR CACHE)
  unset(BAR_TEST_PATH_ZOT CACHE)
  unset(BAR_TEST_PROG_FOO CACHE)
  unset(BAR_TEST_PROG_BAR CACHE)
endmacro()

macro(RunPackageRootTest)
  message("----------")
  message("Foo_ROOT      :${Foo_ROOT}")
  message("ENV{Foo_ROOT} :$ENV{Foo_ROOT}")
  message("Bar_DIR       :${Bar_DIR}")
  message("Bar_ROOT      :${Bar_ROOT}")
  message("ENV{Bar_ROOT} :$ENV{Bar_ROOT}")
  message("")

  find_package(Foo COMPONENTS BarConfig)
  message("find_package(Foo COMPONENTS BarConfig)")
  message("FOO_TEST_FILE_FOO :${FOO_TEST_FILE_FOO}")
  message("FOO_TEST_FILE_ZOT :${FOO_TEST_FILE_ZOT}")
  message("FOO_TEST_PATH_FOO :${FOO_TEST_PATH_FOO}")
  message("FOO_TEST_PATH_ZOT :${FOO_TEST_PATH_ZOT}")
  message("FOO_TEST_PROG_FOO :${FOO_TEST_PROG_FOO}")
  message("BAR_CMAKE_FILE    :${BAR_CMAKE_FILE}")
  message("BAR_TEST_FILE_FOO :${BAR_TEST_FILE_FOO}")
  message("BAR_TEST_FILE_BAR :${BAR_TEST_FILE_BAR}")
  message("BAR_TEST_FILE_ZOT :${BAR_TEST_FILE_ZOT}")
  message("BAR_TEST_PATH_FOO :${BAR_TEST_PATH_FOO}")
  message("BAR_TEST_PATH_BAR :${BAR_TEST_PATH_BAR}")
  message("BAR_TEST_PATH_ZOT :${BAR_TEST_PATH_ZOT}")
  message("BAR_TEST_PROG_FOO :${BAR_TEST_PROG_FOO}")
  message("BAR_TEST_PROG_BAR :${BAR_TEST_PROG_BAR}")
  CleanUpPackageRootTest()
  message("")
endmacro()

#

RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()
