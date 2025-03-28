# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convert between Dhall and YAML"
HOMEPAGE="https://hackage.haskell.org/package/dhall-yaml"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'bytestring                                < 0.12' 'bytestring'
	'text                      >= 0.11.1.0  && < 2.1' 'text >= 0.11.1.0'
	)

RDEPEND=">=dev-haskell/aeson-1.0.0.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.3.1:=[profile?] <dev-haskell/ansi-terminal-1.2:=[profile?]
	>=dev-haskell/hsyaml-0.2:=[profile?] <dev-haskell/hsyaml-0.3:=[profile?]
	>=dev-haskell/hsyaml-aeson-0.2:=[profile?] <dev-haskell/hsyaml-aeson-0.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1.1:=[profile?] <dev-haskell/prettyprinter-ansi-terminal-1.2:=[profile?]
	>=dev-haskell/text-0.11.1.0:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/dhall-1.31.0:=[profile?] <dev-lang/dhall-1.43:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-util/dhall-json-1.6.0:=[profile?] <dev-util/dhall-json-1.8:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( <dev-haskell/tasty-1.6
		<dev-haskell/tasty-expected-failure-0.13
		>=dev-haskell/tasty-hunit-0.2 )
"
