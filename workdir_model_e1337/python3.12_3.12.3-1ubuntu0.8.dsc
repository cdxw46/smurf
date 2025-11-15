-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: python3.12
Binary: python3.12, python3.12-venv, libpython3.12-stdlib, python3.12-minimal, python3.12-nopie, libpython3.12-minimal, libpython3.12t64, python3.12-examples, python3.12-dev, libpython3.12-dev, libpython3.12-testsuite, idle-python3.12, python3.12-doc, python3.12-dbg, libpython3.12t64-dbg, python3.12-full
Architecture: any all
Version: 3.12.3-1ubuntu0.8
Maintainer: Ubuntu Core Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Stefano Rivera <stefanor@debian.org>
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/cpython-team/python3
Vcs-Git: https://salsa.debian.org/cpython-team/python3.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, ca-certificates, gdb, locales-all, python3-distutils, python3-gdbm, python3-gdbm-dbg, python3-pip, python3-setuptools, python3-setuptools-whl, python3-tk, python3-tk-dbg, python3-wheel-whl, shunit2, systemtap-sdt-dev, virtualenv
Build-Depends: debhelper (>= 11), dpkg-dev (>= 1.17.11), quilt, autoconf, lsb-release, sharutils, libreadline-dev | libeditreadline-dev, libncurses-dev, zlib1g-dev, libbz2-dev, liblzma-dev, libgdbm-dev, libdb-dev, libssl-dev, libexpat1-dev, libbluetooth-dev [linux-any] <!pkg.python3.12.nobluetooth>, locales-all, libnsl-dev, libsqlite3-dev, libffi-dev (>= 3.0.5) [!or1k], libgpm2 [linux-any], media-types | mime-support, netbase, bzip2, time, python3:any, python3.12:any <cross>, net-tools, systemtap-sdt-dev [!hurd-amd64 !hurd-i386], valgrind-if-available
Build-Depends-Indep: python3-sphinx, python3-docs-theme, texinfo
Package-List:
 idle-python3.12 deb python optional arch=all
 libpython3.12-dev deb libdevel optional arch=any
 libpython3.12-minimal deb python optional arch=any
 libpython3.12-stdlib deb python optional arch=any
 libpython3.12-testsuite deb libdevel optional arch=all
 libpython3.12t64 deb libs optional arch=any
 libpython3.12t64-dbg deb debug optional arch=any
 python3.12 deb python optional arch=any
 python3.12-dbg deb debug optional arch=any
 python3.12-dev deb python optional arch=any
 python3.12-doc deb doc optional arch=all
 python3.12-examples deb python optional arch=all
 python3.12-full deb python optional arch=any
 python3.12-minimal deb python optional arch=any
 python3.12-nopie deb python optional arch=any
 python3.12-venv deb python optional arch=any
Checksums-Sha1:
 3df73004a9b224d021fd397724e8bd4f9b6cc824 20625068 python3.12_3.12.3.orig.tar.xz
 b897e858859126b348f05642f020f57193902e62 257268 python3.12_3.12.3-1ubuntu0.8.debian.tar.xz
Checksums-Sha256:
 56bfef1fdfc1221ce6720e43a661e3eb41785dd914ce99698d8c7896af4bdaa1 20625068 python3.12_3.12.3.orig.tar.xz
 2c49e2f40a797284f0c109ff2db7679a5d3d44ed715f078925f2de64cb9b1a97 257268 python3.12_3.12.3-1ubuntu0.8.debian.tar.xz
Files:
 8defb33f0c37aa4bdd3a38ba52abde4e 20625068 python3.12_3.12.3.orig.tar.xz
 be3fa7dc54626b2c0225d99f2731b15f 257268 python3.12_3.12.3-1ubuntu0.8.debian.tar.xz
Original-Maintainer: Matthias Klose <doko@debian.org>

-----BEGIN PGP SIGNATURE-----

iQJTBAEBCgA9FiEELOLXZEFYQHcSWEHiyfW2m9Ldu6sFAmieO58fHGhsaWIua29y
emh5bnNreXlAY2Fub25pY2FsLmNvbQAKCRDJ9bab0t27q+hiD/4qOioBfYoQgnBs
tjEExgs9l5PcFE2zS0ZL+7ZB2wRyDBfa0r06HeFJAdjv4YrJKt6BC9gXlxIfTA6x
uVndqOBokNnN0sUhZEI5efF399aR6ewBfmyWqaHRVBbhi7pa5Pr7+SvVLsUJOCRe
SNc4rCNwb+xx5WDh+ZysaCbo3z7nJvOuKwM+67ki1BLN9igwIto7TtbTrf55h9cB
aUHvp+GRLEA1s6OmOy+cm6h1gOkV1XOo6OhZ89sSgrIU/KSMbCXAkCFMA4tmfbzP
iCs74BbyO6y4OluplXSdvZecOypnzmcOmNdjAlxGtMq7O/gbW8YXcWZJIoL159nO
KqbBFON9rOHx3KQwAGcjn7hiEMbyqkjYai1T1lGrIJFXqPvpGIEldilA13qG4F+P
kfTsU8ndOW/hqGFNy+zh+n39FJumBoqjpWRwRwlGVdQhi/PCNAFioU6WYJo3q/lK
rCCwWNqTkCXjGVBHqGu/8TwUlxQnPLeUb6F9JN1SHj5mN2dRZKjJpbM5+3fDhI/B
OnHIU0z8FXgzhJt4mjb+8Ad172kegzy3++Joha7Sg/Ei9hNaUUo+6E/31fNL0ECa
azRz3hLDe94rXvOldkoMB0YUJMMJlQfU7WpznMrSwXYkNaKf1rnI10RqfmlAYR0u
Q48FgZQ2ZJ8Itdh4a2gmuRIptgN4xg==
=y5cX
-----END PGP SIGNATURE-----
