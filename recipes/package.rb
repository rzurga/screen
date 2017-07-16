#
# Cookbook Name:: screen
# Recipe:: default
#
# Copyright 2016, rzurga
#
# All rights reserved - Do Not Redistribute
#

package value_for_platform(
  "arch" => { "default" => "screen" },
  "default" => "screen"
)

package "screen" do
  action :upgrade
  options "--force-yes"
end
