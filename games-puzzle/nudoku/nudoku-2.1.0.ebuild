# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="ncurses based sudoku game"
HOMEPAGE="https://jubalh.github.io/nudoku/"
SRC_URI="https://github.com/jubalh/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cairo"

BDEPEND="virtual/pkgconfig"
DEPEND="
	cairo? ( x11-libs/cairo )
	>=sys-devel/gettext-0.20
	sys-libs/ncurses:=
	virtual/libintl
"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-2.1.0-ncurses-link.patch"
)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf $(use_enable cairo)
}
