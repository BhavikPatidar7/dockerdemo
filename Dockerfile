# Use a lightweight base image
FROM alpine:latest


# Update packages and install basic Linux utilities
RUN apk update && apk add bash coreutils


# Create a working directory
WORKDIR /app


# Create a script with basic Linux commands
RUN echo "echo 'Listing files:'" > run.sh && \
echo "ls -la" >> run.sh && \
echo "echo 'Current directory:'" >> run.sh && \
echo "pwd" >> run.sh && \
echo "echo 'Disk usage:'" >> run.sh && \
echo "du -sh /" >> run.sh && \
echo "echo 'Current date:'" >> run.sh && \
echo "date" >> run.sh && \
chmod +x run.sh


# Set default command to run the script
CMD ["/bin/bash", "run.sh"]