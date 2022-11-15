# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
NEED_EMACS=24

inherit elisp

DESCRIPTION="A websocket implementation in elisp"
HOMEPAGE="https://github.com/ahyatt/emacs-websocket"
SRC_URI="https://github.com/ahyatt/emacs-${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/emacs-${P}"
SITEFILE="50${PN}-gentoo.el"

src_compile() {
	elisp-compile websocket.el
}

src_test() {
	${EMACS} ${EMACSFLAGS} -L . -l websocket-test \
		-f ert-run-tests-batch-and-exit || die "tests failed"
}

src_install() {
	elisp-install ${PN} websocket.{el,elc}
	elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	dodoc README.org websocket-functional-test.el testserver.py
}
