# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_PN="PSQueue"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Priority Search Queue"
HOMEPAGE="https://hackage.haskell.org/package/PSQueue"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( <dev-haskell/quickcheck-3
		<dev-haskell/tasty-1.6
		<dev-haskell/tasty-quickcheck-0.12 )
"
