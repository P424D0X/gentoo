# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="X11-xft"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Bindings to the Xft, X Free Type interface library, and some Xrender parts"
HOMEPAGE="https://hackage.haskell.org/package/X11-xft"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/utf8-string-0.1:=[profile?]
		>=dev-haskell/x11-1.2.1:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/libXft"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0
		virtual/pkgconfig"

S="${WORKDIR}/${MY_P}"
