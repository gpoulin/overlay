# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Amazon Redshift dialect for sqlalchemy."
HOMEPAGE="https://pypi.python.org/pypi/redshift-sqlalchemy"
SRC_URI="https://pypi.python.org/packages/source/r/redshift-sqlalchemy/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
