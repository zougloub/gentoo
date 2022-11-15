# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION="convert python profile data to kcachegrind calltree form"
HOMEPAGE="https://pypi.org/project/pyprof2calltree/"
# pypi tarball lacks tests
SRC_URI="https://github.com/pwaller/pyprof2calltree/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

distutils_enable_tests unittest
