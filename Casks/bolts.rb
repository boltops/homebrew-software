# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.0'
  sha256 '7bbd3c492ba2232a971c7f92d57e2466b663e459c7d4445e073904965fa0f6e3'
  package_name = 'bolts-0.6.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

