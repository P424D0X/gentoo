# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=PJACKLAM
DIST_VERSION=1.999806
DIST_EXAMPLES=("examples/*")
inherit perl-module

DESCRIPTION="Arbitrary size floating point math package"

SLOT="0"
KEYWORDS=""
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=virtual/perl-Math-Complex-1.390.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( >=virtual/perl-Test-Simple-0.940.0 )
"

PDEPEND="
	>=virtual/perl-Math-BigInt-FastCalc-0.270.0
	>=virtual/perl-bignum-0.220.0
	>=virtual/perl-Math-BigRat-0.260.200
"
# where does this come from?

src_test() {
	perl_rm_files t/author-*.t t/03podcov.t t/00sig.t t/02pod.t
	perl-module_src_test
}
