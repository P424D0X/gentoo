# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.9999
#hackport: flags: +base4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="QuickCheck2 support for the test-framework package"
HOMEPAGE="https://batterseapower.github.io/test-framework/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1.1:=[profile?] <dev-haskell/extensible-exceptions-0.2.0:=[profile?]
	>=dev-haskell/quickcheck-2.4:2=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/test-framework-0.7.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	cabal_chdeps \
		'QuickCheck >= 2.4 && < 2.8' 'QuickCheck >= 2.4'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=base4
}
