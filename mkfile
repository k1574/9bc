<mkconfig
TARG = exe/$PROGNAME
CFILES = $CFILES $YCFILES
OFILES = ${CFILES:%.c=%.o}
CFLAGS = $DEFS $INCS
$TARG : $OFILES 
	mkdir -p exe
	$LD -o $target $OFILES $AFILES $LIBS
%.o : %.c
	$CC -c -o $target $CFLAGS $prereq
$YCFILES $YHFILES :
	$YACC -d $YFILES
<$MKINCDIR/std/install
clean:
	rm -f $TARG $YCFILES $YHFILES $OFILES
