# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.1.1'
  sha256 'e9d2d12c2458c52a2a7ef9d6a3b6825d6c3c167ef156757d9d43bf25ebe372b6'
  package_name = 'bolts-0.1.1-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

