# vars passed to packer
@packer_vars = "-var iso_path=#{ISO_PATH} -var iso_url=#{ISO_URL}"
@packer_vars += " -var atlas_token=#{ATLAS_TOKEN}"