# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.2.0'
  sha256 '506c499485178a9843cfcd1ca09eeccf8565d69d94724eeac7c653f8dac0d1d2'
  package_name = 'bolts-0.2.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

