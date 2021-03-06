# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DIST_AUTHOR="DAVECROSS"
DIST_VERSION=2.00
inherit perl-module

DESCRIPTION="Perl extension to model fractions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Moose
	virtual/perl-Carp"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.400.0
	test? ( virtual/perl-Test-Simple )"

src_test() {
	perl_rm_files "t/10_pod.t" "t/11_pod_coverage.t"
	perl-module_src_test
}
