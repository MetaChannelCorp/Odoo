#!/usr/bin/env bash
set -euo pipefail

MAJOR="1"
MINOR="1.0"
PATCH="1.0.0"

build_and_push() {
    local name=$1
    local context=$2

    docker build \
        -t "ghcr.io/metachannelcorp/meta-od-${name}:${MAJOR}" \
        -t "ghcr.io/metachannelcorp/meta-od-${name}:${MINOR}" \
        -t "ghcr.io/metachannelcorp/meta-od-${name}:${PATCH}" \
        -t "ghcr.io/metachannelcorp/meta-od-${name}:latest" \
        -t "fjrodafo/meta-od-${name}:${MAJOR}" \
        -t "fjrodafo/meta-od-${name}:${MINOR}" \
        -t "fjrodafo/meta-od-${name}:${PATCH}" \
        -t "fjrodafo/meta-od-${name}:latest" \
        "./${context}"

    for tag in "${MAJOR}" "${MINOR}" "${PATCH}" "latest"; do
        docker push "ghcr.io/metachannelcorp/meta-od-${name}:${tag}"
        docker push "fjrodafo/meta-od-${name}:${tag}"
    done
}

build_and_push nginx nginx
