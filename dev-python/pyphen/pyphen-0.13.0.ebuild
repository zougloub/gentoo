# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Python module for hyphenation using hunspell dictionaries"
HOMEPAGE="https://github.com/Kozea/Pyphen"
SRC_URI="https://github.com/Kozea/Pyphen/archive/refs/tags/${PV}.tar.gz -> ${P}.gh.tar.gz"
S=${WORKDIR}/${P^}

LICENSE="GPL-2+ LGPL-2+ MPL-1.1"
SLOT="0"
KEYWORDS="amd64 ~riscv x86"

distutils_enable_tests pytest

src_prepare() {
	# avoid dep on extra plugins
	sed -e '/addopts/d' -i pyproject.toml || die
	distutils-r1_src_prepare
}
