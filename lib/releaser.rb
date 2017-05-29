require "aws-sdk"
require "json"

class Releaser
  def initialize(s3_bucket=nil)
    @s3_bucket = s3_bucket || 'bolt-packages'
  end

  # replace the contents of Casks/bolts.rb with the updated info from s3
  def update
    resp = s3.list_objects(bucket: @s3_bucket, delimiter: '/', prefix: 'bolts/')
    versions = resp.common_prefixes.map(&:prefix)
    # version: %w[
    #   bolts/0.0.1/
    #   bolts/0.0.2/
    # ]
    latest_version = versions.sort_by do |x|
      v = x.split('/').last.chomp
      Gem::Version.new(v)
    end.last

    resp = s3.list_objects(bucket: @s3_bucket, delimiter: '/', prefix: latest_version)
    packages = resp.common_prefixes.map(&:prefix)
    # packages: %w[
    #   bolts/0.0.1/bolts-0.0.1-3.el7.x86_64.rpm/
    #   bolts/0.0.1/bolts-0.0.1-3.pkg/
    #   bolts/0.0.1/bolts_0.0.1-3_amd64.deb/
    # ]

    homebrew_package = packages.find { |x| x.include?('.pkg') }
    files = package_files(homebrew_package)
    metadata_path = files.find {|x| x.include?('metadata.json') }
    metadata = get_metadata(metadata_path)

    cask_file = "Casks/bolts.rb"
    lines = File.readlines(cask_file).map do |line|
      content_line(line, metadata)
    end
    IO.write(cask_file, lines.join(''))

    # Will be useful to update website
    # packages.each do |package|
    #   puts "package: #{package.inspect}"
    #   files = package_files(package)
    #   metadata_path = files.find {|x| x.include?('metadata.json') }
    #   metadata = get_metadata(metadata_path)
    #   puts "basename #{metadata["basename"]}"
    #   puts "sha256 #{metadata["sha256"]}"
    #   puts "version #{metadata["version"]}"
    # end
  end

  def content_line(line, metadata)
    case line
    when /^  version /
      "  version '#{metadata["version"]}'\n"
    when /^  sha256 /
      "  sha256 '#{metadata["sha256"]}'\n"
    when /^  package_name = /
      "  package_name = '#{metadata["basename"]}'\n"
    else
      line
    end
  end

  # s3_path - path to the metadata.json file
  # Example: bolts/0.0.1/bolts-0.0.1-3.pkg/bolts-0.0.1-3.pkg.metadata.json
  def get_metadata(s3_path)
    resp = s3.get_object(bucket: @s3_bucket, key: s3_path)
    raw_metadata = resp.body.read
    JSON.parse(raw_metadata)
  end

  # Public: Returns files in the folder.
  #
  # package_folder - folder with the package files.  Trailing slash is optional.
  #   Works with or without the trailing slash.
  #
  # Examples
  #
  #   package_files('bolts/0.0.1/bolts-0.0.1-3.pkg/')
  #   # => ["bolts/0.0.1/bolts-0.0.1-3.pkg/bolts-0.0.1-3.pkg",
  #         "bolts/0.0.1/bolts-0.0.1-3.pkg/bolts-0.0.1-3.pkg.metadata.json"]
  #
  # Returns Array of Strings.
  def package_files(package_folder)
    s3.list_objects(bucket: @s3_bucket, prefix: package_folder).contents.map(&:key)
  end

private
  def s3
    @s3 ||= Aws::S3::Client.new
  end
end
