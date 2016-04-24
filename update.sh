
# update tlpdb
/src/TeX/texlive.git/Master/tlpkg/bin/tl-update-tlpdb \
	-with-w32-pattern-warning -from-files -no-reverse-revision-check \
	--keep-revisions --master=`pwd`


/src/TeX/texlive.git/Master/tlpkg/bin/tl-update-containers \
	-master `pwd` \
	-location /var/www/norbert/tltexjp \
	-all

# -recreate
