include (ExternalProject)
include (FetchContent)

FetchContent_Declare(curlpp_ext
    GIT_REPOSITORY "https://github.com/jpbarrette/curlpp"
    GIT_TAG "8840ec806a75a6def9ed07845a620f6d170e5821"
)
FetchContent_MakeAvailable(curlpp_ext)
add_library(curlpp::curlpp ALIAS curlpp_static)

FetchContent_Declare(json_ext
    GIT_REPOSITORY "https://github.com/nlohmann/json"
    GIT_TAG "960b763ecd144f156d05ec61f577b04107290137"
    CMAKE_ARGS       -DJSON_Install=ON
)
FetchContent_MakeAvailable(json_ext)
# FetchContent_GetProperties(json_ext BINARY_DIR NLOHMANN_JSON_BINARY_DIR)
# set(CMAKE_PREFIX_PATH "${NLOHMANN_JSON_BINARY_DIR}" ${CMAKE_PREFIX_PATH})
# find_package(nlohmann_json REQUIRED CONFIG)

FetchContent_Declare(pugixml_ext
    GIT_REPOSITORY "https://github.com/zeux/pugixml"
    GIT_TAG "30cc354fe37114ec7a0a4ed2192951690357c2ed"
)
FetchContent_MakeAvailable(pugixml_ext)
add_library(pugixml::pugixml ALIAS pugixml-static)
