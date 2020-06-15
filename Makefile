PREFIX    = /usr/local
SHAREDIR  = ${PREFIX}/share
BINDIR    = ${PREFIX}/bin
MANPREFIX = ${SHAREDIR}/man
MAN8      = ${MANPREFIX}/man8

all:
	@echo run \'make install\' to install genfstab

install:
	install -Dm755 genfstab   ${DESTDIR}${BINDIR}/genfstab
	install -Dm644 genfstab.8 ${DESTDIR}${MAN8}/genfstab.8

uninstall:
	rm -f ${DESTDIR}${BINDIR}/genfstab
	rm -f ${DESTDIR}${MAN8}/genfstab.8

.PHONY: all install uninstall
