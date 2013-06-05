# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-cluster/libdlm/libdlm-3.2.0.ebuild,v 1.1 2013/03/20 14:34:06 ultrabug Exp $

EAPI=4

inherit linux-info multilib toolchain-funcs versionator git-2 distutils

CLUSTER_RELEASE="${PV}"
MY_P="cluster-${CLUSTER_RELEASE}"

MAJ_PV="$(get_major_version)"
MIN_PV="$(get_version_component_range 2-3)"

DESCRIPTION="General-purpose Distributed Lock Manager Library"
HOMEPAGE="https://fedorahosted.org/cluster/wiki/HomePage"
#SRC_URI="https://fedorahosted.org/releases/c/l/cluster/${MY_P}.tar.gz"
EGIT_REPO_URI="git://git.fedorahosted.org/dlm.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="static-libs"

RDEPEND="
	!sys-cluster/dlm-headers
	!sys-cluster/dlm-kernel
	!sys-cluster/dlm-lib"
DEPEND="${RDEPEND}
	>=sys-kernel/linux-headers-2.6.24"

#S="${WORKDIR}/${MY_P}/dlm"
S="${WORKDIR}/${MY_P}/dlm/libdlm"
#/var/tmp/portage/sys-cluster/libdlm-9999/work/cluster-9999/dlm/libdlm
src_prepare() {
#	sed -i \
#		-e "s|/lib|/$(get_libdir)|g" \
#"${WORKDIR}/${MY_P}/make/install.mk" || die "sed failed"
	cd ${S}
	make clean
}

src_configure() {
	echo 'nothing to do here'
}

src_compile() {
	make all
}

src_install() {
	make install
}
