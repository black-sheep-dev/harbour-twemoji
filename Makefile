all: clean
	mkdir -p _build/BUILDROOT/harbour-twemoji-13.0.2-1.noarch/usr/share/harbour-twemoji/ && \
	cp -R twemoji/assets/* _build/BUILDROOT/harbour-twemoji-13.0.2-1.noarch/usr/share/harbour-twemoji/ && \
	cp js/twemoji.min.js _build/BUILDROOT/harbour-twemoji-13.0.2-1.noarch/usr/share/harbour-twemoji/
	rpmbuild --target=noarch --define="%_topdir `pwd`/_build"  --define "%_sourcedir `pwd`" -bb harbour-twemoji.spec && \
	cp _build/RPMS/noarch/*rpm .

clean:
	rm -rf _build *rpm
