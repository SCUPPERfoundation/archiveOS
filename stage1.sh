#!/usr/bin/env bash
# -*- coding:utf-8 -*-

set -ex

TERRAFORM_VERSION=0.12.29
TERRAFORM_ARCH=linux_arm

#TODO unzip mirrors and update reference to shasums

CANDIDATE_VERSION=`(terraform -version || echo v0) |head -1 |cut -d'v' -f2`

if [ $TERRAFORM_VERSION != $CANDIDATE_VERSION ]; then
    # do the things to upgrade terraform
    tf_version=$TERRAFORM_VERSION
    tf_arch=$TERRAFORM_ARCH
    wget https://releases.hashicorp.com/terraform/"$tf_version"/terraform_"$tf_version"_"$tf_arch".zip
    grep "$tf_version"_"$tf_arch" terraform_"$tf_version"_SHA256SUMS.txt \
      > terraform_"$tf_version"_"$tf_arch".shasum.tmp
    shasum -c terraform_"$tf_version"_"$tf_arch".shasum.tmp
    rm terraform_"$tf_version"_"$tf_arch".shasum.tmp
    unzip terraform_"$tf_version"_"$tf_arch".zip
    sudo mv terraform /usr/local/bin/
    rm terraform_"$tf_version"_"$tf_arch".zip
fi


# needs DIGITALOCEAN_ACCESS_TOKEN
# no builds for ARM https://github.com/digitalocean/doctl/releases
# sudo snap install doctl works though!
# insert terraform calls from here
