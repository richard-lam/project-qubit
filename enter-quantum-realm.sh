#!/bin/bash

docker run -it \
	--rm \
	-p 8888:8888 \
	-v $(pwd)/quantum-realm:/workspace \
	--name project-qubit \
	project-qubit

