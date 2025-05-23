# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite
inherit haskell-cabal

DESCRIPTION="A library to support dataflow analysis and optimization"
HOMEPAGE="https://github.com/haskell/hoopl"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # Could not find module ‘Test’

PATCHES=(
	"${FILESDIR}"/${P}-ghc9.patch
	)

RDEPEND=">=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.3 && < 4.10' 'base >= 4.3' \
		'base >= 4.3 && < 4.11' 'base >= 4.3' \
		'containers >= 0.5 && < 0.6' 'containers >= 0.5'
}
