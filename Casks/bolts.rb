# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.2.2'
  sha256 'e9fe4f8539aebc5a86d9682da2fb64af02a4153e6a599508f8f3ceca5d9175b5'
  package_name = 'bolts-1.2.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

