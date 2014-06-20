#!/bin/sh
# for git, params as follows, path old-file old-hex old-mode new-file new-hex new-mode

[ $# -eq 7 ] && ~/bin/ext-merge.sh "$2" "$5"
