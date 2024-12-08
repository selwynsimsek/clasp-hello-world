CFLAGS=`pkg-config --cflags libclasp`
LDFLAGS=`pkg-config --libs libclasp`

ifeq ($(UNAME_S),Darwin)
	LIBEXT=dylib
	LIBFLAGS=-dynamic
else
	LIBEXT=so
	LIBFLAGS=-shared
endif

libhello-world.${LIBEXT} : hello-world.o
	clang++ ${LIBFLAGS} -olibhello-world.${LIBEXT} hello-world.o ${LDFLAGS}

hello-world.o : hello-world.cc
	clang++ -c -fPIC ${CFLAGS} hello-world.cc

clean :
	rm hello-world.o libhello-world.${LIBEXT}
