# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.0.1'
  sha256 '935319d3af638c366b473c5f2c2c1e1fbdc02cfecd295010368c8c2122ea972f'
  package_name = 'bolts-0.0.1-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/bolt-packages/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

