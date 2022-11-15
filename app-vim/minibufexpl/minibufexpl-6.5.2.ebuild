# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin

MY_PN="${PN}.vim"
DESCRIPTION="vim plugin: easily switch between buffers"
HOMEPAGE="https://github.com/fholgado/minibufexpl.vim"
SRC_URI="https://github.com/fholgado/${MY_PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="bufexplorer.vim"
KEYWORDS="amd64 ~mips ppc x86"

VIM_PLUGIN_HELPFILES="${PN}.txt"

S=${WORKDIR}/${MY_PN}-${PV}
