include(CMakeFindDependencyMacro)

find_dependency(gsl-lite)
find_dependency(HighFive)
find_dependency(ghc_filesystem)

include("${CMAKE_CURRENT_LIST_DIR}/MorphIOTargets.cmake")
