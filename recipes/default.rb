#
# Cookbook Name:: libpostal
# Recipe:: default
#

include_recipe 'apt::default'

################################################################################
# libpostal dependencies

%w(curl libsnappy-dev autoconf automake libtool pkg-config).each do |p|
  package p
end

################################################################################
# generic libpostal stuff

directory node[:libpostal][:datadir] do     # this is defined in attributes/defaults.rb
  owner 'root'
  mode '01775'
end

################################################################################
# install libpostal

template '/usr/local/bin/setup-libpostal' do
  source 'setup-libpostal.erb'
  mode 0755
  owner 'root'
end

execute 'setup_libpostal' do
  command '/usr/local/bin/setup-libpostal'
end
