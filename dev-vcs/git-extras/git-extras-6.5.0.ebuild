# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Git utilities -- repo summary, repl, changelog population, and many more"
HOMEPAGE="https://github.com/tj/git-extras"
SRC_URI="https://github.com/tj/git-extras/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x64-macos"

RDEPEND="
	app-shells/bash
	dev-vcs/git
"

PATCHES=(
	"${FILESDIR}"/${PN}-6.5.0-no-bash-completion-install.patch
)

src_prepare() {
	default

	# For now, don't force including the git completion
	# sed -i -e "1 i source $(get_bashcompdir)\/git" etc/bash_completion.sh || die
}

src_compile() {
	return
}

src_install() {
	emake \
		DESTDIR="${D}" \
		PREFIX="${EPREFIX}/usr" \
		SYSCONFDIR="${EPREFIX}/etc" \
		install

	# TODO: Unfortunately, none of the completion seems to
	# actually work for me yet(?)

	#newbashcomp "${S}"/etc/bash_completion.sh ${PN}

	#insinto /usr/share/zsh/site-functions
	#newins "${S}"/etc/${PN}-completion.zsh _${PN}

	#insinto /usr/share/fish/vendor_completions.d
	#doins "${S}"/etc/${PN}.fish
}
