#!/bin/sh

autoreconf -vfi
./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --host=${HOST} \
            --with-hdf4=${PREFIX} \
            --with-zlib=${PREFIX} \
            --with-jpeg=${PREFIX} \
            --enable-install-include

make -j${CPU_COUNT}
make install
make check

pushd include
make install-includeHEADERS
popd
