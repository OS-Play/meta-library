FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PV = "5.1.2"
SRC_URI += "file://001-v4l2-drmprime.patch"
SRC_URI[sha256sum] = "619e706d662c8420859832ddc259cd4d4096a48a2ce1eefd052db9e440eef3dc"

SRC_URI:remove = "file://0001-libavutil-include-assembly-with-full-path-from-sourc.patch \
                  "

PACKAGECONFIG += " \
        drm \
        avdevice \
        avfilter \
        avcodec \
        avformat \
        swresample \
        swscale \
        postproc \
        alsa \
        bzlib \
        lzma \
        pic \
        pthreads \
        shared \
        theora \
        zlib \
        "

DEPENDS += "libdrm"

PACKAGECONFIG[drm] = "--enable-libdrm,--disable-libdrm"
