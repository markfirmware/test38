FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get update && sudo apt-get install -y libc-dev libc6-i386
RUN    mkdir bin \
    && cd bin \
    && wget -q https://launchpadlibrarian.net/287101520/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
    && bunzip2 gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
    && tar xf gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar \
    && rm gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar \
    && cp gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/bin/as arm-ultibo-as \
    && cp gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/bin/ld arm-ultibo-ld \
    && cp gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/bin/objcopy arm-ultibo-objcopy \
    && cp gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/bin/objdump arm-ultibo-objdump \
    && cp gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/bin/strip arm-ultibo-strip \
    && rm -rf gcc-arm-none-eabi-5_4-2016q3/ \
    && ls

ENV PATH=/home/gitpod/bin:$PATH
COPY assemble.sh HelloWorld.s ./
RUN ./assemble.sh
