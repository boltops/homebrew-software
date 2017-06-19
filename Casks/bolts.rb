# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.0.0'
  sha256 '26053504d0d57796df4004c46182967c703124702bdc83b86b98a92a47e03a5e'
  package_name = 'bolts-1.0.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

