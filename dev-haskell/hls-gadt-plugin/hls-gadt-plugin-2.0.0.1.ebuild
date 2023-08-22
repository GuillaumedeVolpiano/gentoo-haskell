# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convert to GADT syntax plugin"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-gadt-plugin#readme"

# TODO: 3 of 19 tests fail
# See: <https://github.com/haskell/haskell-language-server/issues/3218>
RESTRICT="test"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	~dev-haskell/ghcide-2.0.0.1:=[profile?]
	~dev-haskell/hls-plugin-api-2.0.0.1:=[profile?]
	dev-haskell/hls-refactor-plugin:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-1.2.0.1:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		~dev-haskell/hls-test-utils-2.0.0.1
		dev-haskell/lsp-test
	)
"