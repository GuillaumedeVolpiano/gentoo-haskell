# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for language-c99"
HOMEPAGE="https://hackage.haskell.org/package/language-c99-util"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/ieee754-0.8.0:=[profile?] <dev-haskell/ieee754-0.9:=[profile?]
	>=dev-haskell/language-c99-0.2:=[profile?] <dev-haskell/language-c99-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
