# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit toolchain-funcs eutils

DESCRIPTION="A free debugger for use with MSP430 MCUs"
HOMEPAGE="http://dlbeer.co.nz/mspdebug/ https://github.com/dlbeer/mspdebug"
SRC_URI="https://github.com/dlbeer/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="readline"

DEPEND="readline? ( sys-libs/readline:0 )
	virtual/libusb:0"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "s:-O1 \(.*\) -ggdb:\1:" Makefile || die
}

src_compile() {
	emake CC="$(tc-getCC)" LIBDIR=/usr/lib $(usex readline "" "WITHOUT_READLINE=1")
}

src_install() {
	emake DESTDIR="${ED}" LIBDIR=/usr/lib PREFIX=/usr install
	dodoc AUTHORS ChangeLog README
}
