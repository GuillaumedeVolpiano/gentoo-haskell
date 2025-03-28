# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Happstack support for reform"
HOMEPAGE="https://www.happstack.com/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'happstack-server >= 7.0 && < 7.9' 'happstack-server >= 7.0'
	'text             >= 0.11 && < 2.1' 'text >= 0.11'
	)

RDEPEND=">=dev-haskell/happstack-server-7.0:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/reform-0.2:=[profile?] <dev-haskell/reform-0.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
