require_relative "lib/releaser.rb"

namespace :release do
  desc "updates Casks/bolts.rb with latest release info"
  task :update do
    Releaser.new.update
  end
end
