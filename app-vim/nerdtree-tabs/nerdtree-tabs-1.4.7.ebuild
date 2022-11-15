# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin

DESCRIPTION="vim plugin: NERDTree and tabs in vim"
HOMEPAGE="https://github.com/jistr/vim-nerdtree-tabs"
SRC_URI="https://github.com/jistr/vim-${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
KEYWORDS="amd64 x86"

RDEPEND="app-vim/nerdtree"

S="${WORKDIR}/vim-${P}"

VIM_PLUGIN_HELPFILES="${PN}"

DOCS=( CHANGELOG.md README.md )
