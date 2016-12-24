#!/bin/bash

: ${TLROOT:=/home/norbert/Development/TeX/texlive.git}
: ${TLTEXJP:=/home/norbert/public_html/tltexjp}

# update tlpdb
"$TLROOT/Master/tlpkg/bin/tl-update-tlpdb" \
	-with-w32-pattern-warning -from-files -no-reverse-revision-check \
	--keep-revisions --master=`pwd`


"$TLROOT/Master/tlpkg/bin/tl-update-containers" \
	-master `pwd` \
	-gpgcmd `pwd`/tl-sign-file \
	-location "$TLTEXJP" \
	-all

# -recreate
