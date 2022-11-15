# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 xdg cmake

DESCRIPTION="Cross platform personalization tool for the Nitrokey"
HOMEPAGE="https://github.com/Nitrokey/nitrokey-app"

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Nitrokey/nitrokey-app"

	# Disable pulling in bundled dependencies
	EGIT_SUBMODULES=()
else
	SRC_URI="https://github.com/Nitrokey/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 ~ppc64 x86"
fi

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=app-crypt/libnitrokey-3.5:=
	dev-qt/qtconcurrent:5
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5"
DEPEND="
	${RDEPEND}
	dev-libs/cppcodec"
BDEPEND="
	dev-qt/linguist-tools:5
	virtual/pkgconfig"

src_configure() {
	local mycmakeargs=( -DBASH_COMPLETION_PATH="$(get_bashcompdir)" )
	cmake_src_configure
}
