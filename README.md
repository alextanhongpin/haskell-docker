# haskell-docker

## Export the path to the .bashrc or .zshrc
```
$ export PATH=$HOME/.local/bin:$PATH 
```

## Build the docker image
```bash
$ docker build -t alextanhongpin/haskell-demo .

$ docker run -t alextanhongpin/haskell-demo 
```

## Stack

```
$ stack docker pull

$ stack build

$ stack install

$ stack image container

$ stack exec haskell-docker-exe
```
