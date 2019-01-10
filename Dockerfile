ARG DIST=/opt


FROM alpine as base_stage

ARG DIST

RUN echo base_stage


FROM base_stage as BUG_stage

ARG DIST

RUN echo BUG_stage
