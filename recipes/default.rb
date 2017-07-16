#
# Cookbook Name:: screen
# Recipe:: default
#
# Copyright 2014, zurga.com
#
# All rights reserved - Do Not Redistribute
#

bash "update keyring" do
  user "root"
  code <<-EOH
    sudo apt-key update
    sudo apt-get update
  EOH
end

package value_for_platform(
  "arch" => { "default" => "screen" },
  "default" => "screen"
)

#package "screen" do
#  action :upgrade
#  options "--force-yes"
#end
