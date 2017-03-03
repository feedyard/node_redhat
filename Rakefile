require 'erb'
load 'common.rake'
load 'rake.local' if File.exist?('rake.local')

task default: %w(help)

task :help do
  puts <<-EOF
  rake-packer. Operations image management build orchestrator

  options: may specify a specific json image definition file as [filename]

  rake create       # build json image definition files
  rake deploy       # copy resulting box/ova artifacts to repository
  rake test         # execute rubocop, validate and ServerSpec tests
  rake run          # combine image, test, and deploy steps in a single run
  EOF
end