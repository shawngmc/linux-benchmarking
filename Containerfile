FROM rockylinux:9

WORKDIR /root/

RUN dnf upgrade --refresh -y && \
    dnf install git cmake dnf-utils -y && \
    dnf groupinstall 'Development Tools' -y && \
    dnf config-manager --set-enabled devel && \
    dnf config-manager --set-enabled crb && \
    dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

ARG VERSION=2.52.0
ENV VERSION=${VERSION}

ARG ARCH=x86-64-v2
ENV ARCH=${ARCH}

RUN echo "Building version $VERSION"

RUN dnf install -y \
 glibc-devel \
 vulkan-loader-devel \
 libxcb-devel \
 libXrandr-devel \
 wayland-devel \
 libdrm-devel \
 dconf-devel \
 ImageMagick-c++-devel \
 ImageMagick-devel \
 chafa-devel \
 zlib-devel \
 dbus-libs \
 mesa-libEGL-devel \
 ocl-icd-devel \
 libsqlite3x-devel \
 elfutils-libelf-devel \
 pulseaudio-libs-devel \
 libddcutil-devel


RUN git clone https://github.com/fastfetch-cli/fastfetch.git

WORKDIR /root/fastfetch/

RUN git fetch origin refs/tags/$VERSION:refs/tags/$VERSION && \
    git checkout $VERSION  
    
RUN echo -e "set(CMAKE_C_FLAGS \"${CMAKE_C_FLAGS} -march=$ARCH\")" >> ./CMakeLists.txt

RUN cat ./CMakeLists.txt && \
    mkdir -p build && \
    cd build && \
    cmake .. && \
    cmake --build . --target fastfetch

RUN time /root/fastfetch/build/fastfetch
