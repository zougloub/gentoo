# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="A suite for man in the middle attacks"
HOMEPAGE="https://github.com/Ettercap/ettercap"

LICENSE="GPL-2+"
SLOT="0"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Ettercap/${PN}.git"
else
	SRC_URI="https://github.com/Ettercap/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~alpha ~amd64 ~arm ~ppc ~ppc64 ~sparc ~x86"
fi

IUSE="doc geoip gtk ipv6 ncurses +plugins test"
RESTRICT="!test? ( test )"

RDEPEND="dev-libs/libbsd
	dev-libs/libpcre
	dev-libs/openssl:0=
	net-libs/libnet:1.1
	>=net-libs/libpcap-0.8.1
	sys-libs/zlib
	geoip? ( dev-libs/geoip )
	gtk? (
		>=dev-libs/atk-1.2.4
		>=dev-libs/glib-2.2.2:2
		media-libs/freetype
		x11-libs/cairo
		x11-libs/gdk-pixbuf:2
		>=x11-libs/gtk+-2.2.2:2
		>=x11-libs/pango-1.2.3
	)
	ncurses? ( >=sys-libs/ncurses-5.3:= )
	plugins? ( >=net-misc/curl-7.26.0 )"
DEPEND="${RDEPEND}
	doc? ( app-text/ghostscript-gpl
		sys-apps/groff )
	test? ( dev-libs/check )
	sys-devel/flex
	virtual/yacc"

src_prepare() {
	sed -i "s:Release:Release Gentoo:" CMakeLists.txt || die
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DENABLE_CURSES="$(usex ncurses)"
		-DENABLE_GTK="$(usex gtk)"
		-DENABLE_PLUGINS="$(usex plugins)"
		-DENABLE_IPV6="$(usex ipv6)"
		-DENABLE_TESTS="$(usex test)"
		-DENABLE_PDF_DOCS="$(usex doc)"
		-DENABLE_GEOIP="$(usex geoip)"
		-DBUNDLED_LIBS=OFF
		-DSYSTEM_LIBS=ON
		-DINSTALL_SYSCONFDIR="${EPREFIX}"/etc
	)

	! use gtk && mycmakeargs+=(-DINSTALL_DESKTOP=OFF)
		#right now we only support gtk2, but ettercap also supports gtk3
		#do we care? do we want to support both?
	cmake_src_configure
}
