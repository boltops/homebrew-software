# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.6.1+20180227173533'
  sha256 '128b5100f004f16728bf783160a338dfcaa4b75e5ab07f7595f6d23df25a3c13'
  package_name = 'bolts-1.6.1+20180227173533-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

