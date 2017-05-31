# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.3.0'
  sha256 '66b6a93d3656ce83387a0b10867fabcbf0dec0e861ed5c62ebab85f43dbb3f22'
  package_name = 'bolts-0.3.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

