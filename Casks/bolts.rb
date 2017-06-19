# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.7.0'
  sha256 'e0f5c7619db3d426c6b6cf7ff075987331aa7ad778b72939a4d325f9ddb65a71'
  package_name = 'bolts-0.7.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

