# This file is generated. To update it, run rake release:update
cask 'bolts' do
  version '0.1.0'
  sha256 'dbbacf6eb3bc1a799ae6fc4dfc719ac45dc4642b7aa579b8d2445fdc006b742f'
  package_name = 'bolts-0.1.0-1.pkg'

  url "https://s3-us-west-2.amazonaws.com/bolt-packages/bolts/#{version}/#{package_name}/#{package_name}"
  name 'Bolts'
  homepage 'https://boltops.com/toolkit'

  pkg package_name

  uninstall pkgutil: 'test.boltops.pkg.bolts'
end

