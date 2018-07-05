# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.8.0'
  sha256 '7f431f34148b7fdaebf875477f4e7c136143ab2184fbd7f86875ebf8526b75a1'
  package_name = 'bolts-1.8.0+20180705041127-1.dmg'

  url "http://packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

