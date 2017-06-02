# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.1'
  sha256 'c3b84405d602e7a0651fd5ae19730d344b56abf17eeab9e2796286a49044553b'
  package_name = 'bolts-0.5.1-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

