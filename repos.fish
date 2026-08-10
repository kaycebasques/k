#!/usr/bin/env fish

set repo_mappings "tw:technicalwriting.dev" "kb:kaycebasques.net"
for mapping in $repo_mappings
    set -l parts (string split ":" $mapping)
    set -l local_name $parts[1]
    set -l remote_name $parts[2]
    if not test -d $HOME/$local_name
        git clone git@github.com:kaycebasques/$remote_name.git $HOME/$local_name
        git -C $HOME/$local_name config --local user.email "kaycebasques@gmail.com"
    end
end
