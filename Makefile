PROG=luvwall

PREFIX = /usr/local/bin

install:
	chmod 0755 $(PROG)
	cp -rp ${PROG} ${DESTDIR}${PREFIX}/${PROG}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/${PROG}

.PHONY: install uninstall
