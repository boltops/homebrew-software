# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.2'
  sha256 '02b39fec27facfebdd3f9e90fcb7ca40a5348a1a28d349898e013e2df5b32cdc'
  package_name = 'bolts-0.5.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

