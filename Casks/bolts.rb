# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.2'
  sha256 '7210e58ddda4d84a784ba6cd6870ac9cfb1cc62d18c56f986f12ce76f9fcef82'
  package_name = 'bolts-0.6.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

