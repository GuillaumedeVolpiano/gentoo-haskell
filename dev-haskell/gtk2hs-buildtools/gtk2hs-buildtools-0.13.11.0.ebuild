# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tools to build the Gtk2Hs suite of User Interface libraries"
HOMEPAGE="https://projects.haskell.org/gtk2hs/"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+closuresignals"

PATCHES=(
	"${FILESDIR}"/${P}-cabal-3.14.patch
	)

RDEPEND=">=dev-haskell/cabal-2.0:=[profile?]
	dev-haskell/hashtables:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.0.1
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/happy-1.18.9
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag closuresignals closuresignals)
}
