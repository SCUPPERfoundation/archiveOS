#!/usr/bin/env bash
# -*- coding:utf-8 -*-

set -ex

# needs nomad tokens from stage1

# Docker on Raspberry Pi is not easy, so i started testing balenaOS
# and then yocto-linux as a method of ensuring Docker availability across
# platforms.

# TODO: run some Nomad commands that aren't Docker.
