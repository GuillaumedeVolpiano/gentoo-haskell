# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1
CABAL_PN="Chart-gtk"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utility functions for using the chart library with GTK"
HOMEPAGE="https://github.com/timbod7/haskell-chart/wiki"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cairo-0.9.11:=[profile?]
	>=dev-haskell/chart-1.9:=[profile?] <dev-haskell/chart-1.10:=[profile?]
	>=dev-haskell/chart-cairo-1.9:=[profile?] <dev-haskell/chart-cairo-1.10:=[profile?]
	>=dev-haskell/colour-2.2.1:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/data-default-class-0.3:=[profile?]
	>=dev-haskell/gtk-0.9.11:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
