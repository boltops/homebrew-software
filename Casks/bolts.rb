# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.0'
  sha256 '13621098be8b7ec7f5e2b5d02a6bed3c8a58b6b30e21dd78b1ab9a49a3906157'
  package_name = 'bolts-0.5.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

