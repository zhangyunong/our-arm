for d in `find -type d`; do
	if [ -f $d/Makefile ]; then
		make -C $d clean
	fi
done
