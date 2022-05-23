# Compiler configurations

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

if(MSVC)
    add_compile_options(/Zc:wchar_t-) # wchar_t is a built-in type.
    add_compile_options(/W4 /WX) # warning level 4 and all warnings as errors.
else()
    add_compile_options(-Wall -Werror) # warning level 3 and all warnings as errors.
    add_compile_options(-Wno-unknown-pragmas) # ignore unknown pragmas.
    add_compile_options(-Wno-pragma-pack) # ignore warnings about pragma pack.
    add_compile_options(-Wno-format-security) # ignore user define format concerns.
    add_compile_options(-fdeclspec) # enable usage of declspec for "selectany" - COM annoyance.
endif()