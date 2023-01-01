# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: +tls_1_1_3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTTP over TLS support for Warp via the TLS package"
HOMEPAGE="https://github.com/yesodweb/wai"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/cryptonite-0.12:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?]
	>=dev-haskell/network-2.2.1:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	>=dev-haskell/tls-1.5.3:=[profile?]
	>=dev-haskell/tls-session-manager-0.0.4:=[profile?]
	dev-haskell/unliftio:=[profile?]
	>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/warp-3.3.23:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=tls_1_1_3
}