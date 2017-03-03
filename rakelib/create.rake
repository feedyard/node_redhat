task :create, :target do |_cmd, args|
  if args[:target] == 'all' || args[:target].nil?
    FileList['templates/*.*'].each do |build_file|
      sh "packer build #{@packer_vars} #{build_file}"
    end
  else
    sh "packer build #{@packer_vars} templates/#{args[:target]}"
  end
end