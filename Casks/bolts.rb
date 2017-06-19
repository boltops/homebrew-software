# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.2'
  sha256 'ede843551c692d56b31d1bbf1e59f2063b4a3c19cf7f6cc48d196ef1d2fae9e7'
  package_name = 'bolts-0.6.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

