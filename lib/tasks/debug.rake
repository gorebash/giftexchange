namespace :debug do
  desc "Start Rails server with rdbg for debugging"
  task :server do
    exec "bundle exec rdbg --open --nonstop bin/rails server"
  end
end

# Alias for debug:server
task ds: :"debug:server"
