# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -usenativewindowslibraries

CABAL_PN="GLURaw"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A raw binding for the OpenGL graphics system"
HOMEPAGE="https://www.haskell.org/haskellwiki/Opengl"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/openglraw-3.0:=[profile?] <dev-haskell/openglraw-3.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	virtual/glu
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-usenativewindowslibraries
}