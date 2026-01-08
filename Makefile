VERSION = 1.1-2

all: deb

deb: changelog manpage
	dpkg-deb --root-owner-group --build package yubikey-zfs-initramfs-$(VERSION).deb

changelog:
	gzip --best --no-name --stdout < changelog.Debian > package/usr/share/doc/yubikey-zfs-initramfs/changelog.Debian.gz

manpage:
	gzip --best --no-name --stdout < README.md > package/usr/share/doc/yubikey-zfs-initramfs/README.md.gz
	mkdir --parents package/usr/share/man/man8
	pandoc --standalone --to man yubikey-zfs-enroll.8.md | gzip --best --no-name --stdout > package/usr/share/man/man8/yubikey-zfs-enroll.8.gz

lintian:
	lintian --suppress-tags-from-file lintian.suppress yubikey-zfs-initramfs-$(VERSION).deb

clean:
	rm --force package/usr/share/doc/yubikey-zfs-initramfs/changelog.Debian.gz
	rm --recursive --force package/usr/share/man
	rm --force package/usr/share/doc/yubikey-zfs-initramfs/README.md.gz

clean-all: clean
	rm --force yubikey-zfs-initramfs-$(VERSION).deb

