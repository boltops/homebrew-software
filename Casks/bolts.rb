# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.4.0'
  sha256 '4c7e58f53e148662a822bdd3d538bb5bd0c44a95352daef0a39bda687268df3a'
  package_name = 'bolts-0.4.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

