# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="Window Chef is a stacking window manager that cooks windows with orders from the Waitron"
HOMEPAGE="https://github.com/tudurom/windowchef"
EGIT_REPO_URI="https://github.com/tudurom/windowchef.git"

LICENSE="ISC"
SLOT="0"
IUSE=""

DEPEND="x11-misc/xcb x11-apps/xrandr x11-libs/xcb-util-wm x11-libs/xcb-util-keysyms x11-proto/xproto"
RDEPEND="${DEPEND}"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
