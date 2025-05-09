# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="XML parser and renderer with HTML 5 quirks mode"
HOMEPAGE="https://github.com/snapframework/xmlhtml"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/blaze-builder-0.2:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.8:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/bytestring-builder-0.10.4.0.2:=[profile?] <dev-haskell/bytestring-builder-0.11:=[profile?]
	>=dev-haskell/parsec-3.1.2:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.4 <dev-haskell/hspec-3
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7 )
"
