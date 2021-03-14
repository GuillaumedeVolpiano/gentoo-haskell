# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generic HTTP types for Haskell (for both client and server code)"
HOMEPAGE="https://github.com/aristidb/http-types"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/text-0.11.0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-1.3
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances )
"