#!/bin/sh

# export CC=${PREFIX}/bin/h4cc
# export CXX=${PREFIX}/bin/h4c++
# export DYLD_FALLBACK_LIBRARY_PATH=${PREFIX}/lib
# export CFLAGS="-fPIC"

./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --host=${HOST} \
            --with-hdf4=${PREFIX} \
            --with-zlib=${PREFIX} \
            --with-jpeg=${PREFIX} \
            --enable-shared=yes \
            --enable-static=no \
            --enable-install-include

make
make check
make install

pushd include
make install-includeHEADERS
popd
