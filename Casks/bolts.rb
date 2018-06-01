# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.8.0'
  sha256 '253a5d6096c6b5f10e38fb4604cb97606a9d5f51a29cf92cbfa56ef0fb6e1a52'
  package_name = 'bolts-1.8.0+20180601174220-1.dmg'

  url "http://packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

