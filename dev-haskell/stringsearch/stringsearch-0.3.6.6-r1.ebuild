# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -base3,+base4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Fast searching, splitting and replacing of ByteStrings"
HOMEPAGE="https://bitbucket.org/dafis/stringsearch"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	default

	cabal_chdeps \
		'containers >= 0.3 && < 0.6' 'containers >= 0.3'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-base3 \
		--flag=base4
}
