# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.1.1'
  sha256 '92e8d1efe2e9dad452eae84e8f72ccf1b95733a87ea969f6ebb66ec22efee1ae'
  package_name = 'bolts-1.1.1-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

