# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.2.3'
  sha256 '16d7e6da2bfccd315edd6c9beeb7bc2d9ed01b4533a0a2cf0e63dced15d322b1'
  package_name = 'bolts-1.2.3-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

