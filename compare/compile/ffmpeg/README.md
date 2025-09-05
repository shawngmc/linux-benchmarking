# FFMpeg
This tool is already highly optimized, including using assembly code for a lot of functions... but, AVX-512 is a major boon to video processing.

## Source Data
Take a public domain video, like [U.S. NPS Whitewater Boils](https://www.nps.gov/nps-audiovideo/audiovideo/f6f0f31f-a601-4cde-9ca1-4c9c29b74bbb1080p.mp4)
Per VLC, this file is:
  - Codec: H264 - MPEG-4 AVC (part 10) (avc1) - H.264 uses libx264
  - Codec: MPEG AAC Audio (mp4a)
  
## [AV1 (libaom-av1)](https://trac.ffmpeg.org/wiki/Encode/AV1)
Build an FFMpeg suitable for converting to AV1, which involves:
- Pull source for libaom-av1
- Build libaom-av1 with arch
- Pull source for ffmpeg
- LD_LIBRARY to libaom
- Build ffmepg with --enable-libaom
  - Follow the [generic Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Generic)
  - But the [RHEL/CentOS/Fedora Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Centos) actually covers a LOT, including yasm, nasm, and libX264
