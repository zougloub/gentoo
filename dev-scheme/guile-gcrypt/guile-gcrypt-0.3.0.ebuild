# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Guile bindings of libgcrypt"
HOMEPAGE="https://notabug.org/cwebber/guile-gcrypt"
SRC_URI="https://notabug.org/cwebber/guile-gcrypt/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="strip"

RDEPEND="
	>=dev-scheme/guile-2.0.11:=
	dev-libs/libgcrypt:0=
"
DEPEND="${RDEPEND}"

# guile generates ELF files without use of C or machine code
# It's a portage's false positive. bug #677600
QA_PREBUILT='*[.]go'

src_prepare() {
	default

	# http://debbugs.gnu.org/cgi/bugreport.cgi?bug=38112
	find "${S}" -name "*.scm" -exec touch {} + || die

	# upstream tag on top of source tree. has no autogenerated files
	eautoreconf
}
