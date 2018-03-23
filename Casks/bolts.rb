# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '1.6.1+20180323013913'
  sha256 'b873f429c28a0263e65cc6b9afca1196a7e281b8bc51c1254779e420b1b56ce0'
  package_name = 'bolts-1.6.1+20180323013913-1.dmg'

  url "https://s3-us-west-2.amazonaws.com/packages.boltops.com/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name.sub('.dmg','.pkg')

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

