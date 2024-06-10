#! /usr/bin/env bash

# export LDFLAGS="-Wl,-ld_classic $LDFLAGS"

      # --enable-libmp3lame                       \
      # --enable-frei0r                           \
      # --enable-libopencore-amrnb                \
      # --enable-libopencore-amrwb                \
      # --enable-libsnappy                        \
      # --enable-libsoxr                          \
      # --enable-lzma                             \

      # --prefix="$HOME/.local"                   \
./configure                                     \
      --prefix="$HOME/.local"                   \
      --enable-shared                           \
      --enable-pthreads                         \
      --enable-version3                         \
      --cc="$CC"                                \
      --host-cflags="$CFLAGS"                   \
      --host-ldflags="$LDFLAGS"                 \
      --enable-ffplay                           \
      --enable-gnutls                           \
      --enable-gpl                              \
      --enable-libaom                           \
      --enable-libaribb24                       \
      --enable-libbluray                        \
      --enable-libdav1d                         \
      --enable-libharfbuzz                      \
      --enable-libjxl                           \
      --enable-libopus                          \
      --enable-librav1e                         \
      --enable-librist                          \
      --enable-librubberband                    \
      --enable-libsrt                           \
      --enable-libssh                           \
      --enable-libsvtav1                        \
      --enable-libtesseract                     \
      --enable-libtheora                        \
      --enable-libvidstab                       \
      --enable-libvmaf                          \
      --enable-libvorbis                        \
      --enable-libvpx                           \
      --enable-libwebp                          \
      --enable-libx264                          \
      --enable-libx265                          \
      --enable-libxml2                          \
      --enable-libxvid                          \
      --enable-libfontconfig                    \
      --enable-libfreetype                      \
      --enable-libass                           \
      --enable-libopenjpeg                      \
      --enable-libspeex                         \
      --enable-libzmq                           \
      --enable-libzimg                          \
      --disable-libjack                         \
      --disable-indev=jack                      \
      --enable-videotoolbox                     \
      --enable-audiotoolbox                     \
      --enable-neon

