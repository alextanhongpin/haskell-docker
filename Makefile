docker:
	docker build -f Dockerfile.build -t alextanhongpin/alpine-ghc .
	stack --docker --docker-image=alextanhongpin/alpine-ghc install
	docker build -t alextanhongpin/docker-haskell .

run:
	docker run alextanhongpin/docker-haskell