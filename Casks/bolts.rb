# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.2.0'
  sha256 '968298206d78a997422d943fd3262a0475efe1cabcdc3cb88df2f443289403bf'
  package_name = 'bolts-1.2.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

