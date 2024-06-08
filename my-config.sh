#! /usr/bin/env bash

add_prefix() {
    local prefix=$1
    shift
    local new_array=()
    local array=("$@")
    for value in "${array[@]}"; do
        new_array+=("${prefix}${value}")
    done
    echo "${new_array[@]}"
}

MUXERS=$(add_prefix "--enable-muxer="\
    mp4 avi rawvideo mov mpeg2video h264 h263\
)

DEMUXERS=$(add_prefix "--enable-demuxer=" \
    avi rawvideo mov mpegvideo h264 h263\
)

ENCODERS=$(add_prefix "--enable-encoder="\
	mpeg4               \
    libx264             \
    libx265             \
    h264_videotoolbox   \
	hevc_videotoolbox   \
	h263                \
	mpeg2video          \
	rawvideo            \
)


DECODERS=$(add_prefix "--enable-decoder=" \
	mpeg4               \
	h264                \
	hevc                \
	h263                \
	mpeg2video          \
	rawvideo            \
)

cmd="./configure                                \
        --disable-demuxers --disable-muxers     \
        --disable-decoders --disable-encoders   \
        "${DEMUXERS[@]}" "${MUXERS[@]}"         \
        "${DECODERS[@]}" "${ENCODERS[@]}"       \
        --enable-libx264 --enable-libx265       \
        --enable-gpl                            \
        --enable-shared                         \
"
sh -c "$cmd"
