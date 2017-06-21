# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.1.0'
  sha256 '606f70ffa781c8e72004451498c48d17d19ffaf222b1c8565759ac1d09828b20'
  package_name = 'bolts-1.1.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

