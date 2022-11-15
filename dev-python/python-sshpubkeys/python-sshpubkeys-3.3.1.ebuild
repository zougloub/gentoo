# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION="OpenSSH public key parser for Python"
HOMEPAGE="
	https://pypi.org/project/sshpubkeys/
	https://github.com/ojarva/python-sshpubkeys"
SRC_URI="
	https://github.com/ojarva/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~ppc64 ~riscv x86"

RDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/ecdsa[${PYTHON_USEDEP}]
"

distutils_enable_tests unittest
