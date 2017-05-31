# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.3.1'
  sha256 'bf8fb0b86e6c60b788d8155a8139ce8e009fe6c2c326e30725c4102d97e390f8'
  package_name = 'bolts-0.3.1-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

