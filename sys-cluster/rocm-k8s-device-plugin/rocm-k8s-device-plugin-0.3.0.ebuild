# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module
# update these on every bump
VERSION=v1.18.1-8-gabd271e
TAG="amd-gpu-helm-${PV}"

GH_REPO="RadeonOpenCompute/k8s-device-plugin"
GH_TS="1668377184" # https://bugs.gentoo.org/881037 - bump this UNIX timestamp if the downloaded file changes checksum

DESCRIPTION="AMD GPU device plugin for kubernetes"
HOMEPAGE="https://github.com/RadeonOpenCompute/k8s-device-plugin"
SRC_URI="https://github.com/${GH_REPO}/archive/refs/tags/${TAG}.tar.gz
 -> ${P}.gh@${GH_TS}.tar.gz
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-apps/hwloc
	x11-libs/libdrm[video_cards_amdgpu]"
RDEPEND="${DEPEND}
	sys-cluster/kubelet"

S="${WORKDIR}/k8s-device-plugin-${TAG}"

src_compile() {
	GOBIN="${S}/bin" ego install -ldflags="-X main.gitDescribe=${VERSION}" \
	./cmd/k8s-device-plugin
}

src_install() {
	exeinto /var/lib/kubelet/device-plugins
	doexe bin/k8s-device-plugin
	einstalldocs
}
