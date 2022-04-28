# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convert between Dhall and TOML"
HOMEPAGE="https://dhall-lang.org/
	https://hackage.haskell.org/package/dhall-toml"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/optparse-applicative-0.14:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/tomland-1.3.2.0:=[profile?] <dev-haskell/tomland-1.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/dhall-1.39.0:=[profile?] <dev-lang/dhall-1.42:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/doctest
		<dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.2 )
"