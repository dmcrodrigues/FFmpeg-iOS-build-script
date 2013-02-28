FFmpeg iOS build script
=======================

The script to build FFmpeg for iOS supports:

- armv7
- armv7s
- i386 (simulator)

> **Note** 
> The architecture armv6 is no longer supported.

The script generates (fat) static libraries including the 3 architectures on `lib/` folder for development purposes. You may and **you should** build the FFmpeg libraries **only with the architectures supported in production** when generating the final release.

The header files to include stay on `include/` folder.

## Configuration

The script disables all components: protocols, encoders, decoders, etc. and enables only:

- protocols: file
- demuxers: mov
- muxers: mpegts
- bsf: h264_mp4toannexb

This can be configured, just update `DISABLED_COMPONENTS`and `ENABLED_COMPONENTS`.

## Usage

Using the FFmpeg libraries it's similar to any other static library you just need to link the libraries on your project and add all the header files.

1. On your target settings go to `Build Phases` and select tab `Link Binary with Libraries` and add all the libraries on `lib/` folder. 
2. Go to `Build settings` and add the path to the `include/` folder on `User Header Search Paths` or on `Header Search Paths`

> **Important** 
> In order to use the FFmpeg libraries you also need to link with the library `libz.dylib`.

## Acknowledgments

This scripts are based on the excellent work of [Bruno de Carvalho](https://github.com/brunodecarvalho) to compile the [cURL for iOS](https://github.com/brunodecarvalho/curl-ios-build-scripts).