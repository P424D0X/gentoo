# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.0.1
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.10:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/haddock-library-1.4:=[profile?] <dev-haskell/haddock-library-1.5:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/xhtml-3000.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-8.0:= <dev-lang/ghc-8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3 )
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.0.2_rc1.patch)
