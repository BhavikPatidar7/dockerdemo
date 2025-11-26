FROM alpine:latest


RUN apk update && apk add bash coreutils


WORKDIR /app


RUN echo "echo 'Listing files:'" > run.sh && \
echo "ls -la" >> run.sh && \
echo "echo 'Current directory:'" >> run.sh && \
echo "pwd" >> run.sh && \
echo "echo 'Disk usage:'" >> run.sh && \
echo "du -sh /" >> run.sh && \
echo "echo 'Current date:'" >> run.sh && \
echo "date" >> run.sh && \
chmod +x run.sh


CMD ["/bin/bash", "run.sh"]