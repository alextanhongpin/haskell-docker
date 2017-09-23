# haskell-docker

This is an example of dockerizing haskell on macosx. 

## Export the path to the .bashrc or .zshrc
```
$ export PATH=$HOME/.local/bin:$PATH 
```

## Stack

```bash
$ stack docker pull

# Build your haskell stack
$ stack build

# Copied executables to .stack-work/docker/_home/.local/bin:
# - haskell-docker-exe
$ stack install

# Build the base image, and the use the base image to hold the haskell binary
$ stack image container

# View the docker image created
# ubuntu-hs-haskell-docker-exe:latest
$ docker images 

# Test to see it works
$ stack exec haskell-docker-exe
```

