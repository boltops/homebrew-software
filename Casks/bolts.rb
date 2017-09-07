# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.3.0'
  sha256 '172987eccd092ac0d75bb1fbdd95437219d74426085f476e6b0d4108b0ea8d0d'
  package_name = 'bolts-1.3.0-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

