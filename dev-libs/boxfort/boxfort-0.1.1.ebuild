# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..10} )

inherit meson python-any-r1

DESCRIPTION="Convenient & cross-platform sandboxing C library"
HOMEPAGE="https://github.com/Snaipe/BoxFort"
SRC_URI="https://github.com/Snaipe/BoxFort/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 -riscv ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="test? (
		$(python_gen_any_dep 'dev-util/cram[${PYTHON_USEDEP}]')
	)"
BDEPEND="virtual/pkgconfig"

S="${WORKDIR}/BoxFort-${PV}"

python_check_deps() {
	use test && has_version "dev-util/cram[${PYTHON_USEDEP}]"
}

pkg_setup() {
	use test && python-any-r1_pkg_setup
}

src_configure() {
	local emesonargs=(
		-Dsamples=$(usex test true false)
		-Dtests=$(usex test true false)
	)

	meson_src_configure
}
