# Use Alpine Linux as base image
FROM alpine:latest

# Install libpq and gmp dependencies (dynamic libraries required by the project)
RUN apk update && apk add libpq gmp


# Copy the prebuilt binary from stack-work into the container
# (substitute your project name for 'example')
COPY .stack-work/docker/_home/.local/bin/haskell-docker-exe /usr/local/bin/haskell-docker-exe
# COPY .stack-work/image/0/usr/local/bin/haskell-docker-exe /usr/local/bin/haskell-docker-exe

# Run the binary on container start
# (substitute your project name for 'example')
CMD ["haskell-docker-exe"]
