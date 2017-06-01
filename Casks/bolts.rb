# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.4.1'
  sha256 '886b2d37b7fdf96873dc52182c52baf76e675cd72d34f35348e75f0d8bd8d17d'
  package_name = 'bolts-0.4.1-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

