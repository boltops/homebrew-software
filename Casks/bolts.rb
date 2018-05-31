# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.8.0'
  sha256 'f253385a5759725af907edc88cacfbabf95daf5150951481ccab08d113f1beb5'
  package_name = 'bolts-1.8.0+20180531035258-1.dmg'

  url "http://packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

