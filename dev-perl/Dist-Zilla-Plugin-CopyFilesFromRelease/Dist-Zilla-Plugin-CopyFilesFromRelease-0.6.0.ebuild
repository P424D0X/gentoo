# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=ETHER
DIST_VERSION=0.006
inherit perl-module

DESCRIPTION="Copy files from a release (for SCM inclusion, etc.)"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"
RDEPEND="
	dev-perl/Dist-Zilla
	dev-perl/Moose
	dev-perl/Path-Tiny
"
DEPEND="
	dev-perl/Module-Build-Tiny
"
BDEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/Test-Deep
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		virtual/perl-if
	)
"
