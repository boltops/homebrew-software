# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.6.2'
  sha256 '60b1bda99cab55b55e27b8742ff3125a2323c2b724da4a74ef0272df979a689b'
  package_name = 'bolts-0.6.2-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

