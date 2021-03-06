#!/usr/bin/env lua

package = 'simpleitk'
version = '1.0-0'
source  = {
    url    = 'git://github.com/dave3d/lua-simpleitk.git',
    branch = 'master',
}
description = {
    summary  = "A Lua binding to SimpleITK.",
    detailed = '',
    homepage = 'http://github.com/SimpleITK/SimpleITK',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build    = {
    type = 'cmake',
    modules = {
        SimpleITK = "SimpleITK-build/Wrapping/Lua/lib/SimpleITK.so",
    },
    variables = {
        INSTALL_CMOD      = "$(LIBDIR)",
        CMAKE_BUILD_TYPE  = "$(CMAKE_BUILD_TYPE)",
        ["CFLAGS:STRING"] = "$(CFLAGS)",
    },
    copy_directories = { "doc" }
}
