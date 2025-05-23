# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Schema definitions for the config-value package"
HOMEPAGE="https://github.com/glguy/config-schema"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/config-value-0.8.3:=[profile?] <dev-haskell/config-value-0.9:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.3:=[profile?]
	>=dev-haskell/kan-extensions-5.0.2:=[profile?] <dev-haskell/kan-extensions-5.3:=[profile?]
	>=dev-haskell/semigroupoids-5.1:=[profile?] <dev-haskell/semigroupoids-6.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
