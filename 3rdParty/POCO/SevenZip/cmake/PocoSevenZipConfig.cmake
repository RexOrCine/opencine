include(CMakeFindDependencyMacro)
find_dependency(PocoFoundation)
find_dependency(PocoXML)
find_dependency(PocoUtil)
include("${CMAKE_CURRENT_LIST_DIR}/PocoSevenZipTargets.cmake")
