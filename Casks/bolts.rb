# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.8.0'
  sha256 '09884ef4b16717ee4d9d6579aee63c5ac18ad75ab0dff871d877803adbcc1ae3'
  package_name = 'bolts-1.8.0+20180704220308-1.dmg'

  url "http://packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

