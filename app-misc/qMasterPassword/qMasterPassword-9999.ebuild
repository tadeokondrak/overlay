# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="A password manager based on Qt implementing Master Password"
HOMEPAGE="https://github.com/bkueng/qMasterPassword"
EGIT_REPO_URI="https://github.com/bkueng/qMasterPassword.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="x11-libs/libXtst x11-libs/libX11 app-crypt/libscrypt dev-libs/openssl >=dev-qt/qtcore-5.2:5"
RDEPEND="${DEPEND}"

src_compile() {
	/usr/lib/qt5/bin/qmake
	emake
}

src_install() {
	dobin qMasterPassword
}
