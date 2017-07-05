# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.2.1'
  sha256 'ba1f7cabbf2879f03c25958ac6822a68ca856146ccad8f1333396efa385acb58'
  package_name = 'bolts-1.2.1-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

