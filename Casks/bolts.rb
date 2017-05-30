# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.1.0'
  sha256 'ac819ee3c1551e81f74e895574abcccbcae3599acd25d3be3e8315c48930c827'
  package_name = 'bolts-0.1.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

