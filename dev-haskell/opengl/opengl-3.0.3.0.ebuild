# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=3
CABAL_PN="OpenGL"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A binding for the OpenGL graphics system"
HOMEPAGE="https://wiki.haskell.org/OpenGL"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/gluraw-2.0:=[profile?] <dev-haskell/gluraw-2.1:=[profile?]
	>=dev-haskell/objectname-1.1:=[profile?] <dev-haskell/objectname-1.2:=[profile?]
	>=dev-haskell/openglraw-3.0:=[profile?] <dev-haskell/openglraw-3.4:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-1.3:=[profile?]
	>=dev-haskell/text-0.1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
