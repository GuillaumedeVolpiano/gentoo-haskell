# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{{9..13},13t} )
inherit webapp python-single-r1

DESCRIPTION="A web interface for darcs"
HOMEPAGE="https://blitiri.com.ar/p/darcsweb/"
SRC_URI="https://blitiri.com.ar/p/darcsweb/files/${PV}/${P}.tar.bz2"

LICENSE="public-domain"
WEBAPP_MANUAL_SLOT="yes"
SLOT="0/${PV}"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="dev-vcs/darcs
	${PYTHON_DEPS}"

src_install() {
	webapp_src_preinst
	dodoc README
	newbin mkconfig.py darcsweb-mkconfig.py

	chmod +x darcsweb.cgi

	cp style.css "${D}${MY_HTDOCSDIR}"
	cp darcsweb.cgi "${D}${MY_HTDOCSDIR}"
	cp minidarcs.png "${D}${MY_HTDOCSDIR}"
	cp darcs.png "${D}${MY_HTDOCSDIR}"
	cp config.py.sample "${D}${MY_HTDOCSDIR}"
	webapp_postinst_txt en "${FILESDIR}/postinstall-en.txt"
	webapp_src_install
}

pkg_setup() {
	webapp_pkg_setup
}
