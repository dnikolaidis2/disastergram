#!/bin/bash

git submodule init

git config submodule.disastergram-auth.url git@github.com:dnikolaidis2/disastergram-auth.git
git config submodule.disastergram-web.url git@github.com:dnikolaidis2/disastergram-web.git
git config submodule.disastergram-storage.url git@github.com:dnikolaidis2/disastergram-storage.git
git config submodule.disastergram-applogic.url git@github.com:dnikolaidis2/disastergram-applogic.git