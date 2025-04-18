# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Exotic comonad transformers"
HOMEPAGE="https://github.com/ekmett/comonad-extras/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'semigroupoids        >= 4     && < 6' 'semigroupoids >= 4'
	'transformers         >= 0.2   && < 0.6' 'transformers >= 0.2'
)

RDEPEND=">=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/distributive-0.3.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/semigroupoids-4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
