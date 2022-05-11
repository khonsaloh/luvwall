PROG=luvwall
PROG_CONF=luvwall.conf

PREFIX = /usr/local/bin

install:
	chmod 0755 $(PROG)
	cp -rp ${PROG} ${DESTDIR}${PREFIX}/${PROG}
	cp -rp ${PROG_CONF} ${HOME}/.config/${PROG_CONF}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/${PROG}
	rm -f ${HOME}/.config/${PROG_CONF}

.PHONY: install uninstall
