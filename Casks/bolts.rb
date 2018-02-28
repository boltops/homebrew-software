# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.6.1+20180228003709'
  sha256 '5a47ad89c492a5fa69b26ee8a0e82402e877661fd1bdf427127394895e9ec937'
  package_name = 'bolts-1.6.1+20180228003709-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

