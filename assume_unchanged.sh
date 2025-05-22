#!/bin/sh

git config core.filemode false

# 忽略Python动态链接库文件
git update-index --assume-unchanged $(git ls-files "kbe/res/scripts/common/lib-dynload/*.so")
git update-index --assume-unchanged $(git ls-files "kbe/res/scripts/common/lib-dynload/**/*.so")

# 忽略curl依赖相关文件
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/curl/*.bak")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/curl/autom4te.cache/")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/curl/config.*")

# 忽略服务器二进制文件
git update-index --assume-unchanged $(git ls-files "kbe/bin/server/*")

# 忽略配置文件
git update-index --assume-unchanged $(git ls-files "kbe/res/scripts/common/Lib/Lib/site.py")
git update-index --assume-unchanged $(git ls-files "kbe/res/scripts/common/lib-dynload/_sysconfigdata_m_linux_x86_64-linux-gnu.py")

# 忽略所有Makefile相关文件
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/Makefile*")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/*.m4")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/configure")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/depcomp")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/missing")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/install-sh")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/ltmain.sh")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/**/compile")

# 忽略log4cxx头文件
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/log4cxx/src/main/include/log4cxx/log4cxx.h")
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/log4cxx/src/main/include/log4cxx/private/log4cxx_private.h")

# 忽略zlib相关文件
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/dependencies/zlib/zconf.h")

# 忽略Python相关文件
git update-index --assume-unchanged $(git ls-files "kbe/src/lib/python/Makefile")
