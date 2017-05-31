# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.3.0'
  sha256 'b2005fb500b8891f66ab4568527a5c9a1ea30a9c9fc92df7bd0a3d59deb9b65c'
  package_name = 'bolts-0.3.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

