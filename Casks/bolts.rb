# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.0.1'
  sha256 '5bf7784639df21e2403e27b4056b650e30724c4ad65ee0aa51735bda7267ab2a'
  package_name = 'bolts-0.0.1-3.pkg'

  url "https://s3-us-west-2.amazonaws.com/bolt-packages/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

