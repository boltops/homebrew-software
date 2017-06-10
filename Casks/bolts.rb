# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.2'
  sha256 '295471fac10c43b65d841cc477012819921967fd3776360ec13571fb527fc135'
  package_name = 'bolts-0.6.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

