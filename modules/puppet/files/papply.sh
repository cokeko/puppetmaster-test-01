#!/bin/sh
sudo puppet apply /opt/puppet/manifests/site.pp --modulepath=/opt/puppet/modules/ $*
