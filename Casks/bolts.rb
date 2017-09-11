# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.4.0'
  sha256 '28bb8456ad92544c762b0ba37ddc9e8709d354959177e8dfadb7ca88b77ba000'
  package_name = 'bolts-1.4.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

