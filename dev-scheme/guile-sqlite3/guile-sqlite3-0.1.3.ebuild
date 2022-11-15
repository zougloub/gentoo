# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Guile bindings of sqlite3"
HOMEPAGE="https://notabug.org/guile-sqlite3/guile-sqlite3"
SRC_URI="https://notabug.org/guile-sqlite3/guile-sqlite3/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="LGPL-3+ GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="strip"

RDEPEND="
	>=dev-scheme/guile-2.0.11:=
	dev-db/sqlite:3=
"
DEPEND="${RDEPEND}"

# guile generates ELF files without use of C or machine code
# It's a portage's false positive. bug #677600
QA_PREBUILT='*[.]go'

src_prepare() {
	default

	# upstream tag on top of source tree. has no autogenerated files
	eautoreconf
}
