# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Experimental, user-contributed effects and interpreters for polysemy"
HOMEPAGE="https://github.com/isovector/polysemy-zoo#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.2:=[profile?] <dev-haskell/async-3:=[profile?]
	>=dev-haskell/compact-0.1.0.1:=[profile?]
	>=dev-haskell/constraints-0.10.1:=[profile?] <dev-haskell/constraints-0.12:=[profile?]
	<dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/exceptions-0.10.0:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/mtl-2.0.1.0:=[profile?] <dev-haskell/mtl-3.0.0.0:=[profile?]
	>=dev-haskell/polysemy-1.2.1.0:=[profile?]
	>=dev-haskell/polysemy-plugin-0.2:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/reflection-2.1.4:=[profile?] <dev-haskell/reflection-3.0.0:=[profile?]
	dev-haskell/streaming:=[profile?]
	>=dev-haskell/text-1.1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.6.0 <dev-haskell/hspec-3 )
"