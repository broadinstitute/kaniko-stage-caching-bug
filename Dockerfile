ARG DIST=/opt


FROM alpine as base_stage

ARG DIST

RUN echo base_stage


FROM base_stage as cached_stage

ARG DIST

RUN mkdir -p /tmp1


FROM cached_stage as cached_stage2

RUN mkdir -p /tmp2


FROM cached_stage2 as cached_stage3

ARG DIST

RUN mkdir -p ${DIST}


FROM cached_stage3 as bug_stage

ARG DIST

RUN echo bug_stage
