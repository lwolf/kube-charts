#!/bin/sh
set -e

git submodule update --recursive
git submodule foreach sync

cd gitlab/gitlab
helm dep update
cd ../..
helm package gitlab/gitlab
helm package runner
helm package registry
helm package plex
helm package kubereplay
helm package victoria-metrics
helm package kiali-operator

mv *.tgz tmp

# ------ release ------
git checkout gh-pages
mv tmp/*.tgz .
helm repo index . --url http://charts.lwolf.org

