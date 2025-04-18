# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Toolkit for building proof automation systems"
HOMEPAGE="https://github.com/totbwf/refinery#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-9.6.patch
	)

RDEPEND=">=dev-haskell/exceptions-0.10:=[profile?]
	>=dev-haskell/mmorph-1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/checkers
		dev-haskell/hspec
		dev-haskell/quickcheck )
"
