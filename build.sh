#!/usr/bin/env bash

set -ex

bundle install

cd lib/rails_crasher && gem build rails_crasher.gemspec && gem install rails_crasher-0.1.0.gem --install-dir /opt/render/project/.gems --no-document

