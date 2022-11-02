PV = "2.24.1"

SRC_URI:remove = " file://optional-libunwind-generic.patch \
                    file://0001-sdlchecks.cmake-pass-cflags-to-the-appropriate-cmake.patch \
                    "

SRC_URI[sha256sum] = "bc121588b1105065598ce38078026a414c28ea95e66ed2adab4c44d80b309e1b"

FILES:${PN} += "${datadir}/licenses/"
