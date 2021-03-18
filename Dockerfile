FROM agarmu/merlin-docker

WORKDIR /usr/local/src/
COPY . .
RUN build

ENV IGIS_LOCAL_HOST=0.0.0.0
ENV IGIS_LOCAL_PORT=8080
EXPOSE ${IGIS_LOCAL_PORT}
CMD [ "run" ]
