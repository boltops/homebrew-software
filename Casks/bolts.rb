# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.1'
  sha256 '3536197240543405ea10881a3d5800e4973d280c93324ea4341a78403b7b36a4'
  package_name = 'bolts-0.6.1-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

