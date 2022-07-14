# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="1"
inherit haskell-cabal

DESCRIPTION="Haddock comments plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/ghc-exactprint:=[profile?]
	>=dev-haskell/ghcide-1.6:=[profile?] <dev-haskell/ghcide-1.8:=[profile?]
	>=dev-haskell/hls-plugin-api-1.3:=[profile?] <dev-haskell/hls-plugin-api-1.5:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.2
	)
"

CABAL_CHDEPS=(
	'hls-test-utils               ^>=1.2' 'hls-test-utils >=1.2'
)