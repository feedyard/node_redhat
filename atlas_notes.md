#### working with Atlas

Add the following post-processor for existing resources

{
  "type": "atlas",
  "only": ["virtualbox-iso"],
  "token": "{{ user `atlas_token` }}",
  "artifact": "{{ user `org` }}/{{user `platform` }}",
  "artifact_type": "vagrant.box",
  "metadata": {
    "provider": "virtualbox",
    "created_at": "{{timestamp}}",
    "version": "7.3.0",
    "description": "Minimal Centos 7 server box based on {{ user `platform` }}-{{ user `platform_version` }}-{{ user `arch` }}. Yum Update on created_at date."
  }
}