# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1 git-r3

DESCRIPTION="A simple API for exporting your matplotlib graphics to HTML."
HOMEPAGE="http://mpld3.github.io/"
SRC_URI=""
EGIT_REPO_URI="git://github.com/jakevdp/mpld3.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
