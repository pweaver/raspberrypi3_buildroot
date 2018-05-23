FROM pweaver/buildroot:2018.02.2

COPY external /external

RUN make O=/output BR2_EXTERNAL=/external raspberrypi3_defconfig

# Keep network steps as seperate steps
RUN make O=/output source
RUN make O=/output