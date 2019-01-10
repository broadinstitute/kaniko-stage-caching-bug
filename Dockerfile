ARG DIST=/opt


FROM alpine as base_stage

ARG DIST

RUN apk add \
      build-base \
      curl \
      jq

RUN mkdir -p ${DIST}

RUN echo base_stage


FROM base_stage as bug_stage

ARG DIST

RUN apk add \
      R-dev \
      R

RUN echo bug_stage
