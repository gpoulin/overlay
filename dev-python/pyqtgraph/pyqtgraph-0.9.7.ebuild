# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2} )

inherit distutils-r1

DESCRIPTION="Pure-python graphics and GUI library built on PyQt4/PySide and numpy."
HOMEPAGE="http://www.pyqtgraph.org/"
SRC_URI="http://www.pyqtgraph.org/downloads/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x64-macos ~x86-linux"
IUSE="opengl example"

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/numpy
	sci-libs/scipy
	opengl? ( dev-python/pyopengl )
	|| ( >=dev-python/PyQt4-4.7.0 dev-python/pyside )"

src_prepare() {
	use opengl || rm -r pyqtgraph/opengl
	if ! use example; then
		 sed -i -e '/package_dir/d' setup.py || die "Unable to remove example"
		 sed -i -e "s/+ \['pyqtgraph\.examples'\]//" setup.py || die "Unable to remove example"
	fi
}
