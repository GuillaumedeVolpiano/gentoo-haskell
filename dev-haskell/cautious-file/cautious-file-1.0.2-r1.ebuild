# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: +posix

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Ways to write a file cautiously, reducing chances of data loss due to crashes"
HOMEPAGE="https://hackage.haskell.org/package/cautious-file"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'bytestring >= 0.9, bytestring < 0.11' 'bytestring >= 0.9'
)

RDEPEND=">=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_prepare() {
	haskell-cabal_src_prepare

	# Not compatible to Cabal-3
	rm Setup.lhs || die
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=posix
}
