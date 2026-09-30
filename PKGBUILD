# Maintainer: pencelheimer
pkgname=input-device-toggle-daemon
pkgver=1.0.0
pkgrel=1
pkgdesc="Systemd socket-activated daemon for toggling input devices"
arch=('any')
license=('GPL-3.0-or-later')
depends=('bash')
optdepends=('openbsd-netcat: CLI client helper via input-device-toggle')
source=(
    'input-device-toggle-worker'
    'input-device-toggle.socket'
    'input-device-toggle@.service'
    'input-device-toggle'
)
sha256sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')

package() {
    install -Dm755 "${srcdir}/input-device-toggle-worker" "${pkgdir}/usr/bin/input-device-toggle-worker"
    install -Dm755 "${srcdir}/input-device-toggle" "${pkgdir}/usr/bin/input-device-toggle"

    install -Dm644 "${srcdir}/input-device-toggle.socket" "${pkgdir}/usr/lib/systemd/system/input-device-toggle.socket"
    install -Dm644 "${srcdir}/input-device-toggle@.service" "${pkgdir}/usr/lib/systemd/system/input-device-toggle@.service"
}
