# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="TLS/SSL protocol native implementation (Server and Client)"
HOMEPAGE="https://github.com/vincenthz/hs-tls"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+compat"

RDEPEND="dev-haskell/asn1-encoding:=[profile?]
	>=dev-haskell/asn1-types-0.2.0:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/byteable:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?]
	>=dev-haskell/cipher-aes-0.2:=[profile?] <dev-haskell/cipher-aes-0.3:=[profile?]
	dev-haskell/cipher-des:=[profile?]
	dev-haskell/cipher-rc4:=[profile?]
	>=dev-haskell/crypto-cipher-types-0.0.8:=[profile?]
	dev-haskell/crypto-numbers:=[profile?]
	>=dev-haskell/crypto-pubkey-0.2.8:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.4:=[profile?]
	>=dev-haskell/crypto-random-0.0:=[profile?] <dev-haskell/crypto-random-0.1:=[profile?]
	>=dev-haskell/cryptohash-0.6:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/x509-1.5.0:=[profile?] <dev-haskell/x509-1.6.0:=[profile?]
	>=dev-haskell/x509-store-1.5.0:=[profile?]
	>=dev-haskell/x509-validation-1.5.1:=[profile?] <dev-haskell/x509-validation-1.6.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/cprng-aes-0.5
		dev-haskell/hourglass
		dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag compat compat)
}
