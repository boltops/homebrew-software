# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.1'
  sha256 'ef18206250ed375385f3096f884da591ebf25c00dea04457b141d310ddd8a37d'
  package_name = 'bolts-0.5.1-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

