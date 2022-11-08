PROG=luvwall
PROG_CONF=luvwall.conf

PREFIX = /usr/local/bin

install:
	chmod 0755 $(PROG)
	cp -r ${PROG} ${DESTDIR}${PREFIX}/${PROG}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/${PROG}

.PHONY: install uninstall
