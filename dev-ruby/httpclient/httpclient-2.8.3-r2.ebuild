# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

USE_RUBY="ruby26 ruby27 ruby30"

RUBY_FAKEGEM_TASK_TEST="-Ilib test"
RUBY_FAKEGEM_TASK_DOC="doc"

RUBY_FAKEGEM_DOCDIR="doc"

RUBY_FAKEGEM_EXTRADOC="CHANGELOG.md README.md"

RUBY_FAKEGEM_GEMSPEC="httpclient.gemspec"

inherit ruby-fakegem

DESCRIPTION="'httpclient' gives something like the functionality of libwww-perl (LWP) in Ruby"
HOMEPAGE="https://github.com/nahi/httpclient"
SRC_URI="https://github.com/nahi/httpclient/archive/refs/tags/v${PV}.tar.gz -> ${P}.tgz"

LICENSE="|| ( Ruby Ruby-BSD BSD-2 )"
SLOT="0"

KEYWORDS="amd64 arm arm64 ~hppa ~loong ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris ~x86-solaris"
IUSE=""

ruby_add_rdepend "virtual/ruby-ssl"

ruby_add_bdepend "doc? ( dev-ruby/rdoc )"
ruby_add_bdepend "test? ( dev-ruby/test-unit dev-ruby/http-cookie )"

all_ruby_prepare() {
	rm Gemfile || die
	sed -i -e '/[bB]undler/s:^:#:' Rakefile || die

	# Fix documentation task
	sed -i -e 's/README.txt/README.md/' Rakefile || die

	# Remove mandatory CI reports since we don't need this for testing.
	sed -i -e '/reporter/s:^:#:' Rakefile || die

	# Remove mandatory simplecov dependency
	sed -i -e '/[Ss]imple[Cc]ov/ s:^:#:' test/helper.rb || die

	# Comment out test requiring network access that makes assumptions
	# about the environment, bug 395155
	sed -i -e '/test_async_error/,/^  end/ s:^:#:' test/test_httpclient.rb || die

	# Skip tests using rack-ntlm which is not packaged. Weirdly these
	# only fail on jruby.
	rm test/test_auth.rb || die

	# Skip test failing due to hard-coded expired certificate
	sed -i -e '/test_verification_without_httpclient/,/^  end/ s:^:#:' test/test_ssl.rb || die

	# Skip test depending on obsolete and vulnerable SSLv3
	sed -i -e '/test_no_sslv3/,/^  end/ s:^:#:' test/test_ssl.rb || die

	# Do not use 11-year-old bundled certificates!
	# fix this copy so it doesn't fail tests
	ln -sf "${EPREFIX}"/etc/ssl/certs/ca-certificates.crt ./dist_key/cacerts.pem
	ln -sf "${EPREFIX}"/etc/ssl/certs/ca-certificates.crt ./lib/httpclient/cacert.pem
}

each_ruby_test() {
	${RUBY} -Ilib:test:. -e 'gem "test-unit"; Dir["test/test_*.rb"].each{|f| require f}' || die
}

each_ruby_install() {
	each_fakegem_install
	# Do not use 11-year-old bundled certificates!
	# fix this copy for production systems
	# do not ship the cacert1024.pem at all anymore, nobody should use RSA1024 certs!
	rm -f "${ED}/$(ruby_fakegem_gemsdir)/gems/${RUBY_FAKEGEM_NAME}-${RUBY_FAKEGEM_VERSION}/lib/httpclient/"{cacert.pem,cacert1024}.pem
	dosym -r /etc/ssl/certs/ca-certificates.crt $(ruby_fakegem_gemsdir)/gems/${RUBY_FAKEGEM_NAME}-${RUBY_FAKEGEM_VERSION}/lib/httpclient/cacert.pem
}
