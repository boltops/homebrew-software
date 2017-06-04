# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.5.3'
  sha256 '3cddc0710af72feb9fa94a418dba02308d4aa41461a9f3cf4869f2c4fa0fd8ac'
  package_name = 'bolts-0.5.3-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

