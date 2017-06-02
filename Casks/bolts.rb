# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.1'
  sha256 'c0b06c05b196d9b84146d23db9b79ead73d11cdf80194e42ad0a4dc622ace3d5'
  package_name = 'bolts-0.5.1-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

