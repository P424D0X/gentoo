# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An XHTML combinator library"
HOMEPAGE="https://github.com/haskell/xhtml"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6"

CABAL_CORE_LIB_GHC_PV="7.8.3 7.8.3.20141119 7.8.4 7.10.0.20141222 7.10.0.20150123 PM:7.10.1_rc3 PM:7.10.1 PM:7.10.2_rc2 PM:7.10.2 PM:7.10.2-r1 PM:7.10.3_rc1 PM:7.10.3 PM:8.0.1_rc1 PM:8.0.1_rc2 PM:8.0.1_rc3 PM:8.0.1_rc4 PM:8.0.1 PM:8.0.2_rc1 PM:8.0.2_rc2 PM:8.0.2"
