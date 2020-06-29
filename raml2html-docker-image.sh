#!/bin/bash

if [ -z "$1" ]; then
	echo "usage: $0 VERSION"
	echo "e.g. $0 3.0.1"
	echo "e.g. $0 7.5.0"
	exit 1
fi
VERSION=$1

docker build --build-arg RAML2HTML_VERSION=$VERSION -t registry.in.luxair.lu/raml2html:$VERSION .
docker push registry.in.luxair.lu/raml2html:$VERSION
