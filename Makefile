BINDIR=/usr/bin
ETCDIR=/etc/pkg

install:
	install -vdm755 $(DESTDIR)$(BINDIR)
	install -vm755 pkg-install $(DESTDIR)$(BINDIR)
	install -vm755 pkg-search $(DESTDIR)$(BINDIR)
	install -vm755 pkg-remove $(DESTDIR)$(BINDIR)
	install -vdm755 $(DESTDIR)$(ETCDIR)
	install -vm644 pkg.conf $(DESTDIR)$(ETCDIR)

uninstall:
	rm -f \
		$(DESTDIR)$(BINDIR)/pkg-install \
		$(DESTDIR)$(BINDIR)/pkg-remove \
		$(DESTDIR)$(BINDIR)/pkg-search \
		$(DESTDIR)$(ETCDIR)/pkg.conf

.PHONY: all install
