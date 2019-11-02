# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell client library for InfluxDB"
HOMEPAGE="https://github.com/maoe/influxdb-haskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RESTRICT=test # requires network connection

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	<dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/clock-0.7:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?] <dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/lens-4.9:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.1:=[profile?]
	>=dev-haskell/optional-args-1.0:=[profile?] <dev-haskell/optional-args-1.1:=[profile?]
	>=dev-haskell/scientific-0.3.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.1:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	examples? ( >=dev-haskell/foldl-1.1.3:=[profile?] <dev-haskell/foldl-1.5:=[profile?]
			dev-haskell/mwc-random:=[profile?] )
	!examples? ( <dev-haskell/foldl-1.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.3 <dev-haskell/doctest-0.17 )
"

src_prepare() {
	default

	cabal_chdeps \
		'lens >= 4.9 && < 4.18' 'lens >= 4.9' \
		'clock >= 0.7 && < 0.8' 'clock >= 0.7'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}