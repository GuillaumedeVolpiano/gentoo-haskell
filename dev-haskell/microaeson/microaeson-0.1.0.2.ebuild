# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A tiny JSON library with light dependency footprint"
HOMEPAGE="https://hackage.haskell.org/package/microaeson"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/fail-4.9.0.0:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/text-1.2.2.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.2.0
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.11.3 <dev-haskell/quickcheck-2.16
		>=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-1.0.1.1 <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-1
		dev-haskell/text
		>=dev-haskell/unordered-containers-0.2.8.0 <dev-haskell/unordered-containers-0.3
		>=dev-haskell/aeson-1.3.1.0 <dev-haskell/aeson-2.3
		>=dev-haskell/vector-0.12.0.1 <dev-haskell/vector-0.14 )
"
