# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="LZMA/XZ compression and decompression"
HOMEPAGE="https://github.com/hvr/lzma"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+pkgconfig"

CABAL_CHDEPS=(
	'tasty             ^>=1.5' 'tasty >=1.4'
	'tasty-quickcheck  ^>=0.10.3 || ^>=0.11' 'tasty-quickcheck >=0.10.2'
	)

RDEPEND=">=dev-lang/ghc-9.0.2:=
		app-arch/xz-utils
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/tasty-1.4 <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-hunit-0.10.1 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/quickcheck-2.14.1 <dev-haskell/quickcheck-2.16
		>=dev-haskell/tasty-quickcheck-0.10.2 <dev-haskell/tasty-quickcheck-0.12 )
	pkgconfig? ( virtual/pkgconfig )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag pkgconfig pkgconfig)
}
