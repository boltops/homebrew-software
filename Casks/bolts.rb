# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.7.1'
  sha256 '5f172bbc9c9237b694c57bf737af48f79725fbe2be5309e7f8fc5fcd8f91a88e'
  package_name = 'bolts-1.7.1+20180421055212-2.dmg'

  url "https://packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

