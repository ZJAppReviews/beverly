#!/bin/bash

function swift_lint() {
    linting "https://github.com/realm/SwiftLint" swiftlint
}

function storyboard_lint() {
    linting "[sudo] gem install storyboardlint" storyboardlint .
}

function linting() {
    installation=$1
    cmd=$2

    type $cmd >/dev/null 2>&1 || { echo >&2 "$cmd does not exist, install it by $installation"; exit 1; }

    shift 2

    out=$($cmd $@)
    length=${#out}
    if test $length -gt 0; then
        echo "$cmd has found errors: $out"
        exit 1
    fi
    echo "Cool, not lint errors, keep on!"
    exit 0
}

$@
