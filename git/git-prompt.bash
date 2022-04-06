#!/bin/bash

git_branch() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1 /'
    fi
}

is_branch() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo ':'
    fi
}

PS1=$'\[\033[0;36m\]\W$(is_branch) \[\033[0;32m\]$(git_branch)\[\033[0;36m\]\u05D0\[\033[0m\] '

