ARG DIST=/opt


FROM alpine as base_stage

ARG DIST

RUN echo base_stage


FROM base_stage as cached_stage

ARG DIST

RUN mkdir -p ${DIST}


FROM cached_stage as bug_stage

ARG DIST

RUN echo bug_stage
