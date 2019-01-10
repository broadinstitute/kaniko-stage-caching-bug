FROM alpine as base_stage

RUN echo base_stage


FROM base_stage as cached_stage

RUN mkdir /cached_folder


FROM cached_stage as bug_stage

RUN echo bug_stage
